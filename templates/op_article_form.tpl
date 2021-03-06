<!--下面加入表單驗證的js語法 -->
<script src="js/languages/jquery.validationEngine-zh_TW.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css">
<!--加入表單驗證的js語法結束 -->
<!--下面加入cked語編輯器 -->
<script src="ckeditor/ckeditor.js"></script>
<!--form 裏頭因為有加入上傳檔案功能所以必須加入enctype="multipart/form-data"，而id="myform" onsubmit="return validate(this);"是表單驗證必須加入的 -->
<form action="admin.php" method="post" enctype="multipart/form-data" class="my-4" id="myform" onsubmit="return validate(this);">
    <div class="form-group">
        <label for="title" class="col-form-label sr-only">文章標題</label>
        <!--validate[required]表單驗證加入，這一定要有標題 -->
        <input type="text" class="form-control validate[required]" name="title" id="title" placeholder="請輸入文章標題">
    </div>
    <div class="form-group">
        <label for="content" class="col-form-label sr-only">文章內容</label>
        <!-- validate[required, minSize[15]]表單驗證加入，這一定要有內容-->
        <textarea name="content" id="content" rows="20" class="form-control validate[required, minSize[15]]" placeholder="請輸入文章內容"></textarea>
    </div>
    <div class="form-group">
        <label for="title" class="col-form-label sr-only">封面圖</label>
        <input type="file" class="form-control" name="pic" id="pic" placeholder="請上傳一張封面圖">
    </div>
    <div class="text-center">
        <input type="hidden" name="op" value="insert">
        <input type="hidden" name="username" value="{$smarty.session.username}">
        <button type="submit" class="btn btn-primary">儲存</button>
    </div>
</form>

<!-- <script>
    CKEDITOR.replace('content');
    $(document).ready(function () {
        $('#myform').validationEngine({ promptPosition: "bottomLeft" });

    });

</script> -->
<!--11/28日加入表單驗證功能  -->
<script>
    CKEDITOR.replace('content');
    $(document).ready(function () {
        $('#myform').validationEngine({ promptPosition: "bottomLeft" });
    });

    function validate(form) {
        CKEDITOR.instances.content.updateElement();
        $('#content').toggle();
        validated = $(form).validationEngine('validate');
        $('#content').toggle();

        return validated;
    }

</script>