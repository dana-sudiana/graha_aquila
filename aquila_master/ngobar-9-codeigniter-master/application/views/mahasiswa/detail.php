<style>
body {background-color: #707070;}
.card-header   {color: blue;}
.div    {color: red;}
</style>
<div class="container">
    <div class="row mt-3">
        <div class="col-md-6">

            <div class="card">
                <div class="card-header">
                    Detail Data WARGA AQUILA
                </div>
                <div class="card-body">
                    <h5 class="card-title"><?= $mahasiswa['nomer_rmh']; ?></h5>
                    <h5 class="card-title"><?= $mahasiswa['nama']; ?></h5>
                    <h5 class="card-title"><?= $mahasiswa['tgl_lahir']; ?></h5>
                     <p class="card-text"><?= $mahasiswa['nrp']; ?></p>
                    <h6 class="card-subtitle mb-2 text-muted"><?= $mahasiswa['email']; ?></h6>
                   
                    <p class="card-text"><?= $mahasiswa['jurusan']; ?></p>
                    
                    <p class="card-text"><?= $mahasiswa['ket']; ?></p>
                    
                    <a href="<?= base_url(); ?>mahasiswa" class="btn btn-primary">Kembali</a>
                </div>
            </div>
        
        </div>
    </div>
</div>