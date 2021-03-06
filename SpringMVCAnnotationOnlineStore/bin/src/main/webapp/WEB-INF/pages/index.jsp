<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib
    prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" 
%>
 
<title>Online Jewelry Store</title>
 
<link href="${pageContext.request.contextPath}/resources/css/paper-kit.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/nucleo-icons.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/demo.css" rel="stylesheet" >

<!-- Core JS Files -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.12.1.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

<!--  Paper Kit Initialization and functions -->
<script src="${pageContext.request.contextPath}/resources/js/paper-kit.js?v=2.1.0"></script>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,300,700' rel='stylesheet' type='text/css'>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">

  
<style>
      @font-face { font-family: Otama-ep; src: url('${pageContext.request.contextPath}/resources/fonts/Otama-ep.otf'); } 
      
      h1 {
         font-family: Otama-ep;
         font-size: 8em;
	     opacity: 0.75;
	     -webkit-animation-name: fade_in; /* Safari 4.0 - 8.0 */
	     -webkit-animation-duration: 4s; /* Safari 4.0 - 8.0 */
	     animation-name: fade_in;
	     animation-duration: 4s;
      }
      
	
	/* Safari 4.0 - 8.0 */
	@-webkit-keyframes fade_in {
	    from {opacity: 0;}
	    to {opacity: 0.75;}
	}
	
	/* Standard syntax */
	@keyframes fade_in {
	    from {opacity: 0;}
	    to {opacity: 0.75;}
	}
</style>

