  <!DOCTYPE html>
<html>
<head>

<style>
body, html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
    background-image: url("https://int.nyt.com/applications/cooking/static/images/HeroImage.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>


<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

  <%@ include file="/WEB-INF/views/header.jsp"%> 
  
  <div class="bg"></div>
  
  <div class="container">
  <h2>Restaurant</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      
    </ol>
    
     <div class="carousel-inner">
      <div class="item active">
        <img src="https://i.ytimg.com/vi/90pm-leHH7U/maxresdefault.jpg" alt="Briyani" style="width:100%;">
      </div>

      <div class="item">
        <img src="http://hdlatestwallpaper.com/?edmc=5622" alt="kebab" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="http://media.istockphoto.com/photos/turkish-doner-kebab-shawarma-roll-with-meat-and-pita-bread-picture-id475712608?s=170667a" alt="shawrama" style="width:100%;">
      </div>
    </div>
    
    
    
  
 <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chsevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
  
  <%@ include file="/WEB-INF/views/footer.jsp"%> 
</body>
</html>


 