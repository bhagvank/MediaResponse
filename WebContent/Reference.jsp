<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.architectcorner.ai.citi.sandbox.services.*" %>
    <%@ page import="com.architectcorner.ai.platform.util.*" %>
    <%@ page import="java.util.*" %>
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

    <%
  //String code = request.getParameter("code");
    
    //String uuid = request.getParameter("uuid");
    
        String code = "AAEkNTk0YzUyNGUtZGNlNS00MzFmLWFmZTgtM2EwOTkzNTdhMjFkhI6-aijM_ssbLIbdYuRtSI_S_zpDNorIvtF778Icpsji8QDcpCTB3zv2Q8DuCAa4BV2pIbm7n9vrHWLxHa2be4IzzdhEgj_aoOBSiStFgaj5fQEK2EpxZcRfuro8FKeD31aYxgmcAop8tAYIp2JN8A";

        String uuid = "b1025c3b-e11d-4a24-8c00-fdd33795990d";
    %>
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
									<a href="index.jsp" class="active">Home</a>
								</li>
								<li>
									<a href="right-sidebar.html">Dashboard</a>
									 		<ul class="fh5co-sub-menu">
												<li><A HREF="Dashboard.jsp"> Networking</A> </li>
												<li><a href="Finance.jsp">Finance</a></li>
											</ul>
								</li>
								<li>
									<a href="right-sidebar.html" class="active">Banking</a>
									 		<ul class="fh5co-sub-menu">
												<li><A HREF="Customers.jsp"> Customers</A> </li>
												<li><a href="Reference.jsp">Reference Data</a></li>
												<li><a href="OnBoarding.jsp">OnBoarding</a></li>
												<li><a href="Cards.jsp">Cards</a></li>
												<li><a href="MoneyMovement.jsp">Money Movement</a></li>
												<li><a href="PayWithPoints.jsp">PayWithPoints</a></li>
											</ul>
								</li>
								<li>
									<a href="right-sidebar.html">Compliance</a>
									 		<ul class="fh5co-sub-menu">
												<li><A HREF="nonspeech.jsp"> Risk Analysis</A> </li>
												<li><a href="Compliance_Upload.jsp">Compliance Data Upload</a></li>
											</ul>
								</li>
								<li><a href="right-sidebar.html">Threat Detection</a>
									 		<ul class="fh5co-sub-menu">                                              
                                                 <li><A HREF="socialmedianalysis.jsp">Social Media Analysis</A></li>
                                                 <li><a href="ThreatDetectionFeeds.jsp" class="active">Threat Detection Upload</a></li>
                                                 
											</ul>
								</li>
								<li><a href="right-sidebar.html">Data As a Service</a>
									 		<ul class="fh5co-sub-menu">
												 <li><A HREF="Paas.jsp">Data Application</A> </li>                                              
                                                 <li><A HREF="Entities.jsp">Entities</A></li>
                                                 <li><a href="DataUpload.jsp">Data Upload</a></li>
                                                 
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
		
		
		<%
   //String code = request.getParameter("code");
   ReferenceService service = new ReferenceService();
   String responseJSon = service.getResponseJSon(code,uuid);
  // out.println(responseJSon);
   
   JsonParser parser = new JsonParser();
   List<Map<String,String>> collection = parser.getData(responseJSon,"referenceDataDetails");


       %>

		<div id="fh5co-main">
			
			<div class="fh5co-cards">
				<div class="container-fluid">
					<div class="row animate-box">
						<div class="col-md-12 heading text-center">
						
						<h2>&nbsp</h2>
						<h2>&nbsp</h2>
						<h2>Reference</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">         
			               <table border=1>
									<% 
									
									Map<String,String> row = collection.get(0);
									
									if(row != null)
									{
										out.println("<tr>");
									
                                        Set<String> keySet = row.keySet();
										
										for(String key:keySet)
										{
											out.println("<th>"+key+"</th>");
										}
										
										out.println("</tr>");
									}
									for(Map<String,String> reference : collection)
									{
										out.println("<tr>");
										
                                       Set<String> keySet = row.keySet();
										
										for(String key:keySet)
										{
											String value = reference.get(key);
											
											if(value != null)
											{
											  out.println("<td>"+value+"</td>");
											}
											else
											{
											  out.println("<td>&nbsp</td>");
											}
										}
										
										out.println("</tr>");
										
									}
									
									%>
									</table>
								</div>
							</a>
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
