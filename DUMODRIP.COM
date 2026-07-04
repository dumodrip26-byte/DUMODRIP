<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DUMODRIP Premium</title>

<style>
body{
margin:0;
font-family:Arial,sans-serif;
background:#000;
color:#fff;
}

body::before{
content:"";
position:fixed;
top:0;
left:0;
width:100%;
height:100%;
background:url('DumoDrip logo.png') center center no-repeat;
background-size:50%;
opacity:0.04;
pointer-events:none;
z-index:-1;
}

nav{
display:flex;
justify-content:space-between;
align-items:center;
padding:20px 40px;
background:#111;
position:sticky;
top:0;
}

.logo{
font-size:28px;
font-weight:bold;
color:#00aaff;
}

nav a{
color:#fff;
text-decoration:none;
margin-left:20px;
}

.hero{
height:90vh;
display:flex;
justify-content:center;
align-items:center;
text-align:center;
background:
linear-gradient(
rgba(0,0,0,0.75),
rgba(0,0,0,0.75)
),
url('DumoDrip logo.png');
background-position:center;
background-repeat:no-repeat;
background-size:contain;
background-color:#000;
}

.hero h1{
font-size:80px;
color:#00aaff;
margin:0;
}

.btn{
background:#00aaff;
color:#fff;
padding:15px 30px;
border-radius:8px;
text-decoration:none;
}

.search{
text-align:center;
padding:20px;
}

.search input{
width:350px;
max-width:90%;
padding:12px;
}

.products{
padding:40px;
}

.grid{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
gap:20px;
}

.card{
background:#111;
padding:15px;
border-radius:12px;
transition:.3s;
}

.card:hover{
transform:translateY(-8px);
box-shadow:0 0 20px rgba(0,170,255,.4);
}

.card img{
width:100%;
height:220px;
object-fit:cover;
border-radius:10px;
}

.price{
color:#00aaff;
font-weight:bold;
}

button{
width:100%;
padding:10px;
background:#00aaff;
border:none;
color:#fff;
cursor:pointer;
}

.gallery,
.reviews,
.newsletter,
.contact{
padding:40px;
text-align:center;
}

.gallery img{
width:280px;
max-width:90%;
margin:10px;
border-radius:10px;
}

.review{
background:#111;
padding:20px;
max-width:500px;
margin:10px auto;
border-radius:10px;
}

.newsletter input{
padding:12px;
width:300px;
max-width:90%;
}

.cart{
position:fixed;
top:20px;
right:20px;
background:#00aaff;
padding:10px 15px;
border-radius:20px;
}

.whatsapp{
position:fixed;
right:20px;
bottom:20px;
width:60px;
height:60px;
border-radius:50%;
background:#25D366;
color:#fff;
text-decoration:none;
display:flex;
align-items:center;
justify-content:center;
font-size:28px;
}

footer{
background:#111;
padding:30px;
text-align:center;
}
</style>
</head>
<body>
<div class="socials">
<a href="https://www.facebook.com/profile.php?id=61590716072624" target="_blank">
<img src="https://img.icons8.com/ios-filled/50/ffffff/facebook-new.png">
</a>

<a href="https://www.instagram.com/dumo_drip" target="_blank">
<img src="https://img.icons8.com/ios-filled/50/ffffff/instagram-new.png">
</a>

<a href="https://wa.me/27780385971" target="_blank">
<img src="https://img.icons8.com/ios-filled/50/ffffff/whatsapp.png">
</a>
</div>
<div class="cart">
🛒 <span id="count">0</span>
</div>

<nav>
<div class="logo">DUMODRIP</div>
<div>
<a href="#">Home</a>
<a href="#">Shop</a>
<a href="#">About</a>
<a href="#">Contact</a>
</div>
</nav>

<section class="hero">
<div>
<h1>DUMODRIP</h1>
<p>Ride The Wave</p>
<a class="btn" href="https://wa.me/27780385971" target="_blank">SHOP NOW</a>
</div>
</section>

<div class="search">
<input id="searchInput" onkeyup="searchProducts()" placeholder="Search products...">
</div>

<section class="gallery">
<h2>RIDE THE WAVE</h2>

<img src="DumoDrip logo.png">

</section>

<section class="products">
<h2>NEW DROP</h2>
<div class="grid">

<div class="card"><img src="DumoDrip black shirt.png"><h3>Black t-shirt</h3><p class="price">R195</p><button onclick="addCart('Ocean Tee')">Add To Cart</button></div>
<div class="card"><img src="black hoodie 2.png"><h3>Black Hoodie</h3><p class="price">R350</p><button onclick="addCart('Black Hoodie')">Add To Cart</button></div>
<div class="card"><img src="white hoodie.png"><h3>White Hoodie</h3><p class="price">R350</p><button onclick="addCart('White Hoodie')">Add To Cart</button></div>
<div class="card"><img src="DumoDrip binnie.png"><h3>Black Beanie</h3><p class="price">R100</p><button onclick="addCart('Black Beanie')">Add To Cart</button></div>
<div class="card"><img src="DUMODRIP White beanie.png"><h3>White Beanie</h3><p class="price">R100</p><button onclick="addCart('White Beanie')">Add To Cart</button></div>
<div class="card"><img src="DUMODRIP SLIDES.png"><h3>Black Slides</h3><p class="price">R249</p><button onclick="addCart('Black Slides')">Add To Cart</button></div>
<div class="card"><img src="DMODRIP Track suits.png"><h3>Black Tracksuit</h3><p class="price">R650</p><button onclick="addCart('Black Tracksuit')">Add To Cart</button></div>
<div class="card"><img src="DUMODRIP hat waterproof.png"><h3>Bucket Hat</h3><p class="price">R200</p><button onclick="addCart('Bucket Hat')">Add To Cart</button></div>
<div class="card"><img src="white shirt 2.png"><h3>White t-shirt</h3><p class="price">R195</p><button onclick="addCart('white t-shirt')">Add To Cart</button></div>
</div>
</section>

<section class="reviews">
<h2>Customer Reviews</h2>
<div class="review">⭐⭐⭐⭐⭐ Amazing quality.</div>
<div class="review">⭐⭐⭐⭐⭐ Fast delivery.</div>
<div class="review">⭐⭐⭐⭐⭐ Premium streetwear.</div>
</section>

<section class="newsletter">
<h2>Join The Wave</h2>
<input placeholder="Enter email">
<button style="width:auto">Subscribe</button>
</section>

<section class="contact">
<h2>Contact</h2>
<p>WhatsApp: 078 038 5971</p>
<p>Email: dumodrip26@gmail.com</p>
<a class="btn" href="https://wa.me/27780385971?text=Hi%20DUMODRIP%20I%20want%20to%20order">Order on WhatsApp</a>
</section>

<footer>© 2026 DUMODRIP</footer>

<a class="whatsapp" href="https://wa.me/27780385971" target="_blank">💬</a>

<script>
let count=0;
function addCart(item){
count++;
document.getElementById('count').innerText=count;
localStorage.setItem('cartCount',count);
}
count=parseInt(localStorage.getItem('cartCount')||0);
document.getElementById('count').innerText=count;

function searchProducts(){
let input=document.getElementById('searchInput').value.toLowerCase();
document.querySelectorAll('.card').forEach(card=>{
card.style.display=card.innerText.toLowerCase().includes(input)?'block':'none';
});
}
</script>

</body>
</html>
