<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.example.servletjsp.dao.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Success</title>
    <!-- Add the Montserrat font link -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 35%;
            margin: 35px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            font-weight:normal;
        }

        .success-icon {
            display: block;
            margin: 20px auto;
            width: 64px; /* Adjust the size as needed */
            height: 64px; /* Adjust the size as needed */
            fill: currentColor;
            overflow: hidden;
        }
    </style>
</head>
<body>
<div class="container">
    <div align="center" class="success-icon">
        <svg class="svg-icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg">
            <path d="M512 0C230.4 0 0 230.4 0 512s230.4 512 512 512 512-230.4 512-512S793.6 0 512 0z m0 947.2c-240.64 0-435.2-194.56-435.2-435.2S271.36 76.8 512 76.8s435.2 194.56 435.2 435.2-194.56 435.2-435.2 435.2z m266.24-578.56c0 10.24-5.12 20.48-10.24 25.6l-286.72 286.72c-5.12 5.12-15.36 10.24-25.6 10.24s-20.48-5.12-25.6-10.24l-163.84-163.84c-15.36-5.12-20.48-15.36-20.48-25.6 0-20.48 15.36-40.96 40.96-40.96 10.24 5.12 20.48 10.24 25.6 15.36l138.24 138.24 261.12-261.12c5.12-5.12 15.36-10.24 25.6-10.24 20.48-5.12 40.96 15.36 40.96 35.84z" fill="#6BC839" />
        </svg>
    </div>
    <h1>You have logged in successfully ! </h1>
</div>
</body>
</html>