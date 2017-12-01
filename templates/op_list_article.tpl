<div class="img-container">
    <div class="container">

    </div>
</div>

<div class="container">
    <h1 class="my-3 text-center">最新文章</h1>
    <div class="row">
        {foreach $all as $article}
        <!--在大於md就顯示三欄，反之顯示兩欄 -->
        <div class="col-md-6 col-lg-4">
            <!--上傳檔案圖片，產生自動縮圖 -->
            {assign var="cover" value="uploads/thumb_`$article.sn`.png"} {if file_exists($cover)}
            <a href="index.php?sn={$article.sn}" data-toggle="tooltip" data-placement="bottom" title="{$article.title} by 發佈日期:{$article.create_time}"><img src="{$cover}" alt="{$article.title}" class="rounded cover"></a>
            <!--沒有封面圖 -->
            {else}
            <!--就利用假圖來自動產生 -->
            <a href="index.php?sn={$article.sn}" data-toggle="tooltip" data-placement="bottom" title="{$article.title} by 發佈日期:{$article.create_time}"><img src="https://picsum.photos/400/300?image={$article@index}" alt="{$article.title}" class="rounded cover"> </a>
            <!--結束 -->
            {/if}
            <!--顯示文章標題 -->
            <h3 class="multi_ellipsis py-2"><a href="index.php?sn={$article.sn}">{$article.title}</a></h3>
            <!--顯示文章哉要90字元 -->
            <p>{$article.summary}</p>
        </div>
        <!-- 都沒有任何文章，就尚無內容-->
        {foreachelse}
        <h1>尚無內容</h1>
        {/foreach}
    </div>
</div>