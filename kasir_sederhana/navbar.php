<!DOCTYPE html>
<html>
<head>
    <title>Sistem Informasi Kasir</title>

    <style>

    body{
        margin:0;
        font-family:Arial;
        background:#f4f4f4;
    }

    .navbar{
        background:#0d6efd;
        padding:15px;
    }

    .navbar a{
        color:white;
        text-decoration:none;
        margin-right:20px;
        font-weight:bold;
    }

    .container{
        width:90%;
        margin:auto;
        margin-top:20px;
    }

    table{
        width:100%;
        border-collapse:collapse;
        background:white;
    }

    table th,table td{
        border:1px solid #ddd;
        padding:10px;
    }

    table th{
        background:#0d6efd;
        color:white;
    }

    .btn{
        padding:8px 12px;
        text-decoration:none;
        color:white;
        border-radius:5px;
    }

    .tambah{
        background:green;
    }

    .edit{
        background:orange;
    }

    .hapus{
        background:red;
    }

    input,select{
        width:100%;
        padding:10px;
        margin-top:5px;
        margin-bottom:15px;
    }

    </style>

</head>

<body>

<div class="navbar">

<a href="index.php">Dashboard</a>

<a href="barang.php">Data Barang</a>

<a href="laporan.php">Laporan</a>

</div>

<div class="container">