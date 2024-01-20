<?php

require("config/config.default.php");
require("config/config.function.php");
require("config/functions.crud.php");
require("config/config.cbtx.php");

(isset($_SESSION['id_siswa'])) ? $id_siswa = $_SESSION['id_siswa'] : $id_siswa = 0;

if ($id_siswa == 0) {
    header("Location:$homeurl/mobile_login.php");
    exit();
}

($pg == 'testongoing') ? $sidebar = 'sidebar-collapse' : $sidebar = '';
($pg == 'testongoing') ? $disa = '' : $disa = 'offcanvas';
$siswa = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM siswa WHERE id_siswa='$id_siswa'"));
$idsesi = $siswa['sesi'];
$idpk = $siswa['idpk'];
$level = $siswa['level'];
$pk = fetch($koneksi, 'pk', array('id_pk' => $idpk));
$tglsekarang = time();

?>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <meta http-equiv='X-UA-Compatible' content='IE=edge' />
    <title><?= $setting['aplikasi'] ?></title>
    <meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' />
    <link rel='shortcut icon' href='<?= $homeurl ?>/dist/img/favicon.ico' />
    <!-- Favicons -->
    <link rel="apple-touch-icon" sizes="57x57" href="<?= $homeurl ?>/dist/img/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="<?= $homeurl ?>/dist/img/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="<?= $homeurl ?>/dist/img/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="<?= $homeurl ?>/dist/img/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="<?= $homeurl ?>/dist/img/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="<?= $homeurl ?>/dist/img/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="<?= $homeurl ?>/dist/img/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="<?= $homeurl ?>/dist/img/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="<?= $homeurl ?>/dist/img/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="<?= $homeurl ?>/dist/img/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<?= $homeurl ?>/dist/img/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="<?= $homeurl ?>/dist/img/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?= $homeurl ?>/dist/img/favicon-16x16.png">
    <link rel="manifest" href="<?= $homeurl ?>/dist/pwa/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="<?= $homeurl ?>/dist/img/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

    <link rel='stylesheet' href='<?= $homeurl ?>/dist/bootstrap/css/bootstrap.min.css' />
    <link rel='stylesheet' href='<?= $homeurl ?>/plugins/fontawesome/css/all.css' />
    <link rel='stylesheet' href='<?= $homeurl ?>/dist/css/AdminLTE.min.css' />
    <link rel='stylesheet' href='<?= $homeurl ?>/dist/css/skins/skin-green-light.min.css' />
    <link rel='stylesheet' href='<?= $homeurl ?>/plugins/iCheck/square/green.css' />
    <link rel='stylesheet' href='<?= $homeurl ?>/plugins/animate/animate.min.css'>
    <link rel='stylesheet' href='<?= $homeurl ?>/plugins/sweetalert2/dist/sweetalert2.min.css'>
    <!-- <link rel='stylesheet' href='<?= $homeurl ?>/plugins/slidemenu/jquery-slide-menu.css'> -->
    <link rel='stylesheet' href='<?= $homeurl ?>/plugins/toastr/toastr.min.css'>
    <link rel='stylesheet' href='<?= $homeurl ?>/plugins/summernote/summernote.min.css'>
    <link rel='stylesheet' href='<?= $homeurl ?>/plugins/radio/css/style.css'>

    <script src='<?= $homeurl ?>/plugins/jQuery/jquery-2.2.3.min.js'></script>
    <!-- <script src='<?= $homeurl ?>/plugins/tinymce/tinymce.min.js'></script> -->

    <style>
        @font-face {
            font-family: 'tulisan_keren';
            src: url('<?= $homeurl ?>/dist/fonts/poppins/Poppins-Light.ttf');
        }

        body {
            font-family: 'tulisan_keren';
            font-size: 12px;
            line-height: 1.42857143;
            color: #000;
        }

        .soal img {
            max-width: 100%;
            height: auto;
        }

        .main-header .sidebar-baru {
            float: left;
            color: white;
            padding: 15px 15px;
            cursor: pointer;
        }

        .callout {
            border-left: 0px;
        }

        .btn {

            border-radius: 20em;
        }

        .btn-primary {
            background-color: blue;
            border-color: #367fa9;
            font-weight: bolder;
        }

        .btn.btn-flat {
            border-radius: 20em;
        }

        .skin-red-light .sidebar-menu>li:hover>a,
        .skin-red-light .sidebar-menu>li.active>a {
            color: #fff;
            background: #e111e8;
        }

        .loader {
            position: fixed;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            z-index: 9999;
            background: url('dist/img/ajax-loader.gif') 50% 50% no-repeat rgb(249, 249, 249);
            opacity: .8;
        }
    </style>
</head>

