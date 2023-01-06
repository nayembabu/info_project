<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Subcat_model extends CI_Model {

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

	public function get_all_data()
	{	
		$sql = $this->db->get('sub_cat_info');
		return $sql->result();
	}

	public function getActiveDataByCatid($catID)
	{
		$this->db->where('activity_check', 1);	
		$this->db->where('cat_iiid', $catID);	
		$sql = $this->db->get('sub_cat_info');
		return $sql->result();
	}

	public function get_all_active_data()
	{
		$this->db->where('activity_check', 1);	
		$sql = $this->db->get('sub_cat_info');
		return $sql->result();
	}

	public function get_all_inactive_data()
	{
		$this->db->where('activity_check !=', 1);	
		$sql = $this->db->get('sub_cat_info');
		return $sql->result();
	}

	public function get_by_id($id)
	{
		$this->db->where('sub_cat_info_iidd', $id);		
		$sql = $this->db->get('sub_cat_info');
		return $sql->row();
	}
    
	public function insert_single($data)
	{
		$this->db->insert('sub_cat_info', $data);
        return $this->db->insert_id();
	}

	public function update_datas_by_id($id, $datas)
	{
		$this->db->where('sub_cat_info_iidd', $id);		
		$this->db->update('sub_cat_info');
	}

	public function delete_by_id($id)
	{
		$this->db->where('sub_cat_info_iidd', $id);		
		$this->db->delete('sub_cat_info');
	}

}
