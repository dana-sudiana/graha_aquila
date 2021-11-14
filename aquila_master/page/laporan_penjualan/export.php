<!DOCTYPE html>
<?php
	header("Content-type: application/vnd-ms-excel");
	header("Content-Disposition: attachment; filename=Data Warga.xls");
?>

<?php
//session_start();
//ob_start();
include_once("../../koneksi.php"); 
?>

<?php
//session_start();
//ob_start();
include_once("../../koneksi.php"); 
?>

<html>
<head>
  <title>LAPORAN KELUARGA PEGAWAI</title>
</head>
<body>
 
  <center>
 
    <h2>LAPORAN KELUARGA PEGAWAI</h2>
    
  </center>
 
 
 
  <table border="1" style="width: 100%">
    <tr>
      <th width="1%">No</th>
      <th>Nik</th>
      <th>Nama</th>
      <th>Tgl Lahir</th>
      
      <th>Telpon</th>
      <th>Status</th>
      <th>Ket</th>
    </tr>
      <?php
       $no = 1;

       $sql = $koneksi->query("SELECT * from tb_podaily  ");

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
   
   
    } 
    ?>

    
  </table>
 <p><br>
  <div align="right" >Petugas </div><p></br>
  <div align="right">( ............... )</div>
  <script>
    window.print();
  </script>
  
 
</body>
</html>