<body class='hold-transition skin-green-light  fixed <?= $sidebar ?>'>
    <span id='livetime'></span>
    <div class='loader'></div>
    <div class='wrapper'>
        <header class='main-header'>
            <a href='javascript:window.location.reload(true)' class='logo' style='background-color:#f9fafc'>
                <span class='animated flipInX logo-mini'>
                    <img src="<?= $homeurl . "/" . $setting['logo'] ?>" height="30px">
                </span>
                <span class='animated flipInX logo-lg' style="margin:-3px;color:#000">
                    <img src="<?= $homeurl . '/' . $setting['logo'] ?>" height="40px">
                </span>
            </a>
            <nav class='navbar navbar-static-top' style='background-color:#2c94de;box-shadow: 0px 10px 10px 0px rgba(0,0,0,0.1)' role='navigation'>
                <a href='#' class='sidebar-baru' data-toggle='<?= $disa ?>' role='button'>
                    <i class="fa fa-bars fa-lg fa-fw"></i>
                </a>

                <div class='navbar-custom-menu'>
                    <ul class='nav navbar-nav'>
                        <li class="visible-xs"><a><?= $siswa['nama'] ?></a></li>
                        <li class='dropdown user user-menu'>
                            <a href='#' class='dropdown-toggle' data-toggle='dropdown'>
                                <?php
                                if ($siswa['foto'] <> '') :
                                    if (!file_exists("foto/fotosiswa/$siswa[foto]")) :
                                        echo "<img src='$homeurl/dist/img/avatar_default.png' class='user-image'   alt='+'>";
                                    else :
                                        echo "<img src='$homeurl/foto/fotosiswa/$siswa[foto]' class='user-image'   alt='+'>";
                                    endif;
                                else :
                                    echo "<img src='$homeurl/dist/img/avatar_default.png' class='user-image'   alt='+'>";
                                endif;
                                ?>
                                <span class='hidden-xs'><?= $siswa['nama'] ?> &nbsp; <i class='fa fa-caret-down'></i></span>
                            </a>
                            <ul class='dropdown-menu'>
                                <li class='user-header bg-red'>
                                    <?php
                                    if ($siswa['foto'] <> '') :
                                        if (!file_exists("foto/fotosiswa/$siswa[foto]")) :
                                            echo "<img src='$homeurl/dist/img/avatar_default.png' class='img-circle' alt='User Image'>";
                                        else :
                                            echo "<img src='$homeurl/foto/fotosiswa/$siswa[foto]' class='img-circle' alt='User Image'>";
                                        endif;
                                    else :
                                        echo "<img src='$homeurl/dist/img/avatar_default.png' class='img-circle' alt='User Image'>";
                                    endif;
                                    ?>
                                    <p>
                                        <?= $siswa['nama'] ?>
                                    </p>
                                </li>
                                <li class='user-footer'>
                                    <div class='pull-right'>
                                        <a href='<?= $homeurl ?>/logout.php' class='btn btn-sm btn-default btn-flat'><i class='fa fa-sign-out'></i> Keluar</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <aside class='main-sidebar'>
            <section class='sidebar'>
                <hr style="margin:0px">
                <div class='user-panel'>
                    <div class='pull-left image'>
                        <?php
                        if ($siswa['foto'] <> '') :
                            if (!file_exists("foto/fotosiswa/$siswa[foto]")) :
                                echo "<img src='$homeurl/dist/img/avatar_default.png' class='img'  style='max-width:60px' alt='+'>";
                            else :
                                echo "<img src='$homeurl/foto/fotosiswa/$siswa[foto]' class='img'  style='max-width:60px' alt='+'>";
                            endif;
                        else :
                            echo "<img src='$homeurl/dist/img/avatar_default.png' class='img'  style='max-width:60px' alt='+'>";
                        endif;
                        ?>
                    </div>
                    <div class='pull-left info' style='left:65px'>
                        <?php
                        if (strlen($siswa['nama']) > 15) {
                            $nama = substr($siswa['nama'], 0, 15) . "...";
                        } else {
                            $nama = $siswa['nama'];
                        }
                        ?>
                        <p title="<?= $siswa['nama'] ?>"><?= $nama ?></p>
                        <p><a href='#'><i class='fa fa-circle text-green'></i> online</a>
                        <p><span class="badge bg-red"><?= $siswa['idpk'] ?></span> <span class="badge bg-green"><?= $siswa['id_kelas'] ?></span></p>
                    </div>
                </div><br>
                <hr style="margin:0px">
                <ul class='sidebar-menu tree' data-widget='tree'>
                    <li class='header'>Main Menu Peserta Ujian</li>
                    <li><a href='<?= $homeurl ?>'><i class='fas fa-tachometer-alt fa-fw  '></i> <span> Dashboard</span></a></li>
                    <li><a href='<?= $homeurl ?>/jadwal'><i class='fas fa-calendar fa-fw  '></i> <span> Jadwal Ujian</span></a></li>
                    <li><a href='<?= $homeurl ?>/materi'><i class='fas fa-calendar fa-fw  '></i> <span> Materi</span></a></li>
                    <li><a href='<?= $homeurl ?>/jadwal_sholat.php'><i class='fas fa-calendar fa-fw'></i> <span>Jadwal Sholat</span></a></li>

                </ul><!-- /.sidebar-menu -->
            </section>
        </aside>