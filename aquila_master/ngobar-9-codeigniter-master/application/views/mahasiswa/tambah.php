<div class="container">

    <div class="row mt-3">
        <div class="col-md-6">

            <div class="card">
                <div class="card-header">
                    Form Tambah Data WARGA GRAHA AQUILA
                </div>
                <div class="card-body">
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="nama">Nomer Rumah</label>
                            <input type="text" name="nomer_rmh" class="form-control" id="nomer_rmh">
                            <small class="form-text text-danger"><?= form_error('nomer_rmh'); ?></small>
                        </div>
                        <div class="form-group">
                            <label for="nama">Nama</label>
                            <input type="text" name="nama" class="form-control" id="nama">
                            <small class="form-text text-danger"><?= form_error('nama'); ?></small>
                        </div>
                        <div class="form-group">
                            <label for="tgl_lahir">Tgl_lahir</label>
                            <input type="text" name="tgl_lahir" class="form-control" id="tgl_lahir">
                            <small class="form-text text-danger"><?= form_error('tgl_lahir'); ?></small>
                        </div>
                        <div class="form-group">
                            <label for="nrp">TELPON</label>
                            <input type="text" name="nrp" class="form-control" id="nrp">
                            <small class="form-text text-danger"><?= form_error('nrp'); ?></small>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="text" name="email" class="form-control" id="email">
                            <small class="form-text text-danger"><?= form_error('email'); ?></small>
                        </div>
                        <div class="form-group">
                            <label for="jurusan">Status</label>
                            <select class="form-control" id="jurusan" name="jurusan">
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
                        <div class="form-group">
                            <label for="jurusan">Ket</label>
                            <select class="form-control" id="ket" name="ket">
                                <option value="">Pilih</option>
                                <option value="Warga Tetap">Warga Tetap</option>
                                <option value="Warga Sementara">Warga Sementara</option>
                                <option value="Warga lainnya">Warga lainnya</option>
                                
                            </select>
                        </div>

                        <button type="submit" name="tambah" class="btn btn-primary float-right">Tambah Data</button>
                    </form>
                </div>
            </div>


        </div>
    </div>

</div>