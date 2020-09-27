$(document).ready(function($) {
  $(document).on('turbolinks:load', function() {
    $('#cidade').hide()
    $('select#user_uf').change(function () {
      var input_state = $('select[name="user[cidade]"]'); //$(this);
      $.getJSON('/cities/' + $(this).val(), function (data) {
        console.log(1, data)
        $('#cidade').show()
        $('.cidade-input').hide()
        
        input_state.empty();
      
        $.each(data, function (i, value) {
          var opt = '<option value="'+ value +'">' +  value + '</option>'
          input_state.append(opt)
        });
      });
    }); 
  });
});