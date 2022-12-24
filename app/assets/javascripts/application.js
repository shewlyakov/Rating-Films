//= require jquery
//= require jquery_ujs

var set_ratings = function(form_id, ratings) {
  for(i=1; i<=10; i++){
    if(i <= ratings){
      $('#' + form_id + '_' + i).addClass('on');
    } else {
      $('#' + form_id + '_' + i).removeClass('on');
    }
  }
}

$(function() {
  $('.review_rating').click(function() {
    var rating = $(this)
    var form_id = $(this).attr('data-form-id');
    var ratings = $(this).attr('data-ratings');

    set_ratings(form_id, ratings);

    $('#' + form_id + '_ratings').val(ratings);

    $.ajax({
      type: "post",
      url: $('#' + form_id).attr('action'),
      data: $('#' + form_id).serialize()
    });
  });

  $('.rating_review_form').each(function() {
    var form_id = $(this).attr('id');
    var ratings = $('#' + form_id + '_ratings').val();
    set_ratings(form_id, ratings);
  });
});
