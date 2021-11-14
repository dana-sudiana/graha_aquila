<div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                DATA WARGA GRAHA AQUILA & CHANDRA
                            </h2>
                            
                        </div>
                        <a href="?page=penjualan&aksi=tambah" class="btn btn-primary">Tambah Data </a>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>NOM RMH</th>
                                            <th>NAMA</th>
                                            <th>TGL LAHIR</th>
                                            <th>TELPON</th>
                                           
                                            <th>STATUS</th>
                                            <th>KET</th>
                                            
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                        <?php
                                            $no = 1;

                                            $sql = $koneksi->query("select * from tb_podaily order by nik ASC" );

                                            while ($data = $sql->fetch_assoc()) {
                                                
                                            
                                        ?>
                                        <tr>
                                            <td><?php echo $no++;?></td>
                                            <td><?php echo $data['nik']?></td>
                                            <td><?php echo $data['nama']?></td>
                                            <td><?php echo $data['tgl_lahir']?></td>
                                            <td><?php echo $data['telpon']?></td>
                                           
                                            
                                            <td><?php echo $data['status']?></td>
                                            <td><?php echo $data['bagian']?></td>
                                                                                       
                                          
                                            <td>
                                                
                                                <a href="?page=penjualan&aksi=edit&id=<?php echo $data['kode_penjualan']?>" class="btn btn-success" >Edit</a>
                                                <a onclick="return confirm('Apakah Anda Yakin Ingin Menghapus Data ini !')" href="?page=penjualan&aksi=delete&id=<?php echo $data['kode_penjualan']?>" class="btn btn-danger" >Delete</a>
                                            </td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                                
                            </div>