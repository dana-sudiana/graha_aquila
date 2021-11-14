<div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                MONITOR WARGA PER KODE RUMAH ---- PER PENGHUNI
                            </h2>
                            
                        </div>
                         
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
                                            $sql = $koneksi->query("select * from tb_podaily order by nik ASC");


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


                                        </tr>
                                        <?php 
                                       
                                    } ?>
                                    </tbody>
                                    
                                </table>
                               
                     </div>