<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String[][] bouquets = {
        {"1", "Rose Bouquet", "599", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt9prodlp/products/p-the-soul-of-rose-bouquet-110721-m.jpg"},
        {"2", "Lily Bouquet", "499", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-pink-lily-love-94828-m.jpg"},
        {"3", "Tulip Bouquet", "549", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-floral-enchantment-bouquet-132891-m.jpg"},
        {"4", "Daisy Bouquet", "399", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-oriental-delight-bouquet-grand-302340-m.jpg"},
        {"5", "Orchid Bouquet", "649", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-ballet-dreams-302363-m.jpg"},
        {"6", "Carnation Bouquet", "429", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-sweetheart-charm-387095-m.jpg"},
        {"7", "Sunflower Bouquet", "359", "https://cdn.igp.com/f_auto,q_auto,t_pnopt5prodlp/products/p-serene-sunshine-birthday-arrangement-285421-m.jpg"},
        {"8", "Peony Bouquet", "799", "https://cdn.igp.com/f_auto,q_auto,t_pnopt9prodlp/products/p-bouquet-of-pink-carnations-in-vase-25-stems--121695-m.jpg"},
        {"9", "Marigold Bouquet", "299", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-mahogany-sunset-385442-m.jpg"},
        {"10", "Jasmine Bouquet", "449", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-festive-royale-bhaidooj-hamper-385454-m.jpg"},
        {"11", "Hydrangea Bouquet", "679", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-blue-beauty-flower-box-139964-m.jpg"},
        {"12", "Chrysanthemum Bouquet", "499", "https://cdn.igp.com/f_auto,q_auto,t_pnopt9prodlp/products/p-oriental-delight-bouquet-223313-m.jpg"},
        {"13", "Daffodil Bouquet", "459", "https://cdn.igp.com/f_auto,q_auto,t_pnopt9prodlp/products/p-radiant-blooms-196263-m.jpg"},
        {"14", "Lavender Bouquet", "489", "https://cdn.igp.com/f_auto,q_auto,t_pnopt5prodlp/products/p-enchanting-lavender-bliss-bouquet-310150-m.jpg"},
        {"15", "Poppy Bouquet", "399", "https://cdn.igp.com/f_auto,q_auto,t_pnopt5prodlp/products/p-orchids-bouquet-with-chocolate-cake-203613-m.jpg"},
        {"16", "Bluebell Bouquet", "549", "https://cdn.igp.com/f_auto,q_auto,t_pnopt5prodlp/products/p-purple-majesty-302364-m.jpg"},
        {"17", "Begonia Bouquet", "519", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-sweetheart-charm-387095-m.jpg"},
        {"18", "Anemone Bouquet", "579", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-ballet-dreams-302363-m.jpg"},
        {"19", "Freesia Bouquet", "439", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-sweet-sentiments-240889-m.jpg"},
        {"20", "Magnolia Bouquet", "699", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-rhythm-of-santini-284652-m.jpg"},
        {"21", "Amaryllis Bouquet", "629", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-lemonade-wishes-302365-m.jpg"},
        {"22", "Aster Bouquet", "389", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-dream-a-little-98548-m.jpg"},
        {"23", "Gardenia Bouquet", "749", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-vanilla-sunshine-greetings-284650-m.jpg"},
        {"24", "Camellia Bouquet", "469", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-lavender-daydream-385440-m.jpg"},
        {"25", "Ranunculus Bouquet", "529", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-blooms-from-my-heart-floral-arrangement-140864-m.jpg"},
        {"26", "Snapdragon Bouquet", "579", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-wishful-blooms-206409-m.jpg"},
        {"27", "Delphinium Bouquet", "659", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-eden-s-treasure-389728-m.jpg"},
        {"28", "Zinnia Bouquet", "499", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-the-wild-prestige-387085-m.jpg"},
        {"29", "Hibiscus Bouquet", "549", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-sunshine-radiance-94824-m.jpg"},
        {"30", "Alyssum Bouquet", "399", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-the-golden-moments-240795-m.jpg"},
        {"31", "Sweet Pea Bouquet", "479", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-amethyst-dream-240884-m.jpg"},
        {"32", "Petunia Bouquet", "359", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-floral-enchantment-medium-302338-m.jpg"},
        {"33", "Cosmos Bouquet", "429", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-amaranth-s-secret-387093-m.jpg"},
        {"34", "Primrose Bouquet", "529", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-birthday-melody-302362-m.jpg"},
        {"35", "Clematis Bouquet", "589", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-the-royal-garden-269339-m.jpg"},
        {"36", "Lilac Bouquet", "639", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-honey-kissed-memories-389729-m.jpg"},
        {"37", "Gladiolus Bouquet", "709", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-aphrodite-blooms-155096-m.jpg"},
        {"38", "Iris Bouquet", "749", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-blooming-romance-125158-m.jpg"},
        {"39", "Geranium Bouquet", "469", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-radiant-rituals-335222-m.jpg"},
        {"40", "Foxglove Bouquet", "489", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-amber-nightfall-388397-m.jpg"},
        {"41", "Pansy Bouquet", "419", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-cocoa-love-267511-m.jpg"},
        {"42", "Violet Bouquet", "459", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-beige-memories-205800-m.jpg"},
        {"43", "Heather Bouquet", "389", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-the-delilah-187572-m.jpg"},
        {"44", "Honeysuckle Bouquet", "499", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-pastel-poetry-285567-m.jpg"},
        {"45", "Hollyhock Bouquet", "579", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-imperial-indulgence-334532-m.jpg"},
        {"46", "Bougainvillea Bouquet", "519", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-elysian-fields-387091-m.jpg"},
        {"47", "Morning Glory Bouquet", "369", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-golden-harvest-300572-m.jpg"},
        {"48", "Azalea Bouquet", "639", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-garden-of-grace-281101-m.jpg"},
        {"49", "Buttercup Bouquet", "319", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-the-beloved-155072-m.jpg"},
        {"50", "Forget-Me-Not Bouquet", "459", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-modern-rouge-205801-m.jpg"},
        {"51", "Jasmine Bouquet", "449", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-festive-royale-bhaidooj-hamper-385454-m.jpg"},
        {"52", "Hydrangea Bouquet", "679", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-blue-beauty-flower-box-139964-m.jpg"}

};
String searchQuery = request.getParameter("search");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bouquet Booking</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./CSS/home.css">
    <style>
        .carousel-inner img {
            height: 300px;
            object-fit: cover;
            border-radius: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center my-4">Welcome to Bouquet Booking</h1>
        
        <!-- Search Bar -->
        <form method="GET" class="mb-4">
            <div class="input-group">
                <input type="text" name="search" class="form-control" placeholder="Search for bouquets..." value="<%= searchQuery != null ? searchQuery : "" %>">
                <button class="btn btn-primary" type="submit">Search</button>
            </div>
        </form>

        <!-- Auto Carousel -->
        <div id="bouquetCarousel" class="carousel slide mb-5" data-bs-ride="carousel">
            <div class="carousel-inner">
                <% 
                    String[][] carouselImages = {
                        {"https://imgcdn.floweraura.com/bridal-flower-fa-landing-page-desktop.jpg?tr=w-1583,q-70", ""},
                        {"https://imgcdn.floweraura.com/premium-flower-landigpage-desktop.jpg?tr=w-1583,q-70", ""},
                        {"https://b2812202.smushcdn.com/2812202/wp-content/uploads/2024/02/SDD-2.png?lossy=1&strip=1&webp=1", ""}
                    };
                    for (int i = 0; i < carouselImages.length; i++) { 
                %>
                <div class="carousel-item <%= i == 0 ? "active" : "" %>">
                    <img src="<%= carouselImages[i][0] %>" class="d-block w-100" alt="<%= carouselImages[i][1] %>">
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="text-white shadow-lg"><%= carouselImages[i][1] %></h5>
                    </div>
                </div>
                <% } %>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#bouquetCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#bouquetCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <!-- Bouquets Grid -->
        <div class="row g-4">
            <%
                boolean found = false;
                for (String[] bouquet : bouquets) {
                    // Filter bouquets based on search query
                    if (searchQuery == null || bouquet[1].toLowerCase().contains(searchQuery.toLowerCase())) {
                        found = true;
            %>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="card h-100">
                    <img src="<%= bouquet[3] %>" class="card-img-top" alt="<%= bouquet[1] %>">
                    <div class="card-body text-center">
                        <h5 class="card-title"><%= bouquet[1] %></h5>
                        <p class="card-text">₹<%= bouquet[2] %></p>
                        <a href="<%= request.getContextPath() %>/Details?bouquetId=<%= bouquet[0] %>" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <% 
                    }
                } 
                if (!found) { 
            %>
            <div class="col-12">
                <p class="text-center text-muted fs-4">No bouquets found for "<%= searchQuery %>".</p>
            </div>
            <% } %>
        </div>
    </div>

    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
