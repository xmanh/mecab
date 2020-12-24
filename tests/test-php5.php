<?php
$str = "hello";
$mecab = mecab_new();
$result = mecab_sparse_tostr($mecab, $str);
mecab_destroy($mecab);
var_dump($result);