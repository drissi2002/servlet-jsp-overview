<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>User Login Form</title>
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

        form {
            text-align: center;
        }

        table {
            width: 100%;
            margin-top: 20px;
        }

        td {
            padding: 10px;
            text-align: left;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            box-sizing: border-box;
            border-radius: 6px; /* Rounded corners */
            border: none; /* Remove border */
            outline: none; /* Remove outline */
            background-color: #f8f8f8; /* Grey background color */
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            padding: 15px 20px; /* Larger padding for a bigger button */
            border: none;
            border-radius: 10px; /* Rounded corners */
            cursor: pointer;
            font-family: 'Montserrat', sans-serif; /* Montserrat font */
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Employee Login Form</h1>
    <form action="<%=request.getContextPath()%>/login" method="post">
        <table>
            <tr>
                <td>Username : </td>
                <td><input type="text" name="username" /></td>
            </tr>
            <tr>
                <td>Password : </td>
                <td><input type="password" name="password" /></td>
            </tr>
        </table>
        <input type="submit" value="Submit" />
    </form>
</div>
</body>
</html>