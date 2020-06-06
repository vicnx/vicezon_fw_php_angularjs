<?php
class home_dao {
    static $_instance;

    private function __construct() {
        $_SESSION['c']='c';
    }

    public static function getInstance() {
        if(!(self::$_instance instanceof self)){
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    //GET PRODUCTS
    public function get_products($db) {
        $sql = "SELECT * FROM tablets";
        $stmt = $db->ejecutar($sql);
        return $db->listar($stmt);
    }

    //get brands
    public function get_brands($db) {
        $sql = "SELECT * FROM brands";
        $stmt = $db->ejecutar($sql);
        return $db->listar($stmt);
    }
}