$(document).ready(function () {


  //   if $('.checkbox').attr('clicked') {
  //     console.log('ticked');
  //   }
  // })
  // }) {
  //   console.log('ticked');
  //   $('div[style=visibility:hidden]').removeAttr('visibility:hidden')

  $('.checkbox').on('click', function(){
    if ($("input[type=checkbox]").is(":checked")) {
      $(this).next().next().removeClass('invisible')
    } else {
      $(this).next().next().addClass('invisible')
    }
  })
})
  
