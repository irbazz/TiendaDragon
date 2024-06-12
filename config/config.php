<?php

define("CLIENT_ID", "AbWoyox2kzpSNwZm-EQwbL6nY5c-lOKN9FxWFTvwO1iNgGCfjpiEeMFclPZE8ChNiqAprJhmqvfepOOy");
define("CURRENCY", "USD");
define("KEY_TOKEN", "ABC.asd-321*");
define("MONEDA", "$");

session_start();

//se va actualizando en el index la cantidad de productos
$num_cart=0;
if(isset($_SESSION['carrito']['productos'])){
   $num_cart = count($_SESSION['carrito']['productos']);
}
?>
