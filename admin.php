<?php
session_start();
if($_SESSION['status']!="login"){
    header("location:index.php?pesan=belum_login");
}
if ($_SESSION['admin'] != "1") {
    header("location:action/logout.php");
}

include 'inc/header.php';
?>

<div class="container">
    <h1 class="ti-2020">ADMIN MENU</h1>
    
    <div class="row mt-5">
        <table class="table table-striped table-dark">
            <thead>
                <tr>
                <th scope="col">#</th>
                <th scope="col">Nama</th>
                <th scope="col">NIM</th>
                <th scope="col">Email</th>
                <th scope="col">Status</th>
                <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
<?php
$get_data = mysqli_query($db, "SELECT * FROM users");

$i = 1;
while ($data = mysqli_fetch_assoc($get_data)) {
?>
                <tr>
                    <th scope="row"><?= $i ?></th>
                    <td><?= $data['nama'] ?></td>
                    <td><?= $data['nim'] ?></td>
                    <td><?= $data['email'] ?></td>
                    <td><?php 
                        if ($data['memilih'] != null) {
                            echo '<span class="badge badge-success">Sudah Memilih</span>';
                        } else {
                            echo '<span class="badge badge-danger">Belum Memilih</span>';
                        }
                    ?></td>
                    <td><a href="kirim_email.php?id=<?= $data['id'] ?>" onclick="return confirm('Kirim Email untuk username dan password?')" class="btn btn-sm btn-success">Kirim Akun</a></td>
                </tr>
<?php
$i++;
}
?>
            </tbody>
        </table>
    </div>
    <footer class="font-small blue footer-cr">
            <div class="text-center text-white py-3 mt-5">Crafted with ☕ and ❤️️️ by PIT TI 2020</div>
        </footer>

<?php

include 'inc/footer.php';

?>