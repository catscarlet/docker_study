<?php

ini_set('date.timezone', 'Asia/Shanghai');
header('Content-Type:text/plain; charset=utf-8');

$hostname = file_get_contents('/etc/hostname');
$date = date('r', time());
$rst = 'This is Server: '.$hostname."\n".'Now is '.$date;

echo $rst;
