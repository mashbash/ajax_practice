$(document).ready(function(){
  $(".button-signup").click(function(e){
  	e.preventDefault
  	$(this).hide();
    $(".signup").fadeIn("slow");
  });





});    
//   	// AA: instead of being so specific, can pull the form
//     e.preventDefault();
//     $.ajax({
//       type:"post", //can be get or post
//       url:"/posts/vote", //go to this url
//       data: {post_id: $(this).siblings().val()}, //data sent to the controller/server //AA: if pull form, can do serialize data instead of having to do this
//       dataType: "json" //expecting to receive data in json format from the controller/server
//     }).success(function(response) { 
//       console.log(response);
//       var post_id = response.post_id;
//       $('#' + post_id).val(response.post_count);
//     }).error(function(response) { 
//       console.log(response);
//       var error = response.message
//       alert(error); //not popping up BUGBUG
//     });
//   });
// });