$(document).ready(function(){
	console.log("hello!");
  $(".button-signup").click(function(e){
    e.preventDefault();
    $(this).hide();
    $(".signup").fadeIn("slow");
  });

  $(".profilegroup-form").submit(function(e){
    console.log(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		e.preventDefault();
		$.ajax({
      type: this.method, //can be get or post
      url: this.action, //go to this url
      data: $(this).serialize(), //data sent to the controller/server //AA: if pull form, can do serialize data instead of having to do this
      dataType: "json" //expecting to receive data in json format from the controller/server
    }).success(function(response) { 
      var profile_group = response.profile_group;
      var profile_group_field = '<div> Profile group: '+profile_group+'</div>';
      $(".email").append(profile_group_field);
    });
  });


}); 
