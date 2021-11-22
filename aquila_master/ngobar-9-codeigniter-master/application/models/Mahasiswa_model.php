<?php 

class Mahasiswa_model extends CI_model {
    public function getAllMahasiswa()
    {
        return $this->db->get('mahasiswa')->result_array();
    }

    public function tambahDataMahasiswa()
    {
        $data = [
            "nomer_rmh" => $this->input->post('nomer_rmh', true),
            "nama" => $this->input->post('nama', true),
            "tgl_lahir" => $this->input->post('tgl_lahir', true),
            "nrp" => $this->input->post('nrp', true),
            "email" => $this->input->post('email', true),
            "ket" => $this->input->post('ket', true),
            "jurusan" => $this->input->post('jurusan', true)
            
        ];

        $this->db->insert('mahasiswa', $data);
    }

    public function hapusDataMahasiswa($id)
    {
        // $this->db->where('id', $id);
        $this->db->delete('mahasiswa', ['id' => $id]);
    }

    public function getMahasiswaById($id)
    {
        return $this->db->get_where('mahasiswa', ['id' => $id])->row_array();
    }

    public function ubahDataMahasiswa()
    {
        $data = [
            "nomer_rmh" => $this->input->post('nomer_rmh', true),
            "nama" => $this->input->post('nama', true),
            "tgl_lahir" => $this->input->post('tgl_lahir', true),
            "nrp" => $this->input->post('nrp', true),
            "email" => $this->input->post('email', true),
            "ket" => $this->input->post('ket', true),
            "jurusan" => $this->input->post('jurusan', true)
            
        ];

        $this->db->where('id', $this->input->post('id'));
        $this->db->update('mahasiswa', $data);
    }

    public function cariDataMahasiswa()
    {
        $keyword = $this->input->post('keyword', true);
        
        $this->db->like('nama', $keyword);
        $this->db->or_like('jurusan', $keyword);
        $this->db->or_like('nomer_rmh', $keyword);
        $this->db->or_like('tgl_lahir', $keyword);
        $this->db->or_like('nrp', $keyword);
        $this->db->or_like('email', $keyword);
       
        return $this->db->get('mahasiswa')->result_array();
    }
}