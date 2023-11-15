<?php
require 'config.php';

// cek apakah tombol submit sudah ditekan atau belum
if( isset($_POST["submit"]) ) {
	
	// cek apakah data berhasil di tambahkan atau tidak
	if( tambah($_POST) > 0 ) {
		echo "
			<script>
				alert('data berhasil ditambahkan!');
				document.location.href = 'admin.php';
			</script>
		";
	} else {
		echo "
			<script>
				alert('data gagal ditambahkan!');
				document.location.href = 'admin.php';
			</script>
		";
	}


}
?>

<div class="center">
	<h1>Tambah data buku</h1>
	<hr>
	<form class="masuk" action="" method="post" enctype="multipart/form-data">
		<ul><li>
				<label for="judul">judul : </label>
				<input type="text" name="judul" id="judul">
				</li>
				<li>
      			<label for="halaman_buku">halaman_buku : </label>
				<input type="text" name="halaman_buku" id="halaman_buku">
				</li>
				<li>
				<label for="deskripsi">deskripsi :</label>
				<input type="text" name="deskripsi" id="deskripsi">
				</li>
				<li>
				<label for="category">category :</label>
				<input type="text" name="category" id="category">
				</li>
				<li>
				<label for="gambar">Gambar :</label>
				<input type="file" name="gambar" id="gambar">
				</li>
				<li>
				<button type="submit" name="submit">Tambah Data!</button>
	 </ul>
	</form>
</div>