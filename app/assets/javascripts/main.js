$(document).ready(function() {
  $.stellar({
    scrollProperty: 'position'
  });
});

if($('body').hasClass('home')){
  var $filter = $('#nav');
  var $filterSpacer = $('<div />', {
    "class": "filter-drop-spacer",
    "height": $filter.outerHeight()
  });

  console.log("this shit moved");


  if ($filter.size())
  {
    $(window).scroll(function ()
  {
  if (!$filter.hasClass('fix') && $(window).scrollTop() > $filter.offset().top)
  {
    $filter.before($filterSpacer);
    $filter.addClass("fix");
  }
  else if ($filter.hasClass('fix')  && $(window).scrollTop() < $filterSpacer.offset().top)
  {
    $filter.removeClass("fix");
    $filterSpacer.remove();
  }
  });
  }
}