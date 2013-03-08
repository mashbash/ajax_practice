enable :sessions

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/signup' do
  @user = User.new params
  if @user.save
    session[:user_id] = @user.id 
    @profile = Profile.new(:user_id => @user.id)
    @profile.save
    redirect("/users/#{@user.id}")
  else 
    erb :index
  end
end 

post '/login' do
  @user = User.find_by_email(params[:email])
  if @user
    session[:user_id] = @user.id 
    redirect "/users/#{@user.id}"
  else 
    erb :index
  end 
end 

get '/logout' do
  session.delete(:user_id)
  redirect '/'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :profile
end 

post '/group' do
  content_type 'application/json'
  p params
  p ">>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  @profile = Profile.find_by_id(params[:user_id])
  @profilegroup = params[:profile_group]
  @profile.update_attributes(:group => @profilegroup )
  {:profile_group => @profile.group }.to_json
end  

#syntax of passing a partial to ajax
#erb :_add_tweet,
#    :layout => false,
#    :locals => {:username => @username, :tweet => @tweet, :error => @error}

