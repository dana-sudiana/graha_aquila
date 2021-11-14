
<div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Tambah WARGA GRAHA AQUILA
                                
                            </h2>
          </div>
          <div class="body">
              <form method="POST">

                  <label for="">NOMER RUMAH</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" name="nik" class="form-control" />
                                </div>
                            </div>

                            <label for="">nama</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" name="nama" class="form-control" />
                                </div>
                            </div>
                            <label for="">tgl_lahir</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text"  name="tgl_lahir"  class="form-control" />
                                </div>
                                                 

                            <label for="">Telpon</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text"  name="telpon"  class="form-control" />
                                </div>
                            </div>

                           
                            <table>
                                    <div ><br>
                                        <label>Status :</label>
                                        <select name="status" class="number_format">
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
                                    <input type="text"  name="bagian"  class="form-control" />
                                </div>
                            </div>

                           <input type="submit" name="simpan" value="Simpan" class="btn btn-primary">

                        </form>

           <?php 

            if (isset($_POST['simpan'])) {
              $nik = $_POST['nik'];
              $nama = $_POST['nama'];
             
              $tgl_lahir = $_POST['tgl_lahir'];
              $telpon = $_POST['telpon'];
              $status = $_POST['status'];
              $bagian = $_POST['bagian'];
            
             $sql = $koneksi->query("insert into tb_podaily (nik,nama,tgl_lahir,telpon,status,bagian) values('$nik','$nama','$tgl_lahir','$telpon','$status','$bagian')");

            if ($sql) {
              ?>

              <script type="text/javascript">
                alert("Data Berhasil di Simpan");
                window.location.href="?page=penjualan";
              </script>


              <?php
            }
    }
     ?>