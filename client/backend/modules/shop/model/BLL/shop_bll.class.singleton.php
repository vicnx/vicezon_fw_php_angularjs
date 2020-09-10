<?php
	class shop_bll{
	    private $dao;
	    private $db;
	    static $_instance;

	    private function __construct() {
	        $this->dao = shop_dao::getInstance();
	        $this->db = db::getInstance();
	    }

	    public static function getInstance() {
            // return "bll dentro";
	        if (!(self::$_instance instanceof self)){
	            self::$_instance = new self();
	        }
	        return self::$_instance;
	    }
		//get products
		public function get_products_BLL(){
			return $this->dao->get_products($this->db);
		  }
		  
		public function get_brands_BLL(){
			  return $this->dao->get_brands($this->db);
		  }
		//details
		public function get_selected_product_BLL($idproduct){
			return $this->dao->get_selected_product($this->db,$idproduct);
		}
	}