<?php
require("config/config.default.php");
require("config/config.cbtx.php");

if (isset($_SESSION['id_pengawas'])) {
    echo "<script>window.location = '" . $homeurl . "/admin/index.php'; </script>";
    exit();
}

if (isset($_SESSION['id_siswa'])) {
    echo "<script>window.location = '" . $homeurl . "/index.php/jadwal'; </script>";
    exit();
}

if (isset($_POST['username']) && isset($_POST['password'])) {
    // Masuk cek user sebagai siswa atau admin
    $query = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM siswa WHERE username='" . addslashes($_POST['username']) . "'"));

    if (isset($query) && count($query) > 0) {

        if ($query['password'] == $_POST['password']) {

            $_SESSION['id_siswa'] = $query['id_siswa'];
            $_SESSION['level'] = 'siswa';
            $_SESSION['nama'] = $query['nama'];
            $_SESSION['id_kelas'] = $query['id_kelas'];

            if ($_POST['mobile'] == 'android' || $_POST['mobile'] == 'ios') {
                $_SESSION['is_mobile'] = $_POST['mobile'];
            }

            echo "<script>window.location = '" . $homeurl . "/jadwal'; </script>";
            exit();
        } else {

            echo "<script>alert('Username atau password salah'); </script>";
        }
    } else {

        $query = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM pengawas WHERE username='" . addslashes($_POST['username']) . "'"));

        $password = ($query['level'] != 'guru') ? password_verify($_POST['password'], $query['password']) : $_POST['password'];
        if ($query['password'] == $password) {

            $_SESSION['id_pengawas'] = $query['id_pengawas'];
            $_SESSION['level'] = $query['level'];
            $_SESSION['nama'] = $query['nama'];

            if ($_POST['mobile'] == 'android' || $_POST['mobile'] == 'ios') {
                $_SESSION['is_mobile'] = $_POST['mobile'];
            }

            echo "<script>window.location = '" . $homeurl . "/admin'; </script>";
            exit();
        } else {

            echo "<script>alert('Username atau password salah'); </script>";
        }
    }
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="E-Learning SMK SPM NASIONAL Purwokerto">
    <meta name="author" content="e-learning, smk, spm, sd, smp, purwokerto, lms">

    <meta name="docsearch:language" content="en">
    <meta name="docsearch:version" content="4.5">

    <title>CBT - Ekstra IT</title>

    <!-- Bootstrap core CSS -->
    <style class="anchorjs"></style>
    <link href="<?= $homeurl ?>/dist/bootstrap-4.5.2/css/bootstrap.min.css" rel="stylesheet">
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

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
    <link href="<?= $homeurl ?>/dist/css/signin.css" rel="stylesheet">

</head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" sizes="180x180" href="https://pusmendik.kemdikbud.go.id/an/fav/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="https://pusmendik.kemdikbud.go.id/an/fav/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="https://pusmendik.kemdikbud.go.id/an/fav/favicon-16x16.png">
<link rel="manifest" href="https://pusmendik.kemdikbud.go.id/an/fav/site.webmanifest">
<link rel="mask-icon" href="https://pusmendik.kemdikbud.go.id/an/fav/safari-pinned-tab.svg">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() { //$("#form1").validate
        ({
            errorLabelContainer: "#myerror",
            wrapper: "li",
            rules: {
                UserName: "required", // simple rule, converted to {required:true}
                Password: "required", // simple rule, converted to {required:true}
                email: // compound rule
                {
                    required: true,
                    email: true
                },
                url: {
                    required: true,
                    url: true
                },
                comment: {
                    required: true
                }
            },
            messages: {
                UserName: "Username Harus diisi, masukkan Username dengan benar",
                Password: "Password Harus diisi, masukkan Password dengan benar",
                comment: "Please enter a comment.",
                url: "Please Enter Correct URL"
            }
        });
    });
</script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-120206082-3"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());

    gtag('config', 'UA-120206082-3');
</script>

</head>
<div id="loading-gif" >
        <img src="loader2.gif" alt="Loading..." width="100" height="100"  style="  
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%); 
            z-index: 20;
            ">
    </div>
