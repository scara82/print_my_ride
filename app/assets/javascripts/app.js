$(document).ready(function() {

  // $('.new-job-form').on('submit', function(event){
  //   event.preventDefault();
  //   console.log('create new job');
  //   $.ajax({
  //     url: '/api/jobs',
  //     method: 'post',
  //     data: {
  //           name: $('.new-job-name').val(),
  //           image_url: $('.new-job-image').val(),
  //           creator_id: $(session.id)
  //         }
  //   }).done(function(job){
  //     var source = $( '#job-template' ).html();//grab the tenplate string
  //     var template = Handlebars.compile(source); //turns template string into a function
  //     var html = template( job );
  //     $('.wrapper').append(html)
  //   })
  // });
  //
  // $.ajax({
  //   url: '/api/jobs'
  // }).done(function(res) {
  //   res.forEach(function(job){
  //     var source = $( '#job-template' ).html();//grab the tenplate string
  //     var template = Handlebars.compile(source); //turns template string into a function
  //     var html = template( job );
  //     $('.wrapper').append(html);
  //   })
  // });//close-ajax
  //
  // $('.wrapper').on('click', '.delete-action', function(event) {
  //   var id = $(event.target).closest('.job').data('id');
  //   $.ajax({
  //     url: '/api/jobs/' + id,
  //     method: 'delete'
  //   }).done(function() {
  //     $(event.target).closest('.job').remove();
  //   });
  // });//delete-action
  //
  //
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
  //           name: $('.edit-job-name').val(),
  //           image_url: $('.edit-job-image').val()
  //         }
  //       }).done(function(job) {
  //         var source = $( '#job-template' ).html();//grab the tenplate string
  //         var template = Handlebars.compile(source); //turns template string into a function
  //         var html = template( job );
  //         $(event.target).closest('.job').remove();
  //       });
  //     });//edit-action
  //   })
  // });


});
