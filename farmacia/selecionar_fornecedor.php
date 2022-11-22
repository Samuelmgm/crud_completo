<?php
    include "conexao.php";

    $query = 'UPDATE fornecedor SET nome_fornecedor="'.$_POST["nome_fornecedor"].'", telefone_fornecedor="'.$_POST["tel_fornecedor"].'", situacao="'.$_POST["situacao"].'", where id_fornecedor= '.$_POST["id"];
    $result = mysqli_query($link, $query); 
    mysqli_close($link);
?>  
    <script>
        window.alert("Atualizado com sucesso");
        window.location.href='index.php';
    </script>