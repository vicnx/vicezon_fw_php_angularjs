<?php
	class controller_home {
	    function __construct() {
	        $_SESSION['module'] = "home";
	    }

		//GET PRODUCTS
		function get_products() {
			$json = loadModel(CLIENT_MODEL_HOME, "home_model", "get_products");
			echo json_encode($json,JSON_NUMERIC_CHECK);
		}

		//top brands
		function get_brands() {
			$json = loadModel(CLIENT_MODEL_HOME, "home_model", "get_brands");
			echo json_encode($json,JSON_NUMERIC_CHECK);
		}
		
		//vista admin
		function vista_admin(){
			$_SESSION['vista'] = "admin";
			echo json_encode("done");
		}

	}