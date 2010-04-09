<?php
// Protege contra sql Injection
function  escape_injection($value) {
    if (get_magic_quotes_gpc())
        $value = stripslashes($value);
    if (is_numeric($value))
        return "'$value'";
    return "'".mysql_real_escape_string($value)."'";
}

// Abre conexão com o banco
$link = mysql_connect('localhost', 'root', 'sook');
// Seleciona o banco.
mysql_select_db('portal',$link);

// Exemplo de falha contra SQL Injection
$query = 'SELECT * FROM news WHERE id='.$_GET['id'].' AND status = 1';

// Exemplo de como se proteger contra SQL Injection.
//$query = 'SELECT * FROM news WHERE id='.escape_injection($_GET['id']).' AND status = 1';

$result = mysql_query($query);
$news = mysql_fetch_assoc($result);

// Fecha conexão
mysql_close($link);
?>

<html>
	<head>
		<title>Portal - Noticia</title>
		<style type="text/css" media="screen">
			*{
				margin: 0;
			}
			h1{
				margin-top: 20px;
				margin-left: 20px;
			}
			h2{
				padding-bottom: 20px;
			}
			body{
				background-color: #D9D9D9;
			}
			.main{
				width: 750px;
				margin: auto;
			}
			.article{
				background-color: #fff;
				-moz-border-radius: 5px;
				padding: 20px;
			}
		</style>
	</head>
	<body>
		<div class="main">
			<h1 id="">Portal de not&iacute;cias</h1><br>
			<div class="article">
				<h2><?=$news['title']?></h2>
				<p>
					<?=$news['content']?>
				</p>
			</div>
			
		</div>
	</body>
</html>
