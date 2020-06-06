<?php
class home_model {
    private $bll;
    static $_instance;

    private function __construct() {
        // return "dentro construct model";
        // include_once("C:/xampp/htdocs/vicezon_fw_php_angularjs/client/backend/modules/home/model/BLL/home_bll.class.singleton.php");
        // return home_bll::getInstance();
        $this->bll = home_bll::getInstance();
        
    }

    public static function getInstance() {

        if (!(self::$_instance instanceof self)){
            self::$_instance = new self();
        }
        return self::$_instance;
    }
    //get products
    public function get_products(){
        return $this->bll->get_products_BLL();
    }
    
    //top_brands
    public function get_brands(){
        return $this->bll->get_brands_BLL();
    }

}