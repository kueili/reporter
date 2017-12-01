<div class="footer"></div>

<footer class="bg-dark text-white fixed-bottom">
    <!--下方新增一div -->
    <div class="container-fluid">
        <div class="row">
            <!--my-2文字上、下間距，電腦螢幕長頁尾d-none d-sm-block -->
            <div class="col-11 my-2 d-none d-sm-block text-center">
                以台南社大師生為主體寫作者的《巷集談-街道新聞》，秉持公民素人發聲 、開放以及非營利的宗旨，除希望培力更多公民記者、自由寫手之外，更希望以關注台南市未來城鄉永續發展過程中，保障公民參與審議的權利為精神，成為台南市公民傳播媒體的草根平台。
            </div>
            <div class="col-1 my-2 d-none d-sm-block"><a href="#" id="goTop">↑ Top </a></div>
        </div>

        <!--下面是在手機顯示下的設定，d-block d-sm-none手機螢幕短頁 text-center文字置中-->
        <div class="row">
            <div class="col-10 my-2 d-block d-sm-none text-center">台南市公民傳播媒體的草根平台</div>
            <div class="my-2 d-block d-sm-none text-center"><a href="#" id="goTop">↑Top </a></div>
        </div>
    </div>
</footer>


<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script>
    $(document).ready(function () {
        // var images = ['pic1.jpg', 'pic2.jpg'];
        // $('.img-container').css({ 'background-image': 'url(images/' + images[Math.floor(Math.random() * images.length)] + ')' });

        // var txt = ['大家好', '歡迎光臨'];
        // $('title').text(  txt[Math.floor(Math.random() * txt.length)] );


        // $('.img-container').css('width', $(window).width());
        $('.img-container').css('height', $(window).height());
    });

    $(window).resize(function () {
        // $('.img-container').css('width', $(window).width());
        $('.img-container').css('height', $(window).height());
    });

</script>
<!-- <script src="http://more.handlino.com/javascripts/moretext-1.2.js" type="text/javascript"></script> -->

<script>
    // <!--Note: A custom script is used to activate tooltips:
    //加入b4 tooltip 效果
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });

</script>

<!--11/23 下方加入回top連結 -->
<script language="javascript">
    $(function () {
        $("#goTop").click(function () {

            $("html,body").animate({ scrollTop: 0 }, 900);

            //  $("html,body").animate({ scrollTop: 0 }, 900, "easeOutBounce");

            return false;

        });

    });

</script>