<?php
//session_start();
//ob_start();
include_once("../../koneksi.php"); 
?>

<html>
<head>
  <title>CETAK WARGA GRAHA AQUILA</title>
</head>
<body>
 
  <center>
 
    <h2>CETAK WARGA GRAHA AQUILA</h2>
    
  </center>
 
 
 
  <table border="1" style="width: 100%">
     
    <tr>
      <th width="1%">No</th>
      
      <th>NOM RMH</th>
      <th>NAMA</th>
      <th>TGL LAHIR</th>
      <th>TELPON</th>
      <th>FOTO</th>
      <th>STATUS</th>
      <th>KET</th>

    </tr>
      <?php
       $no = 1;

       $sql = $koneksi->query("SELECT * from tb_podaily order by nik ASC");

      while ($data = $sql->fetch_assoc()) {
        
      
      ?>
       <tr>
          
          <td><?php echo $no++;?></td>
          <td><?php echo $data['nik']?></td>
          <td><?php echo $data['nama']?></td>
          <td><?php echo $data['tgl_lahir']?></td>
          <td><?php echo $data['alamat']?></td>
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
  <center>
    <a target="_blank" href="export.php">EXPORT KE EXCEL</a>
  </center>
  
</body>
</html>


