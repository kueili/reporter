<div class="container">
    <h1 class="pt-2">{$article.title}</h1>
    <p class="pl-2">作者:{$article.username} | 發布日期:{$article.create_time}</p>
    <p>{$article.content}</p>
    <!-- 下面判斷是否有username名稱，有的話就出現刪除和編輯按鈕-->
    {if isset($smarty.session.username) and $smarty.session.username==$article.username}
    <div class="alert alert-info text-center">
        <a href="admin.php?op=delete_article&sn={$article.sn}" class="btn btn-danger">刪除</a>
        <a href="admin.php?op=modify_article&sn={$article.sn}" class="btn btn-warning">編輯</a>
    </div>
    {/if}
</div>