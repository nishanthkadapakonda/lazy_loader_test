//= require jquery
document.addEventListener('DOMContentLoaded', (event) => {
    var id = "#lazy_loader_infinite"
    $('.pagination').css("display","none")
    if ($(id).size() > 0) {
      return $(window).on('scroll', function() {
        var more_posts_url; // <- /home/index?page=2
        more_posts_url = $('.pagination .next_page').attr('href');
        $("#loader").html("Loading..")
        if (more_posts_url && (window.innerHeight + window.pageYOffset) >= document.body.offsetHeight - 200) {
        $.get(more_posts_url, function(data) {

          setTimeout(
            function() 
            {
              var msg = data;
              var elements = $( '<div></div>' );
              elements.html(data)

              $("#lazy_loader_infinite").append($("#lazy_loader_infinite > div", elements));
            }, 2000);
        });
        }
        return;
      });
    }
})
