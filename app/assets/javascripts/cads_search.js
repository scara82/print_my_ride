$(document).ready(function() {

  // function cadsIndex() {
  var apiUrl = '/api/cads';

  if (!!$('#cad-card-template').get(0)) {
    $.ajax({
      url: apiUrl,
      method: 'get'
    }).done(function(data) {
      data.forEach(function(cad) {
        var cadCardTemplate = Handlebars.compile($('#cad-card-template').html())
        var html = cadCardTemplate( cad )
        $('.cad_wrapper').append(html)
      })
    })
  }

});
