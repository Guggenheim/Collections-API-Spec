<html><head>
	
<style>
body{
	font-family: sans-serif;

}
.container{
		width:680px;
		margin:0 auto;
}
a{
	text-decoration:none;
	font-weight:900;
	margin:10px;
}
.croppedartwork{
	width:150px;
	height:150px;
	overflow:hidden;
	display:block;
	float:left;
	margin:10px;
	box-shadow:1px 1px 3px #aaa;
}
.croppedartwork:hover{
	opacity:0.7;
}
.landscape img{
	height:100%;
}
.portrait img{
	width:100%;
}


nav{
	clear:both;
	text-align:center;
}
</style>

</head><body>
<div class="container">
<?php


require('apikey.php'); // duplicate from apikey.SAMPLE.php and include API Key.

$page = ($_GET["page"]);

$url = "http://api.guggenheim.org/collections/objects";

$opts = array(
  'http' => array(
    'method' => "GET",
    'header' => "Accept: application/vnd.guggenheim.collection+json\r\n" .
    			"X-GUGGENHEIM-API-KEY: ".$GUGGAPIKEY."\r\n" 

  )
);


$context = stream_context_create($opts);
$response = file_get_contents($url."?page=".$page, false, $context);

$obj = json_decode($response);

//for($i =0; $i<count($obj->objects->items); $i++){
foreach($obj->objects->items as $item){
if($item->media[0]->assets->full->width > $item->media[0]->assets->full->height){
$class="landscape";
} else {
	$class="portrait";
}

	?>


	<div class="croppedartwork <?php echo $class; ?>">
	
	<a href="<?php echo $item->_links->web->href; ?>"><img src="<?php echo $item->media[0]->assets->full->_links->_self->href; ?>" /></a>
</div>
<?php

//var_dump($item->media[0]->assets->full->_links->_self->href);
//echo '<img src="'.$item->media[0]->assets->full->_links->_self->href.'" />';
	//var_dump($item);

}
?>
<nav>
<?php
if($obj->_links->prev){
echo '<a href="?page='.($page-1).'">prev</a>';
}
if($obj->_links->next){
echo '<a href="?page='.($page+1).'">next</a>';
}

?>
</nav>
</div>
</body></html>