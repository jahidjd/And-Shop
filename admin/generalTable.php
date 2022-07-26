<?php 
session_start();
include('database/connection.php');
if($_SESSION['status']){
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin - v2.2.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="dashboard.php" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Admin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-bell"></i>
            <span class="badge bg-primary badge-number">4</span>
          </a><!-- End Notification Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
            <li class="dropdown-header">
              You have 4 new notifications
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-exclamation-circle text-warning"></i>
              <div>
                <h4>Lorem Ipsum</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>30 min. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-x-circle text-danger"></i>
              <div>
                <h4>Atque rerum nesciunt</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>1 hr. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-check-circle text-success"></i>
              <div>
                <h4>Sit rerum fuga</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>2 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-info-circle text-primary"></i>
              <div>
                <h4>Dicta reprehenderit</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>4 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>
            <li class="dropdown-footer">
              <a href="#">Show all notifications</a>
            </li>

          </ul><!-- End Notification Dropdown Items -->

        </li><!-- End Notification Nav -->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-chat-left-text"></i>
            <span class="badge bg-success badge-number">3</span>
          </a><!-- End Messages Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
            <li class="dropdown-header">
              You have 3 new messages
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Maria Hudson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>4 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Anna Nelson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>6 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="assets/img/messages-3.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>David Muldon</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>8 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="dropdown-footer">
              <a href="#">Show all messages</a>
            </li>

          </ul><!-- End Messages Dropdown Items -->

        </li><!-- End Messages Nav -->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">Jahid Hasan</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              
              <span>Full Stack Web Developer</span>
            </li>
             <li>
              <a class="dropdown-item d-flex align-items-center" href="logout.php">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <?php 
  include('src/menu.php');
  ?>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
          <li class="breadcrumb-item active">General</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <?php 
    $data = $conn->query("SELECT * FROM general")->fetch_assoc();
    
    
    ?>

    <section class="section dashboard">
      <div class="row">
        <div class="card">
          <!-- manin content -->
          <h1>General Table</h1>
          <form action="generalUpdate.php" method="POST" enctype="multipart/form-data">
            <table class="table table-bordered">
              <tr>
                <td>Logo</td>
                <td colspan="2">
                  <input type="file" name="logo" class="form-control">
                    <img src="../eComers/src/assets/img/upload/logo/<?php echo $data['logo'] ?>" alt="" style="width:15%">
                 </td>
                <td>Bennar Pic</td>
                <td colspan="2">
                  <input type="file" name="bennar_pic" class="form-control">
                  <img src="../eComers/src/assets/img/upload/bennar_pic/<?php echo $data['bennar_pic'] ?>" alt="" style="width:15%">
                </td>
              </tr>
              <tr>
                <td>Bennar Text One</td>
                <td><input type="text" name="bennar_text_one" class="form-control" value="<?php echo $data['bennar_text_one'] ?>"></td>
                <td>Bennar Text Two</td>
                <td><input type="text" name="two" class="form-control" value="<?php echo $data['bennar_text_two'] ?>"></td>
                <td>Bennar Text Three</td>
                <td><input type="text" name="three" class="form-control" value="<?php echo $data['bennar_text_three'] ?>"></td>
              </tr>
              <tr>
                <td>Special Discount Photo</td>
                <td colspan="2">
                  <input type="file" name="special_discount_photo" class="form-control">
                  <img src="../eComers/src/assets/img/upload/discount_photo/<?php echo $data['spacial_discount_photo'] ?>" alt="" style="width:15%">
                
                </td>
                <td>Discount Title</td>
                <td colspan="2"><input type="text" name="discount_title" class="form-control" value="<?php echo $data['discount_title'] ?>"></td>
              </tr>
              <tr>
                <td>Discount Details</td>
                <td colspan="5">
                  <textarea  id="" cols="15" rows="5" class="form-control" name="discount_details" ><?php echo $data['discount_details'] ?></textarea>
                </td>
              </tr>
              <tr>
                <td>Footer Text</td>
                <td colspan="5">
                  <textarea  id="" cols="15" rows="5" class="form-control" name="footer_text"><?php echo $data['footer_text'] ?></textarea>
                </td>
              </tr>
              <tr>
                <td>Common Bennar</td>
                <td colspan="2">
                  <input type="file" name="common_bennar" class="form-control">
                  <img src="../eComers/src/assets/img/upload/common_bennar/<?php echo $data['common_bennar'] ?>" alt="" style="width:15%">
                
                </td>
                <td>About Photo</td>
                <td colspan="2">
                  <input type="file" name="about_photo" class="form-control">
                  <img src="../eComers/src/assets/img/upload/about_photo/<?php echo $data['about_pic'] ?>" alt="" style="width:15%">
              </td>
              </tr>
              <tr>
                <td>About Text</td>
                <td colspan="5">
                  <textarea  id="" cols="30" rows="10" class="form-control" name="about_text"><?php echo $data['about_text'] ?></textarea>
                </td>
              </tr>
              <tr>
                <td>Contact Text</td>
                <td colspan="5">
                  <textarea  id="" cols="30" rows="10" class="form-control" name="contact_text"><?php echo $data['contact_text'] ?></textarea>
                </td>
              </tr>
              <tr>
                <td>Address</td>
                <td ><input type="text" name="address" class="form-control" value="<?php echo $data['address'] ?>"></td>
                <td>Phone</td>
                <td ><input type="text" name="phone" class="form-control" value="<?php echo $data['phone'] ?>"></td>
                <td>Email</td>
                <td ><input type="text" name="email" class="form-control" value="<?php echo $data['email'] ?>"></td>
              </tr>
              <tr>
                <td>Map</td>
                <td colspan="6"><input type="text" name="map" class="form-control" value="<?php echo $data['map'] ?>"></td>
              </tr>
              <tr>
                <td colspan="7"><input type="submit" class="btn form-control btn-info" value="Update"></td>
              </tr>
            </table>
          </form>

        </div>
      </div>
    </section>


  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>Admin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by | Jahid Hasan
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.min.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
<?php 
}else{
 header('Location: index.php');
} ?>