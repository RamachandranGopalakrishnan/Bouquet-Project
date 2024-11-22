package servlets;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;
@WebServlet("/Details")
public class Details extends HttpServlet {
    private static final HashMap<String, String[]> bouquets = new HashMap<>();
    
    static {
    	 bouquets.put("1", new String[]{"Rose Bouquet", "599", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt9prodlp/products/p-the-soul-of-rose-bouquet-110721-m.jpg"});
         bouquets.put("2", new String[]{"Lily Bouquet", "499", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-pink-lily-love-94828-m.jpg"});
         bouquets.put("3", new String[]{"Tulip Bouquet", "549", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-floral-enchantment-bouquet-132891-m.jpg"});
         bouquets.put("4", new String[]{"Daisy Bouquet", "399", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-oriental-delight-bouquet-grand-302340-m.jpg"});
         bouquets.put("5", new String[]{"Orchid Bouquet", "649", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-ballet-dreams-302363-m.jpg"});
         bouquets.put("6", new String[]{"Carnation Bouquet", "429", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-sweetheart-charm-387095-m.jpg"});
         bouquets.put("7", new String[]{"Sunflower Bouquet", "359", "https://cdn.igp.com/f_auto,q_auto,t_pnopt5prodlp/products/p-serene-sunshine-birthday-arrangement-285421-m.jpg"});
         bouquets.put("8", new String[]{"Peony Bouquet", "799", "https://cdn.igp.com/f_auto,q_auto,t_pnopt9prodlp/products/p-bouquet-of-pink-carnations-in-vase-25-stems--121695-m.jpg"});
         bouquets.put("9", new String[]{"Marigold Bouquet", "299", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-mahogany-sunset-385442-m.jpg"});
         bouquets.put("10", new String[]{"Jasmine Bouquet", "449", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-festive-royale-bhaidooj-hamper-385454-m.jpg"});
         bouquets.put("11", new String[]{"Hydrangea Bouquet", "679", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-blue-beauty-flower-box-139964-m.jpg"});
         bouquets.put("12", new String[]{"Chrysanthemum Bouquet", "499", "https://cdn.igp.com/f_auto,q_auto,t_pnopt9prodlp/products/p-oriental-delight-bouquet-223313-m.jpg"});
         bouquets.put("13", new String[]{"Daffodil Bouquet", "459", "https://cdn.igp.com/f_auto,q_auto,t_pnopt9prodlp/products/p-radiant-blooms-196263-m.jpg"});
         bouquets.put("14", new String[]{"Lavender Bouquet", "489", "https://cdn.igp.com/f_auto,q_auto,t_pnopt5prodlp/products/p-enchanting-lavender-bliss-bouquet-310150-m.jpg"});
         bouquets.put("15", new String[]{"Poppy Bouquet", "399", "https://cdn.igp.com/f_auto,q_auto,t_pnopt5prodlp/products/p-orchids-bouquet-with-chocolate-cake-203613-m.jpg"});
         bouquets.put("16", new String[]{"Bluebell Bouquet", "549", "https://cdn.igp.com/f_auto,q_auto,t_pnopt5prodlp/products/p-purple-majesty-302364-m.jpg"});
         bouquets.put("17", new String[]{"Begonia Bouquet", "519", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-sweetheart-charm-387095-m.jpg"});
         bouquets.put("18", new String[]{"Anemone Bouquet", "579", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-ballet-dreams-302363-m.jpg"});
         bouquets.put("19", new String[]{"Freesia Bouquet", "439", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-sweet-sentiments-240889-m.jpg"});
         bouquets.put("20", new String[]{"Magnolia Bouquet", "699", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-rhythm-of-santini-284652-m.jpg"});
         bouquets.put("21", new String[]{"Amaryllis Bouquet", "629", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-lemonade-wishes-302365-m.jpg"});
         bouquets.put("22", new String[]{"Aster Bouquet", "389", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-dream-a-little-98548-m.jpg"});
         bouquets.put("23", new String[]{"Gardenia Bouquet", "749", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-vanilla-sunshine-greetings-284650-m.jpg"});
         bouquets.put("24", new String[]{"Camellia Bouquet", "469", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-lavender-daydream-385440-m.jpg"});
         bouquets.put("25", new String[]{"Ranunculus Bouquet", "529", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_pnopt5prodlp/products/p-blooms-from-my-heart-floral-arrangement-140864-m.jpg"});
         bouquets.put("26", new String[]{"Snapdragon Bouquet", "579", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-wishful-blooms-206409-m.jpg"});
         bouquets.put("27", new String[]{"Delphinium Bouquet", "659", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-eden-s-treasure-389728-m.jpg"});
         bouquets.put("28", new String[]{"Zinnia Bouquet", "499", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-the-wild-prestige-387085-m.jpg"});
         bouquets.put("29", new String[]{"Hibiscus Bouquet", "549", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-sunshine-radiance-94824-m.jpg"});
         bouquets.put("30", new String[]{"Alyssum Bouquet", "399", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-the-golden-moments-240795-m.jpg"});
         bouquets.put("31", new String[]{"Sweet Pea Bouquet", "479", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-amethyst-dream-240884-m.jpg"});
         bouquets.put("32", new String[]{"Petunia Bouquet", "359", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-floral-enchantment-medium-302338-m.jpg"});
         bouquets.put("33", new String[]{"Cosmos Bouquet", "429", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-amaranth-s-secret-387093-m.jpg"});
         bouquets.put("34", new String[]{"Primrose Bouquet", "529", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-birthday-melody-302362-m.jpg"});
         bouquets.put("35", new String[]{"Clematis Bouquet", "589", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-the-royal-garden-269339-m.jpg"});
         bouquets.put("36", new String[]{"Lilac Bouquet", "639", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-honey-kissed-memories-389729-m.jpg"});
         bouquets.put("37", new String[]{"Gladiolus Bouquet", "709", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-aphrodite-blooms-155096-m.jpg"});
         bouquets.put("38", new String[]{"Iris Bouquet", "749", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-blooming-romance-125158-m.jpg"});
         bouquets.put("39", new String[]{"Geranium Bouquet", "469", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-radiant-rituals-335222-m.jpg"});
         bouquets.put("40", new String[]{"Foxglove Bouquet", "489", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-floral-delight-vase-98533-m.jpg"});
         bouquets.put("41", new String[]{"Verbena Bouquet", "509", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-enchanted-sunset-387091-m.jpg"});
         bouquets.put("42", new String[]{"Honeysuckle Bouquet", "479", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-morning-glory-389738-m.jpg"});
         bouquets.put("43", new String[]{"Crocus Bouquet", "429", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-elegant-hues-135064-m.jpg"});
         bouquets.put("44", new String[]{"Pansy Bouquet", "399", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-sunshine-symphony-389729-m.jpg"});
         bouquets.put("45", new String[]{"Lotus Bouquet", "769", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-dream-a-little-more-250885-m.jpg"});
         bouquets.put("46", new String[]{"Azalea Bouquet", "629", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-azure-mornings-145965-m.jpg"});
         bouquets.put("47", new String[]{"Snowdrop Bouquet", "489", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-cream-de-bliss-387090-m.jpg"});
         bouquets.put("48", new String[]{"Cyclamen Bouquet", "419", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-garden-magic-389737-m.jpg"});
         bouquets.put("49", new String[]{"Heather Bouquet", "579", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-fairyland-blooms-135066-m.jpg"});
         bouquets.put("50", new String[]{"Buttercup Bouquet", "349", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-summer-breeze-387089-m.jpg"});
         bouquets.put("51", new String[]{"Cactus Flower Bouquet", "449", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-sapphire-charm-385442-m.jpg"});
         bouquets.put("52", new String[]{"Cherry Blossom Bouquet", "859", "https://res.cloudinary.com/interflora/f_auto,q_auto,t_prodm/products/p-pink-poetry-302364-m.jpg"});
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bouquetId = request.getParameter("bouquetId");
        if (bouquetId != null && bouquets.containsKey(bouquetId)) {
            String[] bouquet = bouquets.get(bouquetId);
            request.setAttribute("bouquetId", bouquetId);
            request.setAttribute("name", bouquet[0]);
            request.setAttribute("cost", bouquet[1]);
            request.setAttribute("image", bouquet[2]);
            RequestDispatcher dispatcher = request.getRequestDispatcher("details.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Bouquet not found");
        }
    }
}

