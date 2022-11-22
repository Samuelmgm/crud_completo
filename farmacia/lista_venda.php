<html>
    <head>
        <link rel="stylesheet" href="Style.css">
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>Nome do produto Vendido</th>
                    <th>Codigo do produto Vendido</th>               
                    <th>Quantidade de produtos Vendidos</th>
                    <th>Tipo do Produto Vendido</th>
                    <th>Ações</th>              
                </tr>
            </thead>
            <tbody>
                <?php 
                    include 'conexao.php';
                   
                    $query = 'SELECT * FROM venda';
                    $result = mysqli_query($link,$query) or die('Query failed: ' . mysqli_error());
                    while ($line = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                        ?>
                            <tr>
                                <td><?= $line["nome_venda"]?></td>                               
                                <td><?= $line["codigo_venda"]?></td>
                                <td><?= $line["quantidade_venda"]?></td>
                                <td><?= $line["tipo_venda"]?></td>                                 
                                <td>
                                    <a href='deletar_venda.php?id=<?= $line["id_venda"]?>&action=delete' class="delete">Deletar</a> ---  
                                    <a href='index.php?id=<?= $line["id_venda"]?>&action_venda=update_venda' class="atualizar">Update</a>
                                </td>
                            </tr>
                        <?php 
                        }
                    mysqli_close($link);
                ?>
            </tbody>
        </table>
    </body>
</html>

