<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.*" %>
    <%@ page import="com.architectcorner.ai.platform.businessdelegate.*" %>
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
											</ul>
								</li>
								<li><a href="right-sidebar.html">Threat Detection</a>
									 		<ul class="fh5co-sub-menu">                                              
                                                 <li><A HREF="socialmedianalysis.jsp">Social Media Analysis</A></li>
                                                 
											</ul>
								</li>
								<li><a href="right-sidebar.html" class="active">Data As a Service</a>
									 		<ul class="fh5co-sub-menu">
												 <li><A HREF="Paas.jsp">Data Application</A> </li>                                              
                                                 <li><A HREF="Entities.jsp" class="active">Entities</A></li>
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
		
		 String entityName = request.getParameter("entityName");
		 String searchValue = request.getParameter("searchValue");
		 String fieldName = request.getParameter("fieldName");
		  BigDataDelegate dataDelegate = new BigDataDelegate();
		
		  List<String> fields = new ArrayList();
		  fields.add("Fieldname");
		  fields.add("FieldType");
		  
		  List<Map<String,String>> entities = dataDelegate.getRecords("DAAS", entityName+"Type", fields);
		 
		  List<String> entityFields = new ArrayList();
		  for(Map<String,String> entity: entities)
          {
        	  
        	  Iterator<String> keyIterator = entity.keySet().iterator();
        	  
        	  while(keyIterator.hasNext())
        	  {
        		  String key = keyIterator.next();
        		  
        		  String value = entity.get(key);
        		  //store fieldName and fieldValues
        		  
        		  if(key.equals("Fieldname"))
        		  {
        		      entityFields.add(value);    
        		  }
        		  else if(key.equals("FieldType"))
        		  {
        			  
        		  }
        		  
        	  }
          }
		  entityFields.add("_id");
		  
		  Map<String,String> fieldValues = new HashMap();
		  fieldValues.put(fieldName, searchValue);
		  List<Map<String,String>> searchEntities = dataDelegate.getRecord("DAAS", entityName,fieldValues, entityFields);
		%>
		
		<div id="fh5co-main">
			
			<div class="fh5co-cards">
				<div class="container-fluid">
					
			       <div class="row">
						<div class="col-md-3">
						 <p>
			              Update <%= entityName %>
			               </p>
			            </div>
			       </div>
			        <div class="row">
						<div class="col-md-3">         
			               <table border=1>
			               <form action="UpdateSelectedEntity.jsp" method="get">
			               <input type="hidden" name="entityName" id="entityName" value="<%= entityName %>">
			               <input type="hidden" name="fieldName" id="fieldName" value="<%= fieldName %>">
			               <input type="hidden" name="searchValue" id="searchValue" value="<%= searchValue %>">
			               <table border=1>
			               <tr>
			               <%
			               
			               for(String field: entityFields)
			                  {
			            	      if(!field.contentEquals("_id"))
		                		    {
			                    	   out.println("<th>");
			                    	   out.println(field);
			                    	   out.println("</th>");
			                    	}
			                  }
			               %>
			               <th>Update</th>			               
			               </tr>
			                 <%
			                  for(Map<String,String> entity: searchEntities)
			                  {
			                	  
			                	  out.println("<tr>");
			                	   
			                	  for(String field: entityFields)
			                	  {
			                	                		  
			                		  String value = entity.get(field);
			                		  
			                		  
			                		  if(field.contentEquals("_id"))
			                		  {
			                		  out.println("<td>");
				                	  out.println("<A HREF=UpdateSelectedEntity.jsp?name="+entityName+"&_id="+value+">Update</A>");
				                	  out.println("</td>");
			                		  }
			                		  else
			                		  {
			                			  out.println("<td>");
				                		  out.println(value);
				                		  out.println("</td>"); 
			                		  }
			                	  }
			                	 
			                	  out.println("</tr>");
			                  }
			               
			               %>
			              </table>
			               </form>
			            </div>
				   </div>
			     </div>

			<!-- END container -->


		   </div>
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
