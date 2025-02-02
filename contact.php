 <!-- Header-->
 <header class="bg-dark py-5" id="main-header">
    <div class="container h-75 d-flex align-items-end justify-content-center w-100">
        <div class="text-center text-white w-100">
        <style>
  .custom-heading {
    font-family: 'Apple Chancery';
  }
</style>

<h1 class="display-3 fw-bolder mx-5 custom-heading">Contact Us</h1>
        </div>
    </div>
</header>

<section class="py-5">
    <div class="container">
        <div class="card rounded-0 card-outline card-primary shadow">
            <div class="container">
                <?php include "contact.html" ?>
            </div>
        </div>
    </div>
</section>

<script>
    $(function(){
        $('#search').on('input',function(){
            var _search = $(this).val().toLowerCase().trim()
            $('#service_list .item').each(function(){
                var _text = $(this).text().toLowerCase().trim()
                    _text = _text.replace(/\s+/g,' ')
                    console.log(_text)
                if((_text).includes(_search) == true){
                    $(this).toggle(true)
                }else{
                    $(this).toggle(false)
                }
            })
            if( $('#service_list .item:visible').length > 0){
                $('#noResult').hide('slow')
            }else{
                $('#noResult').show('slow')
            }
        })
        $('#service_list .item').hover(function(){
            $(this).find('.callout').addClass('shadow')
        })
        $('#service_list .view_service').click(function(){
            uni_modal("Service Details","view_service.php?id="+$(this).attr('data-id'),'mid-large')
        })
        $('#send_request').click(function(){
            uni_modal("Fill the Service Request Form","send_request.php",'large')
        })

    })
    $(document).scroll(function() { 
        $('#topNavBar').removeClass('bg-transparent navbar-light navbar-dark bg-gradient-light text-light')
        if($(window).scrollTop() === 0) {
           $('#topNavBar').addClass('navbar-dark bg-transparent text-light')
        }else{
           $('#topNavBar').addClass('navbar-light bg-gradient-light ')
        }
    });
    $(function(){
        $(document).trigger('scroll')
    })
</script>