<?php
session_start();
if($_SESSION['status']!="login"){
    header("location:index.php?pesan=belum_login");
}

include 'inc/header.php';
?>

<div class="container">
    <h1 class="ti-2020">AYO KENALI CALON KETUA KAMU!</h1>
    <?php 
    if ($_SESSION['admin'] == "1") {
        echo '<div class="d-flex justify-content-center">
        <a href="admin.php" class="btn btn-primary">Admin Menu</a>
    </div>';
    }
    ?>
    
    <div class="row">
        <div class="col-md-12 after-login-grup">
            <div class="row">
                    <a href="visimisi.php" class="col-md-6 btn-atas d-flex justify-content-center my-3">
                        <div class="after-login-pilihan">
                            <div class="text-after-login">
                                VISI DAN MISI
                            </div>
                            <svg width="225" height="226" viewBox="0 0 225 226" fill="none" xmlns="http://www.w3.org/2000/svg" class="svg-pilihan1">
                            <g filter="url(#filter0_d)">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M118.821 47.0216L150.253 39.3065C158.524 37.2762 166.953 42.3826 168.983 50.654L194.824 155.927C196.854 164.198 191.747 172.627 183.476 174.657L78.2034 200.497C77.1507 200.756 76.1547 200.92 75.1402 201.01C72.06 201.128 69.059 200.27 66.5304 198.738C64.8262 197.642 63.3107 196.34 62.1158 194.72C60.9209 193.1 59.9714 191.18 59.473 189.15L33.6328 83.8771C33.116 81.7716 33.0873 79.7058 33.4147 77.7918C33.7237 75.8025 34.4455 73.8714 35.4668 72.1857C36.9987 69.657 39.2614 67.5071 42.0463 66.1858C42.9685 65.7202 43.9276 65.4051 44.9803 65.1467L76.4117 57.4315C77.4288 47.9337 84.1498 39.5871 93.9251 37.1876C103.7 34.7882 113.522 39.0742 118.821 47.0216ZM71.0936 106.572L67.4021 91.5331L142.597 73.0758L146.288 88.1148L71.0936 106.572ZM149.98 103.154L74.785 121.611L78.4765 136.65L153.671 118.193L149.98 103.154ZM134.804 138.769L82.168 151.689L85.8594 166.728L138.496 153.808L134.804 138.769ZM97.1552 50.3467C100.238 49.5899 103.422 51.519 104.179 54.602C104.936 57.685 103.007 60.8692 99.9238 61.6259C96.8408 62.3827 93.6566 60.4536 92.8999 57.3706C92.1431 54.2876 94.0722 51.1034 97.1552 50.3467ZM74.5119 185.458L179.785 159.618L153.944 54.3454L48.6717 80.1856L74.5119 185.458Z" fill="url(#paint0_linear)"/>
                            </g>
                            <defs>
                            <filter id="filter0_d" x="11.2003" y="14.5231" width="208.069" height="210.498" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                            <feFlood flood-opacity="0" result="BackgroundImageFix"/>
                            <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/>
                            <feOffset dx="1" dy="1"/>
                            <feGaussianBlur stdDeviation="11.5"/>
                            <feColorMatrix type="matrix" values="0 0 0 0 0.682353 0 0 0 0 0.2 0 0 0 0 0.839216 0 0 0 0.25 0"/>
                            <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/>
                            <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/>
                            </filter>
                            <linearGradient id="paint0_linear" x1="93.9251" y1="37.1876" x2="130.84" y2="187.577" gradientUnits="userSpaceOnUse">
                            <stop stop-color="#BF1DD1"/>
                            <stop offset="1" stop-color="#3EC0F3"/>
                            </linearGradient>
                            </defs>
                            </svg>

                            
                        </div>
                    </a>
                    <a href="voting.php" class="col-md-6 btn-bawah d-flex justify-content-center my-3">
                        <div class="after-login-pilihan">
                            <div class="text-after-login">
                                PAKAI HAK PILIHMU
                            </div>
                            <svg width="198" height="202" viewBox="0 0 198 202" fill="none" xmlns="http://www.w3.org/2000/svg" class="svg-pilihan2">
                            <g filter="url(#filter0_d)">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M143.156 62.175L123.11 82.2209L83.0188 42.1292L103.065 22.0834L143.156 62.175ZM72.9604 52.1167L52.9146 72.1625L153.073 172.321L173.119 152.275L72.9604 52.1167ZM107.881 163.75H22.8813V177.917H107.881V163.75ZM83.0188 122.242L42.9272 82.1499L22.8813 102.196L62.973 142.287L83.0188 122.242Z" fill="url(#paint0_linear)"/>
                            </g>
                            <defs>
                            <filter id="filter0_d" x="0.881348" y="0.083374" width="196.237" height="201.833" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                            <feFlood flood-opacity="0" result="BackgroundImageFix"/>
                            <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/>
                            <feOffset dx="1" dy="1"/>
                            <feGaussianBlur stdDeviation="11.5"/>
                            <feColorMatrix type="matrix" values="0 0 0 0 0.713726 0 0 0 0 0.160784 0 0 0 0 0.831373 0 0 0 0.25 0"/>
                            <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/>
                            <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/>
                            </filter>
                            <linearGradient id="paint0_linear" x1="98.0001" y1="22.0834" x2="98.0001" y2="177.917" gradientUnits="userSpaceOnUse">
                            <stop stop-color="#BF1DD1"/>
                            <stop offset="1" stop-color="#3EC0F3"/>
                            </linearGradient>
                            </defs>
                            </svg>
                        </div>
                    </a>
            </div>
        </div>
    </div>
    <div class="text-center">
        <a href="action/logout.php" class="btn btn-kembali-voting">Logout</a>
        <a href="setting.php" class="btn btn-kembali-voting ml-3">Setting</a>
    </div>
    <footer class="font-small blue footer-cr">
            <div class="text-center py-3 mt-5">Crafted with ☕ and ❤️️️ by PIT TI 2020</div>
        </footer>

<?php

include 'inc/footer.php';

?>