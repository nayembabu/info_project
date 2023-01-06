<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Cat_model extends CI_Model {

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

	public function get_all_data()
	{	
		$sql = $this->db->get('cat_infos');
		return $sql->result();
	}

	public function get_all_active_data()
	{
		$this->db->where('activity', 1);	
		$sql = $this->db->get('cat_infos');
		return $sql->result();
	}

	public function get_all_inactive_data()
	{
		$this->db->where('activity !=', 1);	
		$sql = $this->db->get('cat_infos');
		return $sql->result();
	}

	public function get_cat_by_id($id)
	{
		$this->db->where('cat_infos_p_idd', $id);		
		$sql = $this->db->get('cat_infos');
		return $sql->row();
	}
    
	public function insert_single($data)
	{
		$this->db->insert('cat_infos', $data);
        return $this->db->insert_id();
	}

	public function update_datas_by_id($id, $datas)
	{
		$this->db->where('cat_infos_p_idd', $id);		
		$this->db->update('cat_infos');
	}

	public function delete_cat_by_id($id)
	{
		$this->db->where('cat_infos_p_idd', $id);		
		$this->db->delete('cat_infos');
	}
}
