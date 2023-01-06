<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Product_model extends CI_Model {

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

	public function get_all_data()
	{	
		$sql = $this->db->get('products_info');
		return $sql->result();
	}

	public function get_all_active_data()
	{
		$this->db->where('check_active', 1);	
		$sql = $this->db->get('products_info');
		return $sql->result();
	}

	public function get_all_active_dataBySubCatID($subcatID)
	{
		$this->db->where('sub_cat_ididdi', $subcatID);	
		$sql = $this->db->get('products_info');
		return $sql->result();
	}

	public function get_all_inactive_data()
	{
		$this->db->where('check_active !=', 1);	
		$sql = $this->db->get('products_info');
		return $sql->result();
	}

	public function get_by_id($id)
	{
		$this->db->where('products_info_iddiii', $id);		
		$sql = $this->db->get('products_info');
		return $sql->row();
	}

	public function insert_single($data)
	{
		$this->db->insert('products_info', $data);
        return $this->db->insert_id();
	}

	public function update_datas_by_id($id, $datas)
	{
		$this->db->where('products_info_iddiii', $id);		
		$this->db->update('products_info');
	}

	public function delete_by_id($id)
	{
		$this->db->where('products_info_iddiii', $id);		
		$this->db->delete('products_info');
	}
    
}
