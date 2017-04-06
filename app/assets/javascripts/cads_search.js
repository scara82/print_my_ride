function cadsIndex() {

  var apiUrl = '/api/cads';
  var cadCardTemplate = Handlebars.compile($('#cad-card-template').html())

  $.ajax({ url: apiUrl }).done(renderCadCards);


  function renderCadCards() {
    console.log('show me what you got');
  }

}
