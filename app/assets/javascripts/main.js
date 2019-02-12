/*
 * Loading
 */
var showLoading = function(){
  if($('#loading').length == 0){
    $('body').append('<div id="loading"><div id="loading_img"><div></div>');
  }
}

var hideLoading = function(){
  $('#loading').remove();
}

