$(document).on('turbolinks:load', function () {
   M.autoInit();

   $(document).ready(function () {
      $('.tooltipped').tooltip();
   });
});