<!doctype html>
<html lang="zh-Hant-TW">

<head>
    <!-- 引入header.tpl 樣板檔 -->
    {include file="header.tpl"}
</head>

<body>
    <!-- 引入nav.tpl 選單樣板檔 -->
    {include file="nav.tpl"}
    <!-- 自動載入 $op 對應的樣板檔 -->
    {include file="op_`$op`.tpl"}
    <!-- 引入footer.tpl 樣板檔 -->
    {include file="footer.tpl"}

</body>

</html>