<?php
    include "conexao.php";

    $query = 'UPDATE venda SET nome_venda="'.$_POST["v_nome_prod"].'", codigo_venda="'.$_POST["v_cod_prod"].'", quantidade_venda="'.$_POST["v_quant_prod"].'", tipo_venda="'.$_POST["v_tipo"].'" where id_venda= '.$_POST["id"];
    $result = mysqli_query($link, $query);  
    mysqli_close($link);
?>  
    <script>
        window.alert("Atualizado com sucesso");
        window.location.href='index.php';
    </script>    