<?php
class shop_model {
    private $bll;
    static $_instance;

    private function __construct() {
        // return "dentro construct model";
        // return home_bll::getInstance();
        $this->bll = shop_bll::getInstance();
        // include_once("/vicezon_fw_php/modules/client/modules/home/model/BLL/home_bll.class.singleton.php");
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

    //details
    public function get_selected_product($idproduct){
        return $this->bll->get_selected_product_BLL($idproduct);
    }

}