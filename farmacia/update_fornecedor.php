<?php 
    include "conexao.php";
    $id = isset($_GET["id"]) ? $_GET["id"] : null;

    $query = 'SELECT * FROM fornecedor WHERE id_fornecedor= '.$_GET["id"];
    $result = mysqli_query($link, $query);   
    $row = mysqli_fetch_row($result); 
    mysqli_close($link);

    $nome_fornecedor = $row[1]; 
    $tel_fornecedor = $row[2];  
    $situacao = $row[3];
?>