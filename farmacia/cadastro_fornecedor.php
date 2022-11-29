<?php
    $nome_fornecedor= isset($_POST["nome_fornecedor"]) ? $_POST["nome_fornecedor"] : null;
    $telefone = isset($_POST["tel_fornecedor"]) ? $_POST["tel_fornecedor"] : null;
    $situacao = isset($_POST["status"]) ? $_POST["status"] : null;

    if($nome_fornecedor!="" and $telefone!="" and $situacao!=""){
        include "conexao.php";
        $query = 'INSERT INTO fornecedor(nome_fornecedor,telefone_fornecedor,situacao) VALUES("'.$nome_fornecedor.'","'.$telefone.'","'.$situacao.'")';
        $result = mysqli_query($link,$query);
        mysqli_close($link);
    ?>
        <script>
            window.alert("Enviado com sucesso");
            window.location.href='index.php';
        </script>
    <?php
    }
?>
<a href="index.php">Voltar</a>