</head>
<jsp:include page="_menu.jsp" />
<body>
 

		<div class="page-header" data-parallax="true" style="background-image: url('${pageContext.request.contextPath}/resources/img/index01.jpg');">
			<div class="filter"></div>
			<div class="container">
			  
			    <div class="motto text-centered">
			        	<h1>Junction Jewelers</h1> 
			        <br /> 
			        
			       <!-- <a href="${pageContext.request.contextPath}/productList" class="btn btn-outline-neutral btn-round"><i class="fa fa-play"></i>Shop</a>
			         <button type="button" class="btn btn-outline-neutral btn-round">Do Something</button> -->
			    </div>
			</div>
    	</div>
 <div class="main">
			<div class="section text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 ml-auto mr-auto">
                        <h2 class="title">Righteous Selection.</h2>
                        <h5 class="description">Rock Solid Elegance.</h5>
                        <br>
                        <a href="${pageContext.request.contextPath}/productList" class="btn btn-warning btn-round">Shop Now</a>
                    </div>
                </div>
				<br/><br/>
				<div class="row">
					<div class="col-md-3">
						<div class="info">
							<div class="icon icon-warning">
								<i class="nc-icon nc-diamond"></i>
							</div>
							<div class="description">
								<h4 class="info-title">A Unique Selection</h4>
								<p class="description">Choose from a variety of customizable items.</p>
								<a href="#pkp" class="btn btn-link btn-warning">See more</a>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="info">
							<div class="icon icon-warning">
								<i class="nc-icon nc-diamond"></i>
							</div>
							<div class="description">
								<h4 class="info-title">New Items</h4>
								<p>New arrivals just in.</p>
								<a href="#pkp" class="btn btn-link btn-warning">See more</a>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="info">
							<div class="icon icon-warning">
								<i class="nc-icon nc-diamond"></i>
							</div>
							<div class="description">
								<h4 class="info-title">For Mother</h4>
								<p>Let our hand-crafted bracelets be her next favorite accessory.</p>
								<a href="#pkp" class="btn btn-link btn-warning">See more</a>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="info">
							<div class="icon icon-warning">
								<i class="nc-icon nc-diamond"></i>
							</div>
							<div class="description">
								<h4 class="info-title">For Grandmother</h4>
								<p>Make your next gift be one she can take with her always.</p>
								<a href="#pkp" class="btn btn-link btn-warning">See more</a>
							</div>
						</div>
					</div>
				</div>

            </div>
        </div>

		<div class="section section-dark text-center">
            <div class="container">
                <h2 class="title">The Founders:</h2>
				<div class="row">
    				<div class="col-md-4">
                        <div class="card card-profile card-plain">
                            <div class="card-avatar">
                                <a href="#avatar"><img src="${pageContext.request.contextPath}/resources/img/faces/clem-onojeghuo-3.jpg" alt="..."></a>
                            </div>
                            <div class="card-body">
                                <a href="#paper-kit">
                                    <div class="author">
                                        <h4 class="card-title">Mark</h4>
                                        <h6 class="card-category">Product Manager/Techie</h6>
                                    </div>
                                </a>
                                <p class="card-description text-center">
                                [Insert Something]
                                </p>
                            </div>
                            <div class="card-footer text-center">
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-twitter"></i></a>
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-google-plus"></i></a>
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
    				</div>

    				<div class="col-md-4">
                        <div class="card card-profile card-plain">
                            <div class="card-avatar">
                                <a href="#avatar"><img src="${pageContext.request.contextPath}/resources/img/faces/joe-gardner-2.jpg" alt="..."></a>
                            </div>
                            <div class="card-body">
                                <a href="#paper-kit">
                                    <div class="author">
                                        <h4 class="card-title">Kendra</h4>
                                        <h6 class="card-category">Techie</h6>
                                    </div>
                                </a>
                                <p class="card-description text-center">
                                [Insert Something]
                                </p>
                            </div>
                            <div class="card-footer text-center">
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-twitter"></i></a>
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-google-plus"></i></a>
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
    				</div>

    				<div class="col-md-4">
                        <div class="card card-profile card-plain">
                            <div class="card-avatar">
                                <a href="#avatar"><img src="${pageContext.request.contextPath}/resources/img/faces/erik-lucatero-2.jpg" alt="..."></a>
                            </div>
                            <div class="card-body">
                                <a href="#paper-kit">
                                    <div class="author">
                                        <h4 class="card-title">Cooper</h4>
                                        <h6 class="card-category">Project Manager/Techie</h6>
                                    </div>
                                </a>
                                <p class="card-description text-center">
                                [Insert Something]
                                </p>
                            </div>
                            <div class="card-footer text-center">
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-twitter"></i></a>
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-google-plus"></i></a>
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
    				</div>
    			</div>
    			</div>
    			
    			<!--  Must Update -->
    			<div class="container">
    			<div class="row">
    				<div class="col-md-4">
                        <div class="card card-profile card-plain">
                            <div class="card-avatar">
                                <a href="#avatar"><img src="" alt="..."></a>
                            </div>
                            <div class="card-body">
                                <a href="#paper-kit">
                                    <div class="author">
                                        <h4 class="card-title">Nick</h4>
                                        <h6 class="card-category">Techie</h6>
                                    </div>
                                </a>
                                <p class="card-description text-center">
                                [Insert Something]
                                </p>
                            </div>
                            <div class="card-footer text-center">
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-twitter"></i></a>
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-google-plus"></i></a>
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
    				</div>

    				<div class="col-md-4">
                        <div class="card card-profile card-plain">
                            <div class="card-avatar">
                                <a href="#avatar"><img src="" alt="..."></a>
                            </div>
                            <div class="card-body">
                                <a href="#paper-kit">
                                    <div class="author">
                                        <h4 class="card-title">Nolan</h4>
                                        <h6 class="card-category">Project Techie</h6>
                                    </div>
                                </a>
                                <p class="card-description text-center">
                                [Insert Something]
                                </p>
                            </div>
                            <div class="card-footer text-center">
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-twitter"></i></a>
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-google-plus"></i></a>
                                <a href="#pablo" class="btn btn-link btn-just-icon btn-neutral"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
    				</div>
    			</div>
    			</div>
    			
    			
        	</div>
    	</div>

            <div class="section landing-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 ml-auto mr-auto">
                            <h2 class="text-center">Keep in touch?</h2>
                            <form class="contact-form">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Name</label>
										<div class="input-group">
	                                        <span class="input-group-addon">
	                                            <i class="nc-icon nc-single-02"></i>
	                                        </span>
	                                        <input type="text" class="form-control" placeholder="Name">
	                                    </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Email</label>
										<div class="input-group">
											<span class="input-group-addon">
												<i class="nc-icon nc-email-85"></i>
											</span>
											<input type="text" class="form-control" placeholder="Email">
										</div>
                                    </div>
                                </div>
                                <label>Message</label>
                                <textarea class="form-control" rows="4" placeholder="Tell us your thoughts and feelings..."></textarea>
                                <div class="row">
                                    <div class="col-md-4 ml-auto mr-auto">
                                        <button class="btn btn-default btn-lg btn-fill">Send Message</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!--  
   <div class="page-title">Shopping Cart Demo</div>
  <button type="button" class="btn btn-outline-default btn-round" data-toggle="modal" data-target="#myModal">
    Launch demo modal
	</button>
	Modal
	
 	
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title text-center" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body"> 
            <h3>Demo content</h3>
  
				   <ul>
				      <li>Buy online</li>
				      <li>Admin pages</li>
				      <li>Reports</li>
				   </ul>
				   </div>
  
            </div>
            <div class="modal-footer">
                <div class="left-side">
                    <button type="button" class="btn btn-default btn-link" data-dismiss="modal">Never mind</button>
                </div>
                <div class="divider"></div>
                <div class="right-side">
                    <button type="button" class="btn btn-default btn-link">Delete</button>
                </div>
            </div>
        </div>
    </div>
</div>
-->
  
  
   <jsp:include page="_footer.jsp" />
   <!--  
<div>Icons made by <a href="https://www.freepik.com" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div> 
-->
</body>
</html>