<!-- 將顯示文章的標題給強制限制一行，修改my.css樣式加入下面語法 參考這網址: -->http://www.wfublog.com/2016/11/multi-line-ellipsis-css.html
<!-- 下面加入標題限制行數 -->
.multi_ellipsis{
<!-- display: block; 如果不是區塊元素的話，要加這一行 -->
overflow: hidden; display: -webkit-box; -webkit-box-orient:vertical; -webkit-line-clamp:1;
<!-- N 填入要顯示的行數  -->
line-height: 24px;
<!--X 填入行高 px 值 -->
height: 32px;
<!-- 限定高度為 X * N 的 -->
}

<!-- 11/23日修改點選封面圖連結上有tooltip的特效 做法如下: -->

1.在footer.tpl檔下，加入下方語法

<script>
    // <!--Note: A custom script is used to activate tooltips:

    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });

</script>

2. 在op_list_article.tpl檔中修改檔案 找到圖片位置，老師講義上的語法

<img src="{$cover}" alt="{$article.title}" class="rounded cover"> 我修改圖片加入超連結和tooltip效果後的語法如下:

<a href="index.php?sn={$article.sn}"><img src="{$cover}" alt="{$article.title}" class="rounded cover" data-toggle="tooltip" data-placement="bottom" title="{$article.title}"></a>重點說明:想使用這效果，只要在想呈現的地方貼入下方語法即可
data-toggle="tooltip" data-placement="bottom" title="彈出的文字說明"


<!-- 11/23 在footer加入 top 回頂端的效果 ===== 1. 在 footer.tpl檔內加入下方語法(可以放在最下方) -->

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

2. 這裡我變動了一些，跟老師的呈現不同。把有限容器寬度給改為全版。因為我想在下方放置Top回到頂端的作法，所以另外加入兩個row。然後這個Top也得符合在手機頁面時也能呈現出來! 重點提示: 套用此效果，請勿變動到 id="goTop" 它。

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