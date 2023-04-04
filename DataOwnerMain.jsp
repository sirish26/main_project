<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>home</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: Reveal
    Theme URL: https://bootstrapmade.com/reveal-bootstrap-corporate-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>
<body id="body">
    <!--==========================
      Header
    ============================-->
    <header id="header">
      <div class="container">
  
        <div id="logo" class="pull-left">
          <h1><a href="#body" class="scrollto">Ho<span>me</span></a></h1>
        </div>
  
        <nav id="nav-menu-container">
          <ul class="nav-menu">
            <li class="menu-active"><a href="#body">Home</a></li>
            <li><a href="index.html#about">Abstract</a></li>
            <li><a href="Owner.html">Data Owner</a></li>
            <li><a href="Proxy.html">Proxy server</a></li>
            <li><a href="Cloud.html">Admin</a></li>
            <li class="menu-has-children"><a href="">Cloud</a>
              <ul>
                <li><a href="#">Amazon S3</a></li>
                <li><a href="#">Google drive</a></li>
                <li><a href="#">Apple icloud</a></li>
                <li><a href="#">Microsoft Azure</a></li>
              </ul>
            </li>
            <li><a href="Enduser.html">End user</a></li>
          </ul>
        </nav><!-- #nav-menu-container -->
      </div>
    </header><!-- #header -->
    <section id="about" class="wow fadeInUp">
        <div class="col-lg-6 content">
          <div class="row">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <center> <h2 class="style1">Welcome <%=application.getAttribute("ocl") %> DataOwner :: <%=application.getAttribute("onname") %> </h2></center>
           <p class="infopost"><span class="style3">Owner  </span>&nbsp;&nbsp;|&nbsp;&nbsp;<span class="style2">Control Panel </span></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
           <h2 class="star"><span>Menu</span></h2>
          <ul class="sb_menu">
           <li><strong><a href="GetCloudCost.jsp">Find Cost and Memory</a></strong></li>
           <li><strong><a href="PurchaseVm.jsp">Purchase VM</a></strong></li>
            <li><strong><a href="Vmdetails.jsp">My VM Details</a></strong></li>
            <li><strong><a href="Upload.jsp">Upload</a></strong></li>
            <li><strong><a href="Verify.jsp">Data Integrity Proof</a></strong></li>
			<li><strong><a href="Migrate.jsp">Transfer Your Data</a></strong></li>
			<li><strong><a href="VReq.jsp">View Request</a></strong></li>
            <li><strong><a href="ViewOwnerDetails.jsp">View Owner Files </a></strong></li>
            <li><strong><a href="index.html">Log Out</a></strong></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
</body>
</html>
