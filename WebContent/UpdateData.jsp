<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*" %>
   <%@ page import="org.mediaresponse.ai.platform.esb.*" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Architect Corner</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Architect Corner" />
	<meta name="keywords" content="Mobility,IOT,SmartCities" />
	<meta name="author" content="Architect Corner" />


  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

  	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
  	<link rel="shortcut icon" href="favicon.ico">

  	<!-- Google Webfont -->
	<!-- <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'> -->
	<!-- Themify Icons -->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">
	<!-- Easy Responsive Tabs -->
	<link rel="stylesheet" href="css/easy-responsive-tabs.css">
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>

		<!-- START #fh5co-header -->
		<header id="fh5co-header-section" role="header" class="" >
			<div class="container">

				

				<!-- <div id="fh5co-menu-logo"> -->
					<!-- START #fh5co-logo -->
					<h1 id="fh5co-logo" class="pull-left"><a href="index.html"><img src="images/logo.png" alt="Architect Corner" width=50 height=50></a></h1>
					
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
								<li>
									<a href="index.jsp">Home</a>
								</li>
								<li><a href="DataUpload.jsp" class="active">Data Mgmt</a></li>
								<li>
									<a href="right-sidebar.html">Loyalty Management</a>
									 		<ul class="fh5co-sub-menu">
									 		    <li><A HREF="churn.jsp"> Customer Churn</A> </li>
												<li><A HREF="loyalpoints.jsp"> Loyalty Points</A> </li>
                                                <li><A HREF="charges.jsp"> Customer Charges</A></li>
                                                <li><A HREF="revenue.jsp">Revenue</A></li>
                                                <li><A HREF="topup.jsp">TopUp Charges</A></li>
											</ul>
								</li>
								<li><a href="right-sidebar.html">Predictive Analytics</a>
									 		<ul class="fh5co-sub-menu">
												 <li><A HREF="projection_silver.jsp"> SilverPredictions</A> </li>
                                                 <li><A HREF="projection_gold.jsp"> Gold Predictions</A></li>
                                                 <li><A HREF="profiles.jsp">Customer Profiles</A></li>
                                                 <li><A HREF="offers.jsp">Offers</A></li>
                                                 <li><A HREF="nonspeech.jsp">Sentiments</A></li>
                                                 <li><A HREF="socialmedianalysis.jsp">Social Media Analysis</A></li>
											</ul>
								</li>
								<li>
											<a href="#" class="fh5co-sub-ddown">Master Data Mgmt</a>
											<ul class="fh5co-sub-menu">
												<li><A HREF="CRUDPage.jsp?formno=3">Customers</A></li>
												<li><A HREF="CRUDPage.jsp?formno=5">Products</A></li>
												<li><a href="CRUDPage.jsp?formno=7">Vendors</a></li>
												<li><a href="CRUDPage.jsp?formno=8">Partners</a></li>
												<li><a href="CRUDPage.jsp?formno=6">Resources</a></li>
											</ul>
						       </li>
							   <li>
											<a href="Logout.jsp">Log Out</a>
							   </li>							
									</ul>
					</nav>
				<!-- </div> -->

			</div>
		</header>
		
		<div id="fh5co-main">
			
			<div class="fh5co-cards">
				<div class="container-fluid">
					
					<div class="row">
						<div class="col-md-3">
						<%
						        List<String> row = (List<String>)  session.getAttribute("Row");
						
						        String rowId = request.getParameter("rowId");
						        
						        int rowNumber = Integer.parseInt(rowId);
						
						        String columns = request.getParameter("columns");
						        
						        int columnCount = Integer.parseInt(columns);
						
						        for(int i=0; i< columnCount; i++)
						        {
						        	String column = request.getParameter("column"+i);
						        	//out.println(column);
						        	row.set(i, column);
						        }
						        List<List<String>> rows = (List<List<String>>) session.getAttribute("data");
						        int j=0;
						        for(List<String> dataRow: rows)
						        {
						        	if(j==rowNumber)
						        	{
						        		dataRow.clear();
						        		int k=0;
						        		for(String value: row)
						        		{
						        			dataRow.set(k, value);
						        			k++;
						        		}
						        	}
						        	
						        }
						        
						        session.setAttribute("data", rows);
						        
						         RequestDispatcher dispatcher =
						                getServletContext()
						                    .getRequestDispatcher("/GenerateGraph.jsp");
						
						            if (dispatcher != null) {
						                dispatcher.forward(request, response);
						            } 
						%>
						</div>
					 </div>
				</div>
			</div>

			<!-- END container -->


		
		</div>
		<!-- END fhtco-main -->


		<footer role="contentinfo" id="fh5co-footer">
			<a href="#" class="fh5co-arrow fh5co-gotop footer-box"><i class="ti-angle-up"></i></a>
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-6 footer-box">
						<h3 class="fh5co-footer-heading">Architect Corner</h3>
						<ul class="fh5co-footer-links">
							<li><a href="#">About</a></li>
							<li><a href="#">Services</a></li>
							<li><a href="#">Our Products</a></li>
							<li><a href="#">Our Culture</a></li>
							<li><a href="#">Team</a></li>
						</ul>

					</div>
					<div class="col-md-4 col-sm-6 footer-box">
						<h3 class="fh5co-footer-heading">More Links</h3>
						<ul class="fh5co-footer-links">
							<li><a href="#">Terms &amp; Conditions</a></li>
							<li><a href="#">Our Careers</a></li>
							<li><a href="#">Support &amp; FAQ's</a></li>
							<li><a href="#">Sign up</a></li>
							<li><a href="#">Log in</a></li>
						</ul>
					</div>
					<div class="col-md-4 col-sm-12 footer-box">
						<h3 class="fh5co-footer-heading">Get in touch</h3>
						<ul class="fh5co-social-icons">
							
							<li><a href="#"><i class="ti-google"></i></a></li>
							<li><a href="#"><i class="ti-twitter-alt"></i></a></li>
							<li><a href="#"><i class="ti-facebook"></i></a></li>	
							<li><a href="#"><i class="ti-instagram"></i></a></li>
							<li><a href="#"><i class="ti-dribbble"></i></a></li>
						</ul>
					</div>
					<div class="col-md-12 footer-box text-center">
						<div class="fh5co-copyright">
						<p>&copy; 2016 Architect Corner All Rights Reserved. <br> <a href="http://www.architectconrer.com" target="_blank">ArchitectCorner</a></p>
						</div>
					</div>
					
				</div>
				<!-- END row -->
				<div class="fh5co-spacer fh5co-spacer-md"></div>
			</div>
		</footer>
			
			
		<!-- jQuery -->
		<script src="js/jquery-1.10.2.min.js"></script>
		<!-- jQuery Easing -->
		<script src="js/jquery.easing.1.3.js"></script>
		<!-- Bootstrap -->
		<script src="js/bootstrap.js"></script>
		<!-- Owl carousel -->
		<script src="js/owl.carousel.min.js"></script>
		<!-- Magnific Popup -->
		<script src="js/jquery.magnific-popup.min.js"></script>
		<!-- Superfish -->
		<script src="js/hoverIntent.js"></script>
		<script src="js/superfish.js"></script>
		<!-- Easy Responsive Tabs -->
		<script src="js/easyResponsiveTabs.js"></script>
		<!-- FastClick for Mobile/Tablets -->
		<script src="js/fastclick.js"></script>
		<!-- Parallax -->
		<script src="js/jquery.parallax-scroll.min.js"></script>
		<!-- Waypoints -->
		<script src="js/jquery.waypoints.min.js"></script>
		<!-- Main JS -->
		<script src="js/main.js"></script>

	</body>
</html>
