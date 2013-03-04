enable :sessions

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/signup' do
  @user = User.new params
  if @user.save
    session[:user_id] = @user.id 
    @profile = Profile.create(:user_id => @user.id)
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

post '/type' do
  
end  


