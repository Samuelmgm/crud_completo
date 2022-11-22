<html>
    <head>
        <link rel="stylesheet" href="Style.css">
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Telefone</th>
                    <th>Ativo ?</th>
                    <th>Ações</th>               
                </tr>
            </thead>
            <tbody>
                <?php 
                    include 'conexao.php';
                   
                    $query = 'SELECT * FROM fornecedor';
                    $result = mysqli_query($link,$query);
                    while ($line = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                        ?>
                            <tr>
                                <td><?= $line["nome_fornecedor"]?></td>                               
                                <td><?= $line["telefone_fornecedor"]?></td>
                                <td><?= $line["situacao"]?></td>                                                              
                                <td>
                                    <a href='deletar_fornecedor.php?id=<?= $line["id_fornecedor"]?>&action=delete' class="delete">Deletar</a>---
                                    <a href='index.php?id=<?= $line["id_fornecedor"]?>&action_fornecedor=update_fornecedor' class="atualizar">Update</a> 
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

