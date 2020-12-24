<?php
$str = "hello";
$mecab = new Mecab\Tagger();
$result = $mecab->parse($str);
var_dump($result);