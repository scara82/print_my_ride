$(document).ready(function() {



  $('.new-job-form').on('submit', function(event){
    event.preventDefault();

    console.log('create new job');
    // debugger

    $.ajax({
      url: '/api/jobs',
      method: 'post',
      data: {

            description: $('.new-job-description').val(),
            job_img: $('.new-job-image').val(),
            material: $('.new-job-material').val(),
            user_id: Number($('#session-id').val())
          }

    }).done(function(job){
      var source = $( '#job-template' ).html();//grab the tenplate string
      var template = Handlebars.compile(source); //turns template string into a function
      var html = template( job );
      $('.wrapper').append(html);
    });
  });
r

  $.ajax({ //this will be used for both buyers and creators
    url: '/api/jobs',
    method: 'get'
  }).done(function(res) {
    res.forEach(function(job){
      var source = $( '#job-template' ).html();
      var template = Handlebars.compile(source);
      var html = template( job );
      $('.wrapper').append(html);
    });
  });

  $('.wrapper').on('click', '.delete-action', function(event) {
    var id = $(event.target).closest('.job').data('id');
    $.ajax({
      url: '/api/jobs/' + id,
      method: 'delete'
    }).done(function() {
      $(event.target).closest('.job').remove();
    });
  });

  
  // $('.wrapper').on('click', '.edit-action', function(event) {
  //   var id = $(event.target).closest('.job').data('id');
  //   event.preventDefault();
  //   $.ajax({
  //     url: 'api/jobs/' + id + '/edit',
  //     method: 'get'
  //   }).done(function(job){
  //     var source = $( '#job-edit-template' ).html();//grab the tenplate string
  //     var template = Handlebars.compile(source); //turns template string into a function
  //     var html = template( job );
  //     $(event.target).closest('.job').append(html);
  //     $('.edit-job-form').on('submit', function(event){
  //       $.ajax({
  //         url: '/api/jobs/' + id,
  //         method: 'put',
  //         data: {
  //           description: $('.edit-job-description').val(),
  //           image_url: $('.edit-job-image').val(),
  //           material: $('.edit-job-material').val()
  //         }
  //       }).done(function(job) {
  //         var source = $( '#job-template' ).html();//grab the tenplate string
  //         var template = Handlebars.compile(source); //turns template string into a function
  //         var html = template( job );
  //         $(event.target).closest('.job').remove();
  //       });
  //     });//edit-action


  // $('.wrapper').on('click', '.new-bid-action', function(event) {
  //   var id = $(event.target).closest('.job').data('id');
  //   event.preventDefault();
  //   $.ajax({
  //     url: 'api/jobs/' + id + '/edit',
  //     method: 'get'
  //   }).done(function(job){
  //     var source = $( '#creator-job-template').html();//grab the tenplate string
  //     var template = Handlebars.compile(source); //turns template string into a function
  //     var html = template( job );
  //     $(event.target).closest('.job').append(html);
  //     $('.accept-job-form').on('submit', function(event){
  //       $.ajax({
  //         url: '/api/bids/' + id,
  //         method: 'put',
  //         data: {
  //           bid: $('.job-bid').val(),
  //         }
  //       }).done(function(job) {
  //         var source = $( '#job-template' ).html();
  //         var template = Handlebars.compile(source);
  //         var html = template( job );
  //         $(event.target).closest('.job').remove();
  //       });
  //     });
  //   })
  // });
