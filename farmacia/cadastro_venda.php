<?php
    $nome_venda = isset($_POST["v_nome_prod"]) ? $_POST["v_nome_prod"] : null;
    $cod_venda = isset($_POST["v_cod_prod"]) ? $_POST["v_cod_prod"] : null;
    $quant_venda = isset($_POST["v_quant_prod"]) ? $_POST["v_quant_prod"] : null;
    $tipo_venda = isset($_POST["v_tipo"]) ? $_POST["v_tipo"] : null;

    if($nome_venda!="" and $cod_venda!="" and $quant_venda!="" and $tipo_venda!=""){ 
        include 'conexao.php';
        $query = 'INSERT INTO venda(nome_venda,codigo_venda,quantidade_venda,tipo_venda) VALUES ("'.$nome_venda.'","'.$cod_venda.'","'.$quant_venda.'","'.$tipo_venda.'")';
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