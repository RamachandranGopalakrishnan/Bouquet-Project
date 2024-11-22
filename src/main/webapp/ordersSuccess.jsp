<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Success</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(to bottom right, #a1ffce, #faffd1);
            font-family: 'Poppins', sans-serif;
            overflow-x: hidden;
        }
        .container {
            position: relative;
            z-index: 10;
        }
        .success-card {
            background: white;
            border-radius: 30px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
            overflow: hidden;
            animation: fadeIn 1.5s ease;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.9);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }
        .success-icon {
            font-size: 120px;
            color: #28a745;
            animation: pulse 2s infinite;
        }
        @keyframes pulse {
            0%, 100% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.2);
            }
        }
        .floating-flowers {
            position: absolute;
            width: 150px;
            animation: float 6s infinite ease-in-out;
        }
        .flower-1 {
            top: 10%;
            left: 5%;
            animation-delay: 0s;
        }
        .flower-2 {
            top: 70%;
            right: 5%;
            animation-delay: 1.5s;
        }
        @keyframes float {
            0%, 100% {
                transform: translateY(0px);
            }
            50% {
                transform: translateY(-20px);
            }
        }
        .btn-success-custom {
            background: linear-gradient(45deg, #34e89e, #0f3443);
            color: white;
            border: none;
            font-size: 18px;
            padding: 10px 30px;
            border-radius: 50px;
            transition: all 0.4s ease;
        }
        .btn-success-custom:hover {
            background: linear-gradient(45deg, #0f3443, #34e89e);
            transform: translateY(-3px);
        }
    </style>
</head>
<body>
    <!-- Floating Flowers for Visual Appeal -->
    <img src="https://imgcdn.floweraura.com/rose-bouquet_2.jpg" alt="Flower 1" class="floating-flowers flower-1">
    <img src="https://imgcdn.floweraura.com/anniversary-flower_2.jpg" alt="Flower 2" class="floating-flowers flower-2">

    <div class="container text-center d-flex align-items-center justify-content-center vh-100">
        <div class="success-card p-5 text-center">
            <div>
                <i class="success-icon bi bi-check-circle-fill"></i>
            </div>
            <h1 class="display-4 text-success fw-bold">Congratulations!</h1>
            <p class="text-muted fs-5 mt-3">Your order has been placed successfully. We'll deliver it to you with love and care!</p>
            <div class="mt-4">
                <a href="home.jsp" class="btn btn-success-custom">Back to Home</a>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css"></script>
</body>
</html>

