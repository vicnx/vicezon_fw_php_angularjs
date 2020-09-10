<?php
	class controller_shop {
	    function __construct() {
	        $_SESSION['module'] = "SHOP";
		}
		//GET PRODUCTS
		function get_products() {
			$json = loadModel(CLIENT_MODEL_SHOP, "shop_model", "get_products");
			echo json_encode($json,JSON_NUMERIC_CHECK);
		}

		//get brands
		function get_brands() {
			$json = loadModel(CLIENT_MODEL_SHOP, "shop_model", "get_brands");
			echo json_encode($json,JSON_NUMERIC_CHECK);
		}

		function get_selected_product() {
			$idproduct = $_GET['param'];
			// echo $idproduct;
			$json = loadModel(CLIENT_MODEL_SHOP, "shop_model", "get_selected_product",$idproduct);
			echo json_encode($json,JSON_NUMERIC_CHECK);
		}
	}