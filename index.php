<?php

include_once './connection.php';
?>
<!DOCTYPE html>
<html lang="pt-br">
    
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        






        <title>Loja virtual</title>
    </head>  
    
      
        
    
        <?php
        include_once './menu.php';
        include_once './carrossel.php';

        
        
        ?>
        <div class="container">
            <h2 id="h2" class="display-4 mt-5 mb-5 " style = "font-size: 40px; text-align: center;">Produtos Em Destaque</h2> 
            
            <?php
            $query_products = "SELECT id, name, price, image FROM products ORDER BY id ASC";
            $result_products = $conn->prepare($query_products);
                        
            $result_products->execute();
            ?>
            <div class="row row-cols-1 row-cols-md-3 " >
                <?php
                while ($row_product =  $result_products->fetch(PDO::FETCH_ASSOC)) {
                    extract($row_product);
                    /* echo "<img src='./images/$id/$image'><br>";
                      echo "ID: $id<br>";
                      echo "Nome: $name<br>";
                      echo "Preço: R$ " . number_format($price, 2, ",", ".") . "<br>";
                      echo "<hr>"; */
                    
                    ?>
                    <div class="col mb-4 text-center  " >
                        <div class="card bg-light">
                            <a href="view-products.php?id=<?php echo $id; ?>"><img src='<?php echo "./images/products/$id/$image"; ?>' class="card-img-top" alt="comprar" style = "cursor; border: 10px solid transparent;  "></a>
                            <div class="card-body " > 
                                <h5 class="card-title"><?php echo $name; ?></h5>
                                <p class="card-text">R$ <?php echo number_format($price, 2, ",", "."); ?></p>
                                <a href="view-products.php?id=<?php echo $id; ?>" class="btn btn-primary">Detalhes</a>
                                
                                
                            </div>
                        </div>
                    </div>
                    <?php
                }
                ?>
            </div>
        </div>

      
<?php
include_once './footer.php';
?>
         





        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

    </body>
</html>
