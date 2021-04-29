$(document).ready(function () {

  $('.checkbox').on('click', function(){
    if ($("input[type=checkbox]").is(":checked")) {
      $(this).next().next().removeClass('invisible')
    } else {
      $(this).next().next().addClass('invisible')
    }
  })
})
