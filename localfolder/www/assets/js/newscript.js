const flashData = $('.flash-data').data('flashdata');

//ini dibuat custom
if(flashData)
{
    Swal.fire({
        title : 'Logbook ',
        text  : flashData,
        icon  : 'success',
        type  : 'success',
        timer: 2000,
    });  
}