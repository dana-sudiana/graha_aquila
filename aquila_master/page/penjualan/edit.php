<?php 
  $kode = $_GET['id'];
  $sql = $koneksi->query("select * from tb_podaily where kode_penjualan='$kode'");
  $tampil = $sql->fetch_assoc();

?>
<div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Edit Keluarga
                                
                            </h2>
          </div>
          <div class="body">
                        <form method="POST">

                            <label for="">NOM RMH</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" name="nik" value="<?php echo $tampil['nik']?>" class="form-control" />
                                </div>
                            </div>

                            <label for="">Nama</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" name="nama" value="<?php echo $tampil['nama']?>" class="form-control" />
                                </div>
                            </div>
                            <label for="">Tgl Lahir</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" name="tgl_lahir" value="<?php echo $tampil['tgl_lahir']?>" class="form-control" />
                                </div>
                            
                             <label for="">Telpon</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" name="telpon" value="<?php echo $tampil['telpon']?>" class="form-control" />
                                </div>
                            </div>  
                          
                            <table>
                                    <div ><br>
                                        <label>Status :</label>
                                        <select name="status" class="number_format">
                                            <!-- <option value="">Pilih</option> -->
                                            <option value="">Pilih</option>
                                            <option value="Ayah">Ayah</option>
                                            <option value="Ibu">Ibu</option>
                                            <option value="Anak">Anak</option>
                                            <option value="Baby Siter">Baby Siter</option>
                                            <option value="Mertua">Mertua</option>
                                            <option value="Saudara Ayah">Saudara Ayah</option>
                                            <option value="Saudara Istri">Saudara Istri</option>
                                            <option value="Lainnya">Lainnya</option>
                                            
                                        </select>
                                                 
                                    </div>
                                </table>



                            <label for="">Ket</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" name="bagian" value="<?php echo $tampil['bagian']?>" class="form-control" />
                                </div>
                            </div>  
                           
                         

                              
                          <input type="submit" name="simpan" value="Simpan" class="btn btn-primary">

                        </form>

           <?php 

            if (isset($_POST['simpan'])) {
              $nik = $_POST['nik'];
              $nama = $_POST['nama'];
              $alamat = $_POST['alamat'];
              $tgl_lahir = $_POST['tgl_lahir'];
              $telpon = $_POST['telpon'];
              $status = $_POST['status'];
              $bagian = $_POST['bagian'];
              

            $sql = $koneksi->query("update  tb_podaily  set nik='$nik',nama='$nama',tgl_lahir='$tgl_lahir',telpon='$telpon',alamat='$alamat',status='$status',bagian='$bagian' where kode_penjualan='$kode'");

            if ($sql) {
              ?>

              <script type="text/javascript">
                alert("Data Berhasil di Edit");
                window.location.href="?page=penjualan";
              </script>


              <?php
            }
    }
     ?>