function cadsIndex() {

  var apiUrl = '/api/cads';

  $.ajax({
    url: apiUrl
  }).done(renderCadCards);

  function renderCadCards(data) {
    var cadCardTemplate = Handlebars.compile($('#cad-card-template').html())(data)

  }

}
