<?php



require 'admin/dbconnect.php';

$sql = "SELECT * FROM category";

if (mysqli_query($conn, $sql)) {
  $tableData = mysqli_query($conn, $sql);

} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}



$getallpostssql = "SELECT * FROM posts";

if (mysqli_query($conn, $sql)) {
  $getallpostssqltableData = mysqli_query($conn, $getallpostssql);

} else {
  echo "Error: " . $getallpostssql . "<br>" . $conn->error;
}


$array = array();

?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="TemplateMo">
  <link
    href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap"
    rel="stylesheet">

  <title>Blog</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


  <!-- Additional CSS Files -->
  <link rel="stylesheet" href="assets/css/fontawesome.css">
  <link rel="stylesheet" href="assets/css/templatemo-stand-blog.css">
  <link rel="stylesheet" href="assets/css/owl.css">
  <!--

TemplateMo 551 Stand Blog

https://templatemo.com/tm-551-stand-blog

-->
</head>

<body>

  <!-- ***** Preloader Start ***** -->
  <div id="preloader">
    <div class="jumper">
      <div></div>
      <div></div>
      <div></div>
    </div>
  </div>
  <!-- ***** Preloader End ***** -->

  <!-- Header -->
  <header class="">
    <nav class="navbar navbar-expand-lg">
      <div class="container">
        <a class="navbar-brand" href="index.php">
          <h2>Blog<em>.</em></h2>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
          aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">

            <?php while ($row = mysqli_fetch_assoc($tableData)) { ?>


              <li class="nav-item">
                <a class="nav-link" href="blog.php?status=view&&id=<?php echo $row['cat_name']; ?>">
                  <?php echo $row['cat_name'];
                  array_push($array, $row['cat_name']);
                  ?>
                </a>
              </li>
              <li class="nav-item">


              <?php } ?>
            <li class="nav-item">
              <a class="nav-link" href="contact.php">Feedback</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="admin/login.php">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <!-- Page Content -->
  <!-- Banner Starts Here -->
  <div class="main-banner header-text">
    <div class="container-fluid">
      <div class="owl-banner owl-carousel">


      </div>
    </div>
  </div>
  </div>
  <!-- Banner Ends Here -->

  <section class="call-to-action">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">

        </div>
      </div>
    </div>
  </section>


  <section class="blog-posts">


    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <div class="all-blog-posts">
            <div class="row">
              <div class="col-lg-12">



                <div class="blog-post">




                  <div class="down-content">

                    <?php while ($row = mysqli_fetch_assoc($getallpostssqltableData)) { ?>

                      <a href="post-details.php?status=view&&id=<?php echo $row['post_id']; ?>">
                        <h4>
                          <?php echo $row['post_title'] ?>
                        </h4>
                      </a>
                      <ul class="post-info">
                        <li><a href="#">
                            <?php echo $row['post_author'] ?>
                          </a></li>
                        <li><a href="#">
                            <?php echo $row['post_date'] ?>
                          </a></li>

                      </ul>
                      <p>
                        <?php echo $row['post_content'] ?>
                      </p>

                    <?php } ?>
                  </div>

  </section>


  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <ul class="social-icons">
            <li><a href="#">Facebook</a></li>
            <li><a href="#">Twitter</a></li>
            <li><a href="#">Behance</a></li>
            <li><a href="#">Linkedin</a></li>
            <li><a href="#">Dribbble</a></li>
          </ul>
        </div>
        <div class="col-lg-12">
          <div class="copyright-text">
            <p>Copyright 2020 Stand Blog Co.

              | Design: <a rel="nofollow" href="https://templatemo.com" target="_parent">TemplateMo</a></p>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Additional Scripts -->
  <script src="assets/js/custom.js"></script>
  <script src="assets/js/owl.js"></script>
  <script src="assets/js/slick.js"></script>
  <script src="assets/js/isotope.js"></script>
  <script src="assets/js/accordions.js"></script>

  <script language="text/Javascript">
    cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
    function clearField(t) {                   //declaring the array outside of the
      if (!cleared[t.id]) {                      // function makes it static and global
        cleared[t.id] = 1;  // you could use true and false, but that's more typing
        t.value = '';         // with more chance of typos
        t.style.color = '#fff';
      }
    }
  </script>

</body>

</html>