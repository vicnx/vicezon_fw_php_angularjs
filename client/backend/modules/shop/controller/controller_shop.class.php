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
		// //list_default
		// function list_products() {
		// 	$data = array(
		// 		'option' => $_POST['option'],
		// 		'values' => $_POST['values'],
		// 		'page' => $_POST['page'],
		// 		'order' => $_POST['order']
		// 	);
		// 	// $values=$_POST['values'];
		// 	// // $page=$_POST['page'];
		// 	// echo json_encode($_POST['page']);
		// 	$json = loadModel(CLIENT_MODEL_SHOP, "shop_model", "list_products",$data);
		// 	echo json_encode($json);
		// }

		// //load filters
		// function load_filters(){
		// 	$json = loadModel(CLIENT_MODEL_SHOP, "shop_model", "load_filters");
		// 	echo json_encode($json);
		// }

		// function details(){
		// 	$idproduct= $_POST['idproduct'];
		// 	// echo json_encode($idproduct);
		// 	$json = loadModel(CLIENT_MODEL_SHOP, "shop_model", "details",$idproduct);
		// 	echo json_encode($json);
		// }
		// function check_likes(){
		// 	$token=$_POST['token'];
		// 	$json = loadModel(CLIENT_MODEL_SHOP, "shop_model","check_likes",$token);
		// 	echo json_encode($json);
		// }
		// function check_like_on_click(){
		// 	$data = array(
		// 		'token' => $_POST['token'],
		// 		'idproduct'=> $_POST['idproduct']
		// 	);
		// 	$json = loadModel(CLIENT_MODEL_SHOP, "shop_model", "check_like_on_click",$data);

		// 	if($json==null){
		// 		$result=false;
		// 	}else{
		// 		$result=true;
		// 	}
		// 	echo json_encode($result);
		// }

		// function do_like(){
		// 	$data = array(
		// 		'token' => $_POST['token'],
		// 		'idproduct'=> $_POST['idproduct']
		// 	);
		// 	$json = loadModel(CLIENT_MODEL_SHOP, "shop_model", "do_like",$data);
		// 	echo json_encode($json);
		// }

		// function remove_like(){
		// 	$data = array(
		// 		'token' => $_POST['token'],
		// 		'idproduct'=> $_POST['idproduct']
		// 	);
		// 	$json = loadModel(CLIENT_MODEL_SHOP, "shop_model", "remove_like",$data);
		// 	echo json_encode($json);
		// }
	}