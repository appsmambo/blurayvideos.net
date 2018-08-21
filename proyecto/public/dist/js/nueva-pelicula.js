tinymce.init({
  selector: 'textarea',
  theme: 'modern',
  height: 160,
  menubar: false,
  toolbar: 'undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist | removeformat'
});
$(function() {
  $('.multiSelect').multiSelect();
  $('.subirArchivo').change(function() {
    readURL(this, $(this).data('vistaprevia'));
  });
});

function readURL(input, vistaPrevia) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      console.log('ok')
      $(vistaPrevia).attr('src', e.target.result).show('slow');
    }
    reader.readAsDataURL(input.files[0]);
  }
}
