<?php
defined('APLIKASI') or exit('Anda tidak dizinkan mengakses langsung script ini!');
// 
?>


<?php

$api_url = 'https://api.myquran.com/v2/sholat/jadwal/1624/2024/1/30';

// membaca JSON dari url
$json_data = file_get_contents($api_url);

// Decode data JSON data menjadi array PHP
$response_data = json_decode($json_data);

// Mengakses data yang ada dalam object 'data'
$jadwal_shalat = $response_data->data;

?>


<div class='row'>
    <div class='col-md-12'>
        <div class='box box-solid'>
            <div class='box-header with-border'>
                <h3 class='box-title'><i class="fas fa-edit    "></i> Jadwal Sholat</h3>
            </div><!-- /.box-header -->
            <div class='box-body'>

                <div id='tableberita' class='table-responsive'>
                    <table class='table table-bordered table-striped  table-hover'>
                        <thead>
                            <tr>
                                <th class='box-title'>Daerah</th>
                                <th class='box-title'>Tanggal</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><?php echo $jadwal_shalat->lokasi; ?></td>
                                <td><?php echo $jadwal_shalat->jadwal->tanggal; ?></td>
                            <tr>
                                <td>Imsak</td>
                                <td><?php echo $jadwal_shalat->jadwal->imsak; ?></td>
                            </tr>
                            <tr>
                                <td>subuh</td>
                                <td><?php echo $jadwal_shalat->jadwal->subuh; ?></td>
                            </tr>
                            <tr>
                                <td>dzuhur</td>
                                <td><?php echo $jadwal_shalat->jadwal->dzuhur; ?></td>
                            </tr>
                            <tr>
                                <td>ashar</td>
                                <td><?php echo $jadwal_shalat->jadwal->ashar; ?></td>
                            </tr>
                            <tr>
                                <td>maghrib</td>
                                <td><?php echo $jadwal_shalat->jadwal->maghrib; ?></td>
                            </tr>
                            <tr>
                                <td>isya</td>
                                <td><?php echo $jadwal_shalat->jadwal->isya; ?></td>
                            </tr>

                            <tr>

                        </tbody>
                    </table>
                </div>