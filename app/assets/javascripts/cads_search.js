$(document).ready(function() {

  // function cadsIndex() {
  console.log("fg");
    var apiUrl = '/api/cads';

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

  // };

  // cadsIndex()
});
