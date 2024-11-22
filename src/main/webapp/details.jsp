<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bouquet Details</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container my-5">
    <div class="card shadow-lg border-0">
        <div class="row g-0">
            <div class="col-md-6">
                <img src="<%= request.getAttribute("image") %>" class="img-fluid rounded-start" alt="<%= request.getAttribute("name") %>">
            </div>
            <div class="col-md-6">
                <div class="card-body">
                    <h5 class="card-title display-6 text-primary"><%= request.getAttribute("name") %></h5>
                    <p class="card-text fs-5 text-muted">Cost: ₹<%= request.getAttribute("cost") %></p>
                    <form action="Orders" method="POST" class="mt-4">
                       <input type="hidden" name="bouquetId" value="<%= request.getAttribute("bouquetId") %>">
                       <input type="hidden" name="cost" value="<%= request.getAttribute("cost") %>"> 
                       <div class="mb-3">
                       <label for="quantity" class="form-label fw-bold">Select Quantity:</label>
                       <input type="number" name="quantity" id="quantity" class="form-control" min="1" placeholder="Enter quantity" required>
                        </div>
                      <button type="submit" class="btn btn-success btn-lg w-100">Place Order</button>
              </form>
                    <a href="home.jsp" class="btn btn-link text-decoration-none mt-3">Back to Home</a>
                </div>
            </div>
        </div>
    </div>
</div>
    
</body>
</html>
