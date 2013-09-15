var hello = 12345678;

$("input.like").remove()

$("input.like").click(function(){
  target = $(this).attr("name").split(",");
  uri = "/"+ target[0] + "/" +  target[1] + "/like";
  $.post(uri, function(json){
    $("p#likenum").html(String(json.like))
  });
})