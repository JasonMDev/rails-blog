$(document).on('ready page:load', function(){
  $('.rating').raty({
    path: ' /assets', 
    scoreName: 'comment[rating]' 
  });

  $('.rated').raty({ 
    path: ' /assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
      }
    });
});

//When the document is ready the following actions will take place.
$(document).ready(function() {
  
  //Creates smooth scrolling effect for menus.
  var $root = $('html, body');
  $('.navbar-nav a').click(function() {
    var href = $.attr(this, 'href');
    $root.animate({
      scrollTop: $(href).offset().top
      }, 500, function () {
        window.location.hash = href;
        });
    return false;
    });
  
});