<body>
    <div class="container-fluid text-white" style="background:#326698;background-size: contain;background-image: url('https://pusmendik.kemdikbud.go.id/an/images/bg-top.png');background-repeat: no-repeat;background-position: left; height:150px;position:fixed;top:0px;left:0px;right:0px">
        <div class="row">
            <div class="col pl-5 pt-1">
                <table>
                    <tr>
                        <td>
                            <img style="margin:5px;height:70px" src="foto/tut.png">
                        </td>
                        <td>
                            <div><b>SMAN 1 PORONG</b></div>
                            <div><small>CBT SMANIP<small></div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <div class="wrapper fadeInDown" style="margin-top:100px;">
        <div id="formContent">
            <div class="fadeIn text-left p-5">
                <div><b>Selamat Datang</b></div>
                <div><small>Silakan login dengan menggunakan username dan password yang anda miliki</small></div>
                <form class="text-center" action="<?= $homeurl ?>/mobile_login.php" method="POST" name="login" id="formLogin">
                    <div class="input-group mt-4 mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" style="border:0px;background:#fff"><i class="fa fa-user-circle"></i></span>
                        </div>
                        <input type="text" name="username" id="inputUsername" class="form-control mb-2" placeholder="Username" required="" autofocus="">
                        <div class="input-group mt-3 mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" style="border:0px;background:#fff"><i class="fa fa-lock"></i></span>
                            </div>
                            <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required="">
                            <input type="hidden" name="mobile" value="<?= $_GET['mobile'] ?>">
                            <span class="input-group-text" style="border:0px;background:#fff;padding-right:0px;padding-left:0px" onCLick="showPassword()" id="btn-eye"></span>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-round form-control" style="border-radius:20px" id="login-button" style="cursor: pointer;">Login</button>
                </form>
            </div>

        </div>
    </div>

    <div style="position:absolute;top:0px;left:0px;right:0px;bottom:0px;background:#fff;opacity:0.5;z-index:99999;display:none" id="loader">
        <img class="loader" src="loader2.gif">
    </div>
    <footer>
        <!-- Teks footer Anda di sini -->
        &copy; 2023 Ekstra IT SMANIP
    </footer>
    
    <script>
        // JavaScript untuk menampilkan GIF animasi saat tombol ditekan
        document.getElementById("login-button").addEventListener("click", function () {
            // Sembunyikan tombol login
            document.getElementById("login-button").style.display = "none";
            
            // Tampilkan GIF animasi
            document.getElementById("loading-gif").style.display = "block";
            
            // Simulasikan proses login (Anda dapat menggantinya dengan logika login sesungguhnya)
            setTimeout(function () {
                // Sembunyikan GIF animasi setelah proses login selesai
                document.getElementById("loading-gif").style.display = "none";
                
                // Tampilkan kembali tombol login
                document.getElementById("login-button").style.display = "block";
            }, 3000); // Simulasi login selama 3 detik
        });
    </script>


    <style>
        /* STRUCTURE */
        #loading-gif {
            display: none;
        }
    footer {
    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
    padding: 50px;
    text-align: center;
    font-size: 80%;
    }

        .loader {
            margin: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }

        .wrapper {
            display: flex;
            align-items: center;
            flex-direction: column;
            justify-content: center;
            width: 100%;
            min-height: 100%;
            padding: 20px;
            margin-top: -80px;
        }

        #formContent {
            -webkit-border-radius: 10px 10px 10px 10px;
            border-radius: 10px 10px 10px 10px;
            background: #fff;
            padding: 30px;
            width: 90%;
            max-width: 450px;
            position: relative;
            padding: 0px;
            -webkit-box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
            box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
            text-align: center;
        }


        .footer {
            position: relative;
            width: 100%;
            background: #3586ff;
            min-height: 100px;
            padding: 20px 50px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .social-icon,
        .menu {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 10px 0;
            flex-wrap: wrap;
        }

        .social-icon__item,
        .menu__item {
            list-style: none;
        }

        .social-icon__link {
            font-size: 2rem;
            color: #fff;
            margin: 0 10px;
            display: inline-block;
            transition: 0.5s;
        }

        .social-icon__link:hover {
            transform: translateY(-10px);
        }

        .menu__link {
            font-size: 1.2rem;
            color: #fff;
            margin: 0 10px;
            display: inline-block;
            transition: 0.5s;
            text-decoration: none;
            opacity: 0.75;
            font-weight: 300;
        }

        .menu__link:hover {
            opacity: 1;
        }

        .footer p {
            color: #fff;
            margin: 15px 0 10px 0;
            font-size: 1rem;
            font-weight: 300;
        }

        .wave {
            position: absolute;
            top: -100px;
            left: 0;
            width: 100%;
            height: 100px;
            background: url("https://i.ibb.co/wQZVxxk/wave.png");
            background-size: 1000px 100px;
        }

        .wave#wave1 {
            z-index: 1000;
            opacity: 1;
            bottom: 0;
            animation: animateWaves 4s linear infinite;
        }

        .wave#wave2 {
            z-index: 999;
            opacity: 0.5;
            bottom: 10px;
            animation: animate 4s linear infinite !important;
        }

        .wave#wave3 {
            z-index: 1000;
            opacity: 0.2;
            bottom: 15px;
            animation: animateWaves 3s linear infinite;
        }

        .wave#wave4 {
            z-index: 999;
            opacity: 0.7;
            bottom: 20px;
            animation: animate 3s linear infinite;
        }

        @keyframes animateWaves {
            0% {
                background-position-x: 1000px;
            }

            100% {
                background-positon-x: 0px;
            }
        }

        @keyframes animate {
            0% {
                background-position-x: -1000px;
            }

            100% {
                background-positon-x: 0px;
            }
        }


        /* TABS */

        h2.inactive {
            color: #cccccc;
        }

        h2.active {
            color: #0d0d0d;
            border-bottom: 2px solid #5fbae9;
        }

        input[type=text] {
            border: none;
            color: #0d0d0d;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 0px;
            border-bottom: 2px solid #eee;
        }

        input[type=password] {
            border: none;
            color: #0d0d0d;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 0px;
            border-bottom: 2px solid #eee;
        }

        /* ANIMATIONS */

        /* Simple CSS3 Fade-in-down Animation */
        .fadeInDown {
            -webkit-animation-name: fadeInDown;
            animation-name: fadeInDown;
            -webkit-animation-duration: 1s;
            animation-duration: 1s;
            -webkit-animation-fill-mode: both;
            animation-fill-mode: both;
        }

        @-webkit-keyframes fadeInDown {
            0% {
                opacity: 0;
                -webkit-transform: translate3d(0, -100%, 0);
                transform: translate3d(0, -100%, 0);
            }

            100% {
                opacity: 1;
                -webkit-transform: none;
                transform: none;
            }
        }

        @keyframes fadeInDown {
            0% {
                opacity: 0;
                -webkit-transform: translate3d(0, -100%, 0);
                transform: translate3d(0, -100%, 0);
            }

            100% {
                opacity: 1;
                -webkit-transform: none;
                transform: none;
            }
        }

        /* Simple CSS3 Fade-in Animation */
        @-webkit-keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        @-moz-keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .fadeIn {
            opacity: 0;
            -webkit-animation: fadeIn ease-in 1;
            -moz-animation: fadeIn ease-in 1;
            animation: fadeIn ease-in 1;

            -webkit-animation-fill-mode: forwards;
            -moz-animation-fill-mode: forwards;
            animation-fill-mode: forwards;

            -webkit-animation-duration: 1s;
            -moz-animation-duration: 1s;
            animation-duration: 1s;
        }

        .fadeIn.first {
            -webkit-animation-delay: 0.4s;
            -moz-animation-delay: 0.4s;
            animation-delay: 0.4s;
        }

        .fadeIn.second {
            -webkit-animation-delay: 0.6s;
            -moz-animation-delay: 0.6s;
            animation-delay: 0.6s;
        }

        .fadeIn.third {
            -webkit-animation-delay: 0.8s;
            -moz-animation-delay: 0.8s;
            animation-delay: 0.8s;
        }

        .fadeIn.fourth {
            -webkit-animation-delay: 1s;
            -moz-animation-delay: 1s;
            animation-delay: 1s;
        }

        /* Simple CSS3 Fade-in Animation */
        .underlineHover:after {
            display: block;
            left: 0;
            bottom: -10px;
            width: 0;
            height: 2px;
            background-color: #56baed;
            content: "";
            transition: width 0.2s;
        }

        .underlineHover:hover {
            color: #0d0d0d;
        }

        .underlineHover:hover:after {
            width: 100%;
        }
    </style>


    <script type="text/javascript" src="https://pusmendik.kemdikbud.go.id/an/_assets/js/jquery/jquery.min.js"></script>
    <script src="<?= $homeurl ?>/dist/vendor/particles.js-master/particles.min.js"></script>
    <script>
        particlesJS('particles', {
            "particles": {
                "number": {
                    "value": 80,
                    "density": {
                        "enable": true,
                        "value_area": 1499
                    }
                },
                "color": {
                    "value": "#797fed"
                },
                "shape": {
                    "type": "circle",
                    "stroke": {
                        "width": 0,
                        "color": "#000000"
                    },
                    "polygon": {
                        "nb_sides": 5
                    },
                    "image": {
                        "src": "img/github.svg",
                        "width": 100,
                        "height": 100
                    }
                },
                "opacity": {
                    "value": 0.5,
                    "random": false,
                    "anim": {
                        "enable": false,
                        "speed": 1,
                        "opacity_min": 0.1,
                        "sync": false
                    }
                },
                "size": {
                    "value": 10,
                    "random": true,
                    "anim": {
                        "enable": false,
                        "speed": 80,
                        "size_min": 0.1,
                        "sync": false
                    }
                },
                "line_linked": {
                    "enable": true,
                    "distance": 150,
                    "color": "#797fed",
                    "opacity": 0.4,
                    "width": 1
                },
                "move": {
                    "enable": true,
                    "speed": 6,
                    "direction": "none",
                    "random": false,
                    "straight": false,
                    "out_mode": "out",
                    "bounce": false,
                    "attract": {
                        "enable": false,
                        "rotateX": 600,
                        "rotateY": 1200
                    }
                }
            },
            "interactivity": {
                "detect_on": "canvas",
                "events": {
                    "onhover": {
                        "enable": true,
                        "mode": "repulse"
                    },
                    "onclick": {
                        "enable": true,
                        "mode": "push"
                    },
                    "resize": true
                },
                "modes": {
                    "grab": {
                        "distance": 800,
                        "line_linked": {
                            "opacity": 1
                        }
                    },
                    "bubble": {
                        "distance": 800,
                        "size": 80,
                        "duration": 2,
                        "opacity": 0.8,
                        "speed": 3
                    },
                    "repulse": {
                        "distance": 150,
                        "duration": 0.4
                    },
                    "push": {
                        "particles_nb": 4
                    },
                    "remove": {
                        "particles_nb": 2
                    }
                }
            },
            "retina_detect": true
        });
    </script>
</body>


</html>