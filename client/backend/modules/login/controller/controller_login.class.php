<?php
	class controller_login {
	    function __construct() {
			$_SESSION['module'] = "LOGIN";
			include(CLIENT_UTILS_LOGIN . "functions_login.inc.php");
			
	    }
		function register(){
			$post= file_get_contents("php://input");
			$dataJsonDecode= json_decode($post);
			$data = array(
				'username' => $dataJsonDecode->username,
				'password' => $dataJsonDecode->password,
				"first_name" => $dataJsonDecode->first_name,
                "last_name" => $dataJsonDecode->last_name,
                "rpassword" => $dataJsonDecode->rpassword,
                "email" => $dataJsonDecode->email,
			);
			$ok = validate_username_registered($data);
			// echo json_encode($ok);
			// // echo json_encode($ok);
			if($ok['exist']==false){
				$data=$ok['datos'];
				$result=loadModel(CLIENT_MODEL_LOGIN,'login_model','insert_user_local',$data);
				if($result){
					$mail['type'] = 'check';
					$mail['inputEmail'] = $data['email'];
					$mail['token']= $data['token_check'];
					enviar_email($mail);
				}
				echo "done";
			}else{
				echo $ok['error'];
			}
		}

		function active_user(){
			// echo json_encode($_GET['param']);
			if (isset($_GET['param'])) {
				loadModel(CLIENT_MODEL_LOGIN, "login_model", "active_user",$_GET['param']);
	    	}	
		}

		function login(){
			$post= file_get_contents("php://input");
			$dataJsonDecode= json_decode($post);
			$data = array(
				'username' => $dataJsonDecode->username,
				'password' => $dataJsonDecode->password
			);

			$result=loadModel(CLIENT_MODEL_LOGIN, "login_model", "login",$data);
			if(!$result){
				echo "user no existe";
			}else{
				if(password_verify($data['password'],$result[0]['password'])){
					$token_jwt=generate_token_JWT($data['username']);
					$response = array(
						'response' => "datos_validos",
						'token_jwt' => $token_jwt
					);
					echo json_encode($response);
				}else{
					echo "false";
				}
			}
			// echo json_encode($result);
			// echo json_encode($result[0]['username']);
		}

		function get_user(){
			$data=file_get_contents("php://input");
			$result=loadModel(CLIENT_MODEL_LOGIN, "login_model", "get_user",$data);
			if ($result){
				$new_token_JWT=generate_token_JWT($result[0]['id']);
			}
			$arresult= array(
				"token" => $new_token_JWT,
				"result" => $result
			);
			echo json_encode($arresult);
		}

		function recover_send_mail(){
			$ok = validate_email_exists_local();

			if ($ok['exist']==true){
				$data=$ok['data'];
				$result=loadModel(CLIENT_MODEL_LOGIN, "login_model", "update_recover_token",$data);
				$mail['type'] = 'recover';
				$mail['inputEmail'] = $data['email'];
				$mail['token']= $data['token_recover'];
				enviar_email($mail);
				echo json_encode("done");
			}else{
				echo json_encode("fail");
			}
			
		}

		function recover_password(){
			$data= array(
				'password' => $_POST['password'],
				'token_recover' => $_POST['token']
			);
			$result=loadModel(CLIENT_MODEL_LOGIN, "login_model", "check_token",$data);
			if($result == null){
				echo json_encode("fail");
			}else{
				loadModel(CLIENT_MODEL_LOGIN, "login_model", "recover_password",$data);
				echo json_encode("done");
			}
			// echo json_encode($result);
		}

		function social_login(){
			$data=$_POST['datos'];
			$result=loadModel(CLIENT_MODEL_LOGIN, "login_model", "check_social",$data);
			if ($result == null){//NO ESTA REGISTRADO AUN
				$insert=loadModel(CLIENT_MODEL_LOGIN, "login_model", "register_social",$data);
				// echo json_encode("registered")
			}
			$token_jwt=generate_token_JWT($data['uid']);
			echo $token_jwt;
			// echo json_encode($insert);
			// echo json_encode($result);
		}

		function activity_check_token(){
			$post= file_get_contents("php://input");
			
			// $data=$_POST['token'];
			
			activity($post);
			echo json_encode(activity($post)['success']); 
		}
	}