<?php 
    include "conexao.php";
    $id = isset($_GET["id"]) ? $_GET["id"] : null;

    $query = 'SELECT * FROM venda WHERE id_venda= '.$_GET["id"];
    $result = mysqli_query($link, $query);   
    $row = mysqli_fetch_row($result); 
    mysqli_close($link);
    
    $nome_venda = $row[1];
    $cod_venda = $row[2]; 
    $quant_venda = $row[3];
    $tipo_venda = $row[4];
?>
   