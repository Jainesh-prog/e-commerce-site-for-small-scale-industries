<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
 <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap" rel="stylesheet">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Interface</title>
   <style>
       .head
{
  background: linear-gradient(to right, #00d2ff, #3a7bd5);
   font-family: sans-serif;
   color: white;
   padding-top: 3vh;
   padding-bottom: 3vh;
   text-align: center;
}

body {
   max-width: 100%;
   overflow-x: hidden;
}

.head2
{
  background: linear-gradient(to right, #00d2ff, #3a7bd5);
   font-family: sans-serif;
   height: 125px;
   width: auto;
   text-align: center;
  padding-top: 5px;
}

#top
{
  color: white;
  font-size: 50px;
}

.lefttext
{
  /* margin: 19% 25% 15% ;  */
  position: absolute; left: 7vw; top: 38.5vh;
  font-size: 8.8vh;
  text-align: left;
  width: 30vw;
  font-weight: bolder;
  font-family: serif;
  /* color: #45b8AC */
  /* -webkit-text-stroke: 1px black; */
  /* outline-color: black; */
  color: black;
  -webkit-text-fill-color: #0093B8; /* Will override color (regardless of order) */
  -webkit-text-stroke-width: 0.5px;
  -webkit-text-stroke-color: black;
  font-family: verdana;

}


button1
{
  background-color: #DCDCDC
  border: 0
  outline @border
  padding: 1.5rem 2rem
  font-size: 4rem
  font-family: Roboto Slab;
  box-shadow 0px 5px 10px rgba(darken(dodgerblue, 40%))
  transition all .3s
  cursor pointer
  border-radius: 5px
  border-bottom: 4px solid lighten(gray, 70%)
}
  &:hover
    box-shadow 0px 15px 25px -5px rgba(darken(dodgerblue, 40%))
    transform scale(1.03)
  &:active
    box-shadow 0px 4px 8px rgba(darken(dodgerblue, 30%))
    transform scale(.98)


#subtop
{
  color: black
  font-size: 50px;
}


* {box-sizing:border-box}

/* Slideshow container */
.slideshow-container {
  width: 40vw;
  height: 30vh;
  position: absolute; top: 130vh; left:48vw;
  margin: auto;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  /* top: 50%; */
  /* width: auto; */
  margin-top: -22px;
  padding: 16px;
  color: blue;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
  transform: translate(48vw, 126.5vh);

}

/* Position the "next button" to the right */
.next {
  left: 690px;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 25px;
  /* padding: 8px 12px; */
  position: absolute; top: 250px;
  transform: translate(70px,30px);
  /* bottom: 8px; */
  /* width: 100%; */
  text-align: center;
  background-color: rgba(0, 0, 0, 0.9);
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  background-color: rgba(0, 0, 0, 0.5);
  top: 0;
}

/* The dots/bullets/indicators */
/* .dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
} */

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

.cattext
{
position: absolute; left: 5.2vw; top: 125vh;
}


.icons{
  background-color: blue;
}

.why
{
  font-size: 5vh;
  font-family: Heebo;
  color: #31326f;
  position: absolute; left:5vw; top:190vh;
}

.article
{
  font-size: 26px;
  font-family: Heebo;
  color: #31326f;
  position: absolute; left:5vw; top:255vh;
}

      
</style>
  </head>

  <style>
.mySlides {display:none;}
</style>


    <div class="head">
      <h1 id="top" >Small Cart</h1>
      <h2 id="subtop">Come on! Let's sell together</h2>
    </div>

    <body>
    
      

     

    <div class= "lefttext">
      <p> Open yourself <br /> to wider <br /> Opportunities </p>

    </div>

    <div>
      <a href="seller_add.jsp">
      <button  class="button1" type="button" style="position: absolute; left: 58.63vw; top: 54vh;  width: 21.5vw; height: 13vh; font-size: 4.3vh; ">Sell</button>
      </a>
    </div>

<div>
       <a href="addBlog.jsp">
      <button class="button1" type="button" style=" background-color:#cfd3ce;  position: absolute; left: 65.5vw; top: 78vh;  width: 8vw; height: 8vh; font-size: 3.5vh; "> Add Blog</button>
    </a>
    </div>

    <div>
    <a href="readblog.jsp">
      <button class="button1" type="button" style=" background-color:#cfd3ce; position: absolute; left: 51.5vw; top: 78vh; width: 8vw; height: 8vh; font-size: 3.5vh; ">Read Blog</button>
   </a>
    </div>

    <div>
    <a href="Helpdesk.jsp">
      <button class="button1" type="button" style="background-color:#cfd3ce; position: absolute; left: 79.5vw; top: 78vh; width: 8vw; height: 8vh; font-size: 3.5vh; " >Helpdesk</button>
   </a>
    </div>

    <!-- Slideshow container -->
    <div class="slideshow-container">

      <!-- Full-width images with number and caption text -->
      <div class="mySlides fade">
        <div class="numbertext">1 / 7</div>
        <img src="images/handloom1.jpg" style="width:50vw;  ">
        <div class="text">Woven Clothes</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">2 / 7</div>
        <img src="images/plants.jpg" style="width:50vw; ">
        <div class="text">Plants</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">3 / 7</div>
        <img src="images/purses.jpg" style="width:50vw;">
        <div class="text">Purses</div>
      </div>


        <div class="mySlides fade">
          <div class="numbertext">4 / 7</div>
          <img src="images/cake.jpg" style="width:50vw;">
          <div class="text">Chocolates and Cakes</div>
        </div>


          <div class="mySlides fade">
            <div class="numbertext">5 / 7</div>
            <img src="images/decor.jpg" style="width:50vw;">
            <div class="text">House Decor</div>
          </div>

            <div class="mySlides fade">
              <div class="numbertext">6 / 7</div>
              <img src="images/paint.jpg" style="width:50vw;">
              <div class="text">Paintings and Crafts</div>
            </div>

              <div class="mySlides fade">
                <div class="numbertext">7 / 7</div>
                <img src="images/acchar.png" style="width:50vw;">
                <div class="text">Home-made Pickle</div>
              </div>
          </div>
<!--
                <div class="mySlides fade">
                  <div class="numbertext">8 / 8</div>
                  <img src="basket.jpg" style="width:50vw;"">
                  <div class="text">Others</div>
              </div> -->


      </div>


      <!-- Next and previous buttons -->
      <div>
      <a class="prev" onclick="plusSlides(-1)" style="position: absolute; top:28vh;  ">&#10094;</a>
      <a class="next" onclick="plusSlides(1)"  style="position: absolute; top:28vh;">&#10095;</a>
    </div>
    <br>

    <!-- The dots/circles -->
    <!-- <div style="text-align:center">
      <span class="dot" onclick="currentSlide(1)"  style="position: absolute;""></span>
      <span class="dot" onclick="currentSlide(2)"></span>
      <span class="dot" onclick="currentSlide(3)"></span>
    </div> -->

<script>
  var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}</script>

<div class="cattext">
  <h1 style="font-size:7vh">Select From <br />variety of categories</h1>
  <p style="font-size:1.6vw">Select a variety of Categories such as purses, clothings,<br> 
  decorative items and many other things <br>
  SmallCart is not limited with the variety of products.<br>
   So get your cart ready and start Shopping!!
</div>

<style>
@import url('https://fonts.googleapis.com/css2?family=Heebo&display=swap');
</style>

<div class="why">
  <h2 >Why SmallCart and How it works?</h2>
  <p style="font-size:1.6vw; font-family:serif;">
    SmallCart  has  been built  with the main Motive of giving maximum exposure possible to Small Scale Businesses using SmallCart is not just about Shopping but also helping all the upcoming Small businesses as well as upcoming Entrepreneurs on how to get started and how to get their businesses to a great height also SmallCart  will Display the Best products on the Screen for every Category for we believe that the Best comes first  though there will be a wide range of Choices too. For a Customer Shopping on SmallCart won’t be limited to shopping because buying a product will be a help for the family/individual running  this business. 
SmallCart  works this way you either login as a customer or a seller  if u are a customer get ready!! Shopping  wide range handmade products that will be displayed on your screen to get a  valuable customer like you, but if u are a seller u get to see the option of selling your products and read blogs or create a blog and if u have any Problems there’s an Helpdesk that will help u solve your issue The Admin will get in touch and resolve the issue as soon as possible
  </p>
</div>

<div class="article">
  <h2>Stories you may like!</h2>
  <img src ="images/PMmodi.jpg" style="width:28vw; height:28vh; position: absolute; left:0.2vw; top:17vh;">
  <a href="https://timesofindia.indiatimes.com/india/vocal-for-local-should-become-mantra-for-every-indian-pm-modi/articleshow/77557766.cms" style="font-size:3.8vh; position:absolute;  left:0.5vw; top: 48vh;">'Vocal for local should become mantra for every Indian': PM </a>
  <img src ="images/tbss.jpg" style="width:28vw; height:28vh; position: absolute; left:37vw; top: 17vh;">
  <a href="https://blog.verisign.com/getting-online/five-reasons-every-small-business-needs-a-website/#:~:text=A%20website%20not%20only%20helps,learn%20everything%20about%20a%20company." style="font-size:3.8vh; position:absolute;  left:37vw; top:48vh;">Why_every_small_business_needs_a_website</a>
</div>

  </body>
</html>
