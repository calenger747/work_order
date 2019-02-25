<?php
session_start();
include "lib/config.php";

$tampil     = isset($_GET['view']) ? $_GET['view'] : NULL;
$p_bulan    = isset($_GET['bulan']) ? $_GET['bulan'] : NULL;
$p_tahun    = isset($_GET['tahun']) ? $_GET['tahun'] : NULL;

if ($tampil == 'project') {
    //kolom apa saja yang akan ditampilkan
    $columns = array(
        'tbl_project_wo.id_project',
        'tgl_project',
        'project_title',
        'customer',
        'wo_id',
        'so_id',
        'tgl',
        'status',
        'tbl_project.kode_project',
        );


    //jika ingin langsung menambahkan kondisi where dengan parameter terentu query seperti ini 
        //misal kita akan langsung menambahkan kondisi langsung hanya menampilkan provinsi jawabarat saja, 
    //prepared statement untuk keamanan data
    /*$array_id_provinsi = array('provinsi.id_prov' => 32); //32 adalah id untuk jawabarat
        $query = $datatable->get_custom("select provinsi.nama_prov,kabupaten.nama_kab, kecamatan.nama_kec,id_kec
    from provinsi inner join kabupaten 
    on provinsi.id_prov=kabupaten.id_prov
    inner join kecamatan on kabupaten.id_kab=kecamatan.id_kab where provinsi.id_prov=?",$columns,$array_id_provinsi);*/

    //untuk mencobanya uncomment query diatas dan comment query dibawah

    //lakukan query data dari 3 table dengan inner join
        $query = $datatable->get_custom("SELECT * FROM tbl_project_wo join tbl_schedule_wo on tbl_schedule_wo.kode_jadwal = tbl_project_wo.kode_jadwal join tbl_teknisi_wo on tbl_teknisi_wo.kode_teknisi = tbl_project_wo.kode_teknisi ",$columns);


        //buat inisialisasi array data
        $data = array();

        $no = 1;
        foreach ($query as $value) {

        //array sementara data
        $ResultData = array();
        
        //masukan data ke array sesuai kolom table
        $ResultData[] = $no;
        $ResultData[] = $value->tgl_project;
        $ResultData[] = $value->project_title;
        $ResultData[] = $value->customer;
        $ResultData[] = $value->wo_id;
        $ResultData[] = $value->so_id;
        $ResultData[] = $value->tgl;

        //bisa juga pake logic misal jika value tertentu maka outputnya

        //kita bisa buat tombol untuk keperluan edit, delete, dll, 
            if ($value->status === 'first') {
                $ResultData[] = '<a data-rel="tooltip" title="View Detail" class="blue" href="?id=view&mod=view&id_n='.$value->id_project.'">
                                              <span class="fa fa-list">
                                            </a>
                                            <a data-rel="tooltip" title="Add Detail" class="purple" href="?id=add-project&mod=schedule&id_n='.$value->id_project.'">
                                              <span class="fa fa-plus-square">
                                            </a>
                                            <a data-rel="tooltip" title="Add Cash Receipt" class="purple" href="?id=add-cash-receipt&mod=Tambah&wo_id='.$value->wo_id.'">
                                              <span class="fa fa-plus-square">
                                            </a>
                                            <a data-rel="tooltip" title="Add PTJB" class="purple" href="?id=add-ptjb&mod=Tambah&wo_id='.$value->wo_id.'">
                                              <span class="fa fa-plus-square">
                                            </a>
                                            <a data-rel="tooltip" title="Add Income" class="purple" href="?id=add-income&mod=Tambah&wo_id='.$value->wo_id.'">
                                              <span class="fa fa-plus-square">
                                            </a>
                                            <a data-rel="tooltip" title="Edit Data" class="green" href="?id=add-project&mod=edit&id_n='.$value->id_project.'">
                                              <span class="fa fa-edit">
                                            </a>
                                            <a data-rel="tooltip" title="Hapus Data" class="red" href="?id=project&mod=del&id_n='.$value->kode_project.'">
                                              <span class="fa fa-trash-o">
                                            </a>';
            } else {
                $ResultData[] = '<a data-rel="tooltip" title="Add Cash Receipt" class="purple" href="?id=add-cash-receipt&mod=Tambah&wo_id='.$value->wo_id.'">
                                              <span class="fa fa-plus-square">
                                            </a>
                                            <a data-rel="tooltip" title="Add PTJB" class="purple" href="?id=add-ptjb&mod=Tambah&wo_id='.$value->wo_id.'">
                                              <span class="fa fa-plus-square">
                                            </a>
                                            <a data-rel="tooltip" title="Add Income" class="purple" href="?id=add-income&mod=Tambah&wo_id='.$value->wo_id.'">
                                              <span class="fa fa-plus-square">
                                            </a>
                                            <a data-rel="tooltip" title="Edit Data" class="green" href="?id=add-project&mod=edit&id_n='.$value->id_project.'">
                                              <span class="fa fa-edit">
                                            </a>
                                            <a data-rel="tooltip" title="Hapus Data" class="red" href="?id=project&mod=del&id_n='.$value->kode_project.'">
                                              <span class="fa fa-trash-o">
                                            </a>';
            }
        

        //memasukan array ke variable $data

        $data[] = $ResultData;
        $no++;
        }

    //set data
    $datatable->set_data($data);
    //create our json
    $datatable->create_data();

} else if ($tampil == 'kasbon') {
    //kolom apa saja yang akan ditampilkan
    $columns = array(
        'tbl_project_wo.id_project',
        'tgl_project',
        'project_title',
        'customer',
        'wo_id',
        'so_id',
        'tgl',
        'status',
        );


    //jika ingin langsung menambahkan kondisi where dengan parameter terentu query seperti ini 
        //misal kita akan langsung menambahkan kondisi langsung hanya menampilkan provinsi jawabarat saja, 
    //prepared statement untuk keamanan data
    /*$array_id_provinsi = array('provinsi.id_prov' => 32); //32 adalah id untuk jawabarat
        $query = $datatable->get_custom("select provinsi.nama_prov,kabupaten.nama_kab, kecamatan.nama_kec,id_kec
    from provinsi inner join kabupaten 
    on provinsi.id_prov=kabupaten.id_prov
    inner join kecamatan on kabupaten.id_kab=kecamatan.id_kab where provinsi.id_prov=?",$columns,$array_id_provinsi);*/

    //untuk mencobanya uncomment query diatas dan comment query dibawah

    //lakukan query data dari 3 table dengan inner join
        $query = $datatable->get_custom("SELECT * FROM tbl_project_wo join tbl_schedule_wo on tbl_schedule_wo.kode_jadwal = tbl_project_wo.kode_jadwal join tbl_teknisi_wo on tbl_teknisi_wo.kode_teknisi = tbl_project_wo.kode_teknisi ",$columns);


        //buat inisialisasi array data
        $data = array();

        $no = 1;
        foreach ($query as $value) {

        //array sementara data
        $ResultData = array();
        
        //masukan data ke array sesuai kolom table
        $ResultData[] = $no;
        $ResultData[] = $value->tgl_project;
        $ResultData[] = $value->project_title;
        $ResultData[] = $value->customer;
        $ResultData[] = $value->wo_id;
        $ResultData[] = $value->so_id;
        $ResultData[] = $value->tgl;

        //bisa juga pake logic misal jika value tertentu maka outputnya

        //kita bisa buat tombol untuk keperluan edit, delete, dll, 
        $ResultData[] = '<a data-rel="tooltip" title="Add Cash Receipt" class="purple" href="?id=add-cash-receipt&mod=Tambah&wo_id='.$value->wo_id.'">
                                              <span class="fa fa-plus-square">
                                            </a>';
        

        //memasukan array ke variable $data

        $data[] = $ResultData;
        $no++;
        }

    //set data
    $datatable->set_data($data);
    //create our json
    $datatable->create_data();

} else if ($tampil == 'ptjb') {
    //kolom apa saja yang akan ditampilkan
    $columns = array(
        'tbl_project_wo.id_project',
        'tgl_project',
        'project_title',
        'customer',
        'wo_id',
        'so_id',
        'tgl',
        'status',
        );


    //jika ingin langsung menambahkan kondisi where dengan parameter terentu query seperti ini 
        //misal kita akan langsung menambahkan kondisi langsung hanya menampilkan provinsi jawabarat saja, 
    //prepared statement untuk keamanan data
    /*$array_id_provinsi = array('provinsi.id_prov' => 32); //32 adalah id untuk jawabarat
        $query = $datatable->get_custom("select provinsi.nama_prov,kabupaten.nama_kab, kecamatan.nama_kec,id_kec
    from provinsi inner join kabupaten 
    on provinsi.id_prov=kabupaten.id_prov
    inner join kecamatan on kabupaten.id_kab=kecamatan.id_kab where provinsi.id_prov=?",$columns,$array_id_provinsi);*/

    //untuk mencobanya uncomment query diatas dan comment query dibawah

    //lakukan query data dari 3 table dengan inner join
        $query = $datatable->get_custom("SELECT * FROM tbl_project_wo join tbl_schedule_wo on tbl_schedule_wo.kode_jadwal = tbl_project_wo.kode_jadwal join tbl_teknisi_wo on tbl_teknisi_wo.kode_teknisi = tbl_project_wo.kode_teknisi ",$columns);


        //buat inisialisasi array data
        $data = array();

        $no = 1;
        foreach ($query as $value) {

        //array sementara data
        $ResultData = array();
        
        //masukan data ke array sesuai kolom table
        $ResultData[] = $no;
        $ResultData[] = $value->tgl_project;
        $ResultData[] = $value->project_title;
        $ResultData[] = $value->customer;
        $ResultData[] = $value->wo_id;
        $ResultData[] = $value->so_id;
        $ResultData[] = $value->tgl;

        //bisa juga pake logic misal jika value tertentu maka outputnya

        //kita bisa buat tombol untuk keperluan edit, delete, dll, 
        $ResultData[] = '<a data-rel="tooltip" title="Add PTJB" class="purple" href="?id=add-ptjb&mod=Tambah&wo_id='.$value->wo_id.'">
                                              <span class="fa fa-plus-square">
                                            </a>';
        

        //memasukan array ke variable $data

        $data[] = $ResultData;
        $no++;
        }

    //set data
    $datatable->set_data($data);
    //create our json
    $datatable->create_data();

} else if ($tampil == 'income') {
    //kolom apa saja yang akan ditampilkan
    $columns = array(
        'tbl_project_wo.id_project',
        'tgl_project',
        'project_title',
        'customer',
        'wo_id',
        'so_id',
        'tgl',
        'status',
        );


    //jika ingin langsung menambahkan kondisi where dengan parameter terentu query seperti ini 
        //misal kita akan langsung menambahkan kondisi langsung hanya menampilkan provinsi jawabarat saja, 
    //prepared statement untuk keamanan data
    /*$array_id_provinsi = array('provinsi.id_prov' => 32); //32 adalah id untuk jawabarat
        $query = $datatable->get_custom("select provinsi.nama_prov,kabupaten.nama_kab, kecamatan.nama_kec,id_kec
    from provinsi inner join kabupaten 
    on provinsi.id_prov=kabupaten.id_prov
    inner join kecamatan on kabupaten.id_kab=kecamatan.id_kab where provinsi.id_prov=?",$columns,$array_id_provinsi);*/

    //untuk mencobanya uncomment query diatas dan comment query dibawah

    //lakukan query data dari 3 table dengan inner join
        $array_status = array('status' => "first");
        $query = $datatable->get_custom("SELECT * FROM tbl_project_wo join tbl_schedule_wo on tbl_schedule_wo.kode_jadwal = tbl_project_wo.kode_jadwal join tbl_teknisi_wo on tbl_teknisi_wo.kode_teknisi = tbl_project_wo.kode_teknisi WHERE status=?",$columns,$array_status);


        //buat inisialisasi array data
        $data = array();

        $no = 1;
        foreach ($query as $value) {

        //array sementara data
        $ResultData = array();
        
        //masukan data ke array sesuai kolom table
        $ResultData[] = $no;
        $ResultData[] = $value->tgl_project;
        $ResultData[] = $value->project_title;
        $ResultData[] = $value->customer;
        $ResultData[] = $value->wo_id;
        $ResultData[] = $value->so_id;

        //bisa juga pake logic misal jika value tertentu maka outputnya

        //kita bisa buat tombol untuk keperluan edit, delete, dll, 
        $ResultData[] = '<a data-rel="tooltip" title="Add Income" class="purple" href="?id=add-income&mod=Tambah&wo_id='.$value->wo_id.'">
                                              <span class="fa fa-plus-square">
                                            </a>';
        

        //memasukan array ke variable $data

        $data[] = $ResultData;
        $no++;
        }

    //set data
    $datatable->set_data($data);
    //create our json
    $datatable->create_data();

} else if ($tampil == 'order-w-t') {
    //kolom apa saja yang akan ditampilkan
    $columns = array(
        'tbl_project_wo.id_project',
        'tgl_project',
        'project_title',
        'customer',
        'wo_id',
        'so_id',
        'tgl',
        'status',
        );


    //jika ingin langsung menambahkan kondisi where dengan parameter terentu query seperti ini 
        //misal kita akan langsung menambahkan kondisi langsung hanya menampilkan provinsi jawabarat saja, 
    //prepared statement untuk keamanan data
    /*$array_id_provinsi = array('provinsi.id_prov' => 32); //32 adalah id untuk jawabarat
        $query = $datatable->get_custom("select provinsi.nama_prov,kabupaten.nama_kab, kecamatan.nama_kec,id_kec
    from provinsi inner join kabupaten 
    on provinsi.id_prov=kabupaten.id_prov
    inner join kecamatan on kabupaten.id_kab=kecamatan.id_kab where provinsi.id_prov=?",$columns,$array_id_provinsi);*/

    //untuk mencobanya uncomment query diatas dan comment query dibawah

    //lakukan query data dari 3 table dengan inner join
        $query = $datatable->get_custom("SELECT * FROM tbl_project_wo JOIN tbl_schedule_wo ON tbl_project_wo.kode_jadwal = tbl_schedule_wo.kode_jadwal JOIN tbl_teknisi_wo ON tbl_project_wo.kode_teknisi = tbl_teknisi_wo.kode_teknisi WHERE tbl_schedule_wo.tgl = '' AND tbl_teknisi_wo.teknisi1 = '' AND tbl_teknisi_wo.teknisi2 = '' AND tbl_teknisi_wo.teknisi3 = '' AND tbl_teknisi_wo.teknisi4 = '' AND tbl_teknisi_wo.pkl1 = '' AND tbl_teknisi_wo.pkl2 = '' AND tbl_teknisi_wo.pkl3 = '' AND month(tbl_project_wo.tgl_project) = '$p_bulan' AND year(tbl_project_wo.tgl_project) = '$p_tahun' ",$columns);


        //buat inisialisasi array data
        $data = array();

        $no = 1;
        foreach ($query as $value) {

        //array sementara data
        $ResultData = array();
        
        //masukan data ke array sesuai kolom table
        $ResultData[] = $no;
        $ResultData[] = $value->tgl_project;
        $ResultData[] = $value->project_title;
        $ResultData[] = $value->customer;
        $ResultData[] = $value->wo_id;
        $ResultData[] = $value->so_id;

        //bisa juga pake logic misal jika value tertentu maka outputnya

        //kita bisa buat tombol untuk keperluan edit, delete, dll, 
        $ResultData[] = '<a data-rel="tooltip" title="View Detail" class="blue" href="?id=view&mod=view&id_n='.$value->id_project.'">
                                <span class="fa fa-list">
                              </a>';
        

        //memasukan array ke variable $data

        $data[] = $ResultData;
        $no++;
        }

    //set data
    $datatable->set_data($data);
    //create our json
    $datatable->create_data();

} else if ($tampil == 'rm-project') {
    //kolom apa saja yang akan ditampilkan
    $columns = array(
        'tbl_project_wo.id_project',
        'tgl_project',
        'project_title',
        'customer',
        'wo_id',
        'so_id',
        'tgl',
        'status',
        );


    //jika ingin langsung menambahkan kondisi where dengan parameter terentu query seperti ini 
        //misal kita akan langsung menambahkan kondisi langsung hanya menampilkan provinsi jawabarat saja, 
    //prepared statement untuk keamanan data
    /*$array_id_provinsi = array('provinsi.id_prov' => 32); //32 adalah id untuk jawabarat
        $query = $datatable->get_custom("select provinsi.nama_prov,kabupaten.nama_kab, kecamatan.nama_kec,id_kec
    from provinsi inner join kabupaten 
    on provinsi.id_prov=kabupaten.id_prov
    inner join kecamatan on kabupaten.id_kab=kecamatan.id_kab where provinsi.id_prov=?",$columns,$array_id_provinsi);*/

    //untuk mencobanya uncomment query diatas dan comment query dibawah

    //lakukan query data dari 3 table dengan inner join
        $array_status = array('status' => "first");
        $query = $datatable->get_custom("SELECT * FROM tbl_project_wo join tbl_schedule_wo on tbl_schedule_wo.kode_jadwal = tbl_project_wo.kode_jadwal join tbl_teknisi_wo on tbl_teknisi_wo.kode_teknisi = tbl_project_wo.kode_teknisi WHERE status=?",$columns,$array_status);


        //buat inisialisasi array data
        $data = array();

        $no = 1;
        foreach ($query as $value) {

        //array sementara data
        $ResultData = array();
        
        //masukan data ke array sesuai kolom table
        $ResultData[] = $no;
        $ResultData[] = $value->tgl_project;
        $ResultData[] = $value->project_title;
        $ResultData[] = $value->customer;
        $ResultData[] = $value->wo_id;
        $ResultData[] = $value->so_id;
        $ResultData[] = $value->tgl;

        //bisa juga pake logic misal jika value tertentu maka outputnya

        //kita bisa buat tombol untuk keperluan edit, delete, dll, 
        $ResultData[] = '<a data-rel="tooltip" title="View Detail" class="blue" href="?id=view&mod=view&id_n='.$value->id_project.'">
                                <span class="fa fa-list">
                              </a>';
        

        //memasukan array ke variable $data

        $data[] = $ResultData;
        $no++;
        }

    //set data
    $datatable->set_data($data);
    //create our json
    $datatable->create_data();

} else if ($tampil == 'project-admin') {
    //kolom apa saja yang akan ditampilkan
    $columns = array(
        'tbl_project_wo.id_project',
        'tgl_project',
        'project_title',
        'customer',
        'wo_id',
        'so_id',
        'tgl',
        'status',
        );


    //jika ingin langsung menambahkan kondisi where dengan parameter terentu query seperti ini 
        //misal kita akan langsung menambahkan kondisi langsung hanya menampilkan provinsi jawabarat saja, 
    //prepared statement untuk keamanan data
    /*$array_id_provinsi = array('provinsi.id_prov' => 32); //32 adalah id untuk jawabarat
        $query = $datatable->get_custom("select provinsi.nama_prov,kabupaten.nama_kab, kecamatan.nama_kec,id_kec
    from provinsi inner join kabupaten 
    on provinsi.id_prov=kabupaten.id_prov
    inner join kecamatan on kabupaten.id_kab=kecamatan.id_kab where provinsi.id_prov=?",$columns,$array_id_provinsi);*/

    //untuk mencobanya uncomment query diatas dan comment query dibawah

    //lakukan query data dari 3 table dengan inner join
        $array_status = array('level' => "admin");
        $query = $datatable->get_custom("SELECT * FROM tbl_project_wo join tbl_schedule_wo on tbl_schedule_wo.kode_jadwal = tbl_project_wo.kode_jadwal join tbl_teknisi_wo on tbl_teknisi_wo.kode_teknisi = tbl_project_wo.kode_teknisi WHERE level=?",$columns,$array_status);


        //buat inisialisasi array data
        $data = array();

        $no = 1;
        foreach ($query as $value) {

        //array sementara data
        $ResultData = array();
        
        //masukan data ke array sesuai kolom table
        $ResultData[] = $no;
        $ResultData[] = $value->tgl_project;
        $ResultData[] = $value->project_title;
        $ResultData[] = $value->customer;
        $ResultData[] = $value->wo_id;
        $ResultData[] = $value->so_id;
        $ResultData[] = $value->tgl;

        //bisa juga pake logic misal jika value tertentu maka outputnya

        //kita bisa buat tombol untuk keperluan edit, delete, dll, 
        if ($value->status === 'first') {
                $ResultData[] = '<a data-rel="tooltip" title="View Detail" class="blue" href="?id=view&mod=view&id_n='.$value->id_project.'">
                                              <span class="fa fa-list">
                                            </a>
                                            <a data-rel="tooltip" title="Add Detail" class="purple" href="?id=add-project&mod=schedule&id_n='.$value->id_project.'">
                                              <span class="fa fa-plus-square">
                                            </a>
                                            <a data-rel="tooltip" title="Edit Data" class="green" href="?id=add-project&mod=edit&id_n='.$value->id_project.'">
                                              <span class="fa fa-edit">
                                            </a>
                                            <a data-rel="tooltip" title="Hapus Data" class="red" href="?id=project&mod=del&id_n='.$value->kode_project.'">
                                              <span class="fa fa-trash-o">
                                            </a>';
            } else {
                $ResultData[] = '<a data-rel="tooltip" title="Edit Data" class="green" href="?id=add-project&mod=edit&id_n='.$value->id_project.'">
                                              <span class="fa fa-edit">
                                            </a>
                                            <a data-rel="tooltip" title="Hapus Data" class="red" href="?id=project&mod=del&id_n='.$value->kode_project.'">
                                              <span class="fa fa-trash-o">
                                            </a>';
            }

        //memasukan array ke variable $data

        $data[] = $ResultData;
        $no++;
        }

    //set data
    $datatable->set_data($data);
    //create our json
    $datatable->create_data();

} else if ($tampil == 'project-teknisi') {
    //kolom apa saja yang akan ditampilkan
    $columns = array(
        'tbl_project_wo.id_project',
        'tgl_project',
        'project_title',
        'customer',
        'wo_id',
        'so_id',
        'tgl',
        'status',
        );


    //jika ingin langsung menambahkan kondisi where dengan parameter terentu query seperti ini 
        //misal kita akan langsung menambahkan kondisi langsung hanya menampilkan provinsi jawabarat saja, 
    //prepared statement untuk keamanan data
    /*$array_id_provinsi = array('provinsi.id_prov' => 32); //32 adalah id untuk jawabarat
        $query = $datatable->get_custom("select provinsi.nama_prov,kabupaten.nama_kab, kecamatan.nama_kec,id_kec
    from provinsi inner join kabupaten 
    on provinsi.id_prov=kabupaten.id_prov
    inner join kecamatan on kabupaten.id_kab=kecamatan.id_kab where provinsi.id_prov=?",$columns,$array_id_provinsi);*/

    //untuk mencobanya uncomment query diatas dan comment query dibawah

    //lakukan query data dari 3 table dengan inner join
        $array_status = array('level' => "teknisi");
        $query = $datatable->get_custom("SELECT * FROM tbl_project_wo join tbl_schedule_wo on tbl_schedule_wo.kode_jadwal = tbl_project_wo.kode_jadwal join tbl_teknisi_wo on tbl_teknisi_wo.kode_teknisi = tbl_project_wo.kode_teknisi WHERE level=?",$columns,$array_status);


        //buat inisialisasi array data
        $data = array();

        $no = 1;
        foreach ($query as $value) {

        //array sementara data
        $ResultData = array();
        
        //masukan data ke array sesuai kolom table
        $ResultData[] = $no;
        $ResultData[] = $value->tgl_project;
        $ResultData[] = $value->project_title;
        $ResultData[] = $value->customer;
        $ResultData[] = $value->wo_id;
        $ResultData[] = $value->so_id;
        $ResultData[] = $value->tgl;

        //bisa juga pake logic misal jika value tertentu maka outputnya

        //kita bisa buat tombol untuk keperluan edit, delete, dll, 
        if ($value->status === 'first') {
                $ResultData[] = '<a data-rel="tooltip" title="View Detail" class="blue" href="?id=view&mod=view&id_n='.$value->id_project.'">
                                              <span class="fa fa-list">
                                            </a>
                                            <a data-rel="tooltip" title="Add Detail" class="purple" href="?id=add-project&mod=schedule&id_n='.$value->id_project.'">
                                              <span class="fa fa-plus-square">
                                            </a>
                                            <a data-rel="tooltip" title="Edit Data" class="green" href="?id=add-project&mod=edit&id_n='.$value->id_project.'">
                                              <span class="fa fa-edit">
                                            </a>
                                            <a data-rel="tooltip" title="Hapus Data" class="red" href="?id=project&mod=del&id_n='.$value->kode_project.'">
                                              <span class="fa fa-trash-o">
                                            </a>';
            } else {
                $ResultData[] = '<a data-rel="tooltip" title="Edit Data" class="green" href="?id=add-project&mod=edit&id_n='.$value->id_project.'">
                                              <span class="fa fa-edit">
                                            </a>
                                            <a data-rel="tooltip" title="Hapus Data" class="red" href="?id=project&mod=del&id_n='.$value->kode_project.'">
                                              <span class="fa fa-trash-o">
                                            </a>';
            }

        //memasukan array ke variable $data

        $data[] = $ResultData;
        $no++;
        }

    //set data
    $datatable->set_data($data);
    //create our json
    $datatable->create_data();

}