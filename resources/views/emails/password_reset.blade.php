<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .logo {
            text-align: center;
            margin-bottom: 20px;
        }
        .logo img {
            width: 120px;
        }
        .message {
            padding: 20px;
            border-radius: 8px;
            background-color: #f0f0f0;
            text-align: center;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #007bff;
            color: #fff !important;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWpi3Ta6z2nsp0z0JbzozBH83y-LJjwIqm1xipJl8V5_IJMcSlbOjmLWX88Q&s" alt="Logo">
        </div>
        <div class="message">
            <p>Hello,</p>
            <p>You are receiving this email because you requested a password reset for your account.</p>
            <p>Please click the button below to reset your password:</p>
            <p><a class="btn" href="{{ $link }}">Reset password</a></p>
            <p>If you did not request a password change, please ignore this email.</p>
        </div>
    </div>
</body>
</html>