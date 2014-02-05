$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  $('#upvote').click(function(e) {
    e.preventDefault();
    var id = $('#up-id').val();
    $.post("/upvote", {"id": id}, function(data){
      console.log(data);
      $("#vote-count").html(data["votes"]);
      $('#upvote').addClass('inactive');
    }, "json");
  });
  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});


