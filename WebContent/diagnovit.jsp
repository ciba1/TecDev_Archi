<% @page import="src.maladiePossedeSymptome"%>
<%@page import="java.util.ArrayList"%>
<%@page import="src.maladie"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>pro_arch_b</title>

    <link rel="stylesheet" href="archProjMaster/css/bootstrap.min.css">

    <!-- navbar -->
    <link rel="stylesheet" type="text/css" href="archProjMaster/style/home.css">
    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" />

     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script> 
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" type="text/css" href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"/>
	<link rel="stylesheet" type="text/css" href="archProjMaster/css/style.css"/>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> 
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
	<script src="archProjMaster/js/autocomplete.multiselect.js"></script>

</head>
<body style="background-color: #5f5aaa;">

<!-- Content -->
<div class="">


    <!-- navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #37346b">

        <!-- toglle_nav -->
        <span class="navbar-toggler-icon
                         navbar-toggler
                         bg-info"
              type="button"
              data-toggle="collapse"
              data-target="#navbarTogglerDemo03"
              aria-controls="navbarTogglerDemo03"
              aria-expanded="false"
              aria-label="Toggle navigation">
            </span>
        <!-- toglle_nav_end -->

        <!-- LOGO -->
        <a class="navbar-brand text-white" href="#">
             <img src="archProjMaster/assets/logo_health.svg" width="65" height="65" class="d-inline-block align-top" alt="">
          </a>
        <!-- LOGO_end -->
-
        <!-- List -->
        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item">
                 <a class="nav-link text-white text-center" href="/e_health/home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white text-center" href="/e_health/home.jsp#doctor">Consultation</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white text-center " href="/e_health/home.jsp#doctor" >Doctors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white text-center" href="/e_health/home.jsp#drugs">Drugs</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link text-white text-center" href="/e_health/home.jsp#contact">Contacts<span class="sr-only">(current)</span></a>
                 </li>
            </ul>
        </div>
        <!-- List_end -->

    </nav>
    <!-- navbar_end -->

    <!-- card_search -->
    <div class="card bg-dark text-white border border-0">
        <img src="archProjMaster/assets/diagnovit/stethoscope-fond-bleu.jpg"
             class="card-img img-fluid"
             alt="stethoscope-fond-bleu"
             style="min-height: 350px">
        <div class="card-img-overlay p-5">
            <h1 class="card-title"><strong>DiagnoVit</strong></h1>
            <br><br>
            <p class="card-text">DiagnoVit vous aide a chercher n'importe quel maladie a partir des Symptomes entrée dans la barre recherche </p>
            <p class="card-text">tapez vos Syptomes et voir les resultat </p>

            <!-- Search -->
            <div class="sticky-top py-4 row justify-content-center">
                <div class="col-lg-8">
                    <div class="input-group mb-2">
                       <input name="search" type="text" class="form-control form-control-lg" id="myAutocompleteMultiple" >
                        <div  class="input-group-prepend">
                            <div class="input-group-text rounded-right m-0 border border-secondary" style="background-color: #5f5aaa">
                                 
                    
                                <i class="fas fa-search text-white"></i>
                              
                            </div>
                        </div>
                         
                    </div>
                    <p class="card-text">tapez just des mots....</p>
                </div>
            </div>
            <script type="text/javascript">
	$(function(){
		$.get("http://localhost:8080/e_health/GetSearche.jsp"
				, function(data){
					$('#myAutocompleteMultiple').autocomplete({
						source: $.parseJSON(data),
						multiselect: true
					});
		  });

		
	});
</script>
            <!-- Search_end -->
        </div>
    </div>
    <!-- card_search_end -->

   

    <!-- card_result -->
    <%/*out.print(" <div class=\"row justify-content-center mt-3\"> <div class=\"col-auto\"> <h1 class=\"card-title text-white\"><strong>Results</strong></h1> </div> <br></div>");
    
   ArrayList<maladiePossedeSymptome> ms=(ArrayList<maladiePossedeSymptome>)request.getAttribute("maladiesymptome ");
   ArrayList<maladie> m=(ArrayList<maladie>)request.getAttribute("mal");//heda rehou null
   String nomMaladie ;
   int j;
   if(!ms.isEmpty()){
    for(maladiePossedeSymptome item: ms)
    { 
    	j=0;
    
    out.print("<div class=\"container\">"); 
    out.print(" <div class=\"card my-3 border border-0 \">"); 
    out.print("   <div class=\"row no-gutters\" >"); 
    out.print("    <div class=\"col-md-4 col-sm-4\">"); 
	out.print("      <img src=\"archProjMaster/assets/diagnovit/diagnostique-coeur.jpg\" class=\"card-img \" alt=\"diagnostique-coeur\"  style=\"height: 350px;\">"); 
	out.print("     </div>"); 
    out.print("   <div class=\"col-md-8 col-sm-8\">"); 
	out.print("     <div class=\"card-body mx-3 p-5\">"); 
	out.print("          <div class=\"row\">"); 
	out.print("            <h3 class=\"card-title\">");
	out.print(item.getNomMaladie());
	out.print("            </h3>"); 
	out.print("          </div>"); 
	out.print("     <div class=\"row\">"); 
    out.print("      <p class=\"card-text\">");
    out.print("            <font size=\"3\">"); 
    while(j<m.size()&&!m.get(j).getNom().equals(item.getNomMaladie())){
		j++;
	}

 out.print(m.get(j).getDiscription());
 out.print("            </font>"); 
   out.print("       </p>");
    out.print("     </div>"); 
    out.print("       <br>"); 
   /* out.print("     <div class=\"row\">"); 
    
 out.print("<button class=\"btn btn-info\">Learn More</button>"); 
    out.print("       </div>");
    out.print("   </div>"); 
    out.print("  </div>"); 
    out.print("</div>"); 
    out.print("</div>"); 
    out.print("</div>"); 
    }}
   else{   out.print(" <br> <center> <h1 class=\"card-title text-white\">   Recherche Introuvable ! </center> <br>");}
    */  %>
      
  
    <!-- Contact_information -->
    <div class="row justify-content-center pt-3 us_contact">

        <div class="col-md-2">
            <div class="row justify-content-center">
                <i class="fas fa-mobile-alt so_med"></i>
            </div>
            <div class="row justify-content-center">
                <p class="p_social_media">
                    Tel: +213-XX-XX-XX-XX
                </p>
            </div>
        </div>

        <div class="col-md-2">
            <div class="row justify-content-center">
                <i class="fas fa-envelope so_med"></i>
            </div>
            <div class="row justify-content-center">
                <p class="p_social_media">
                    TecDev@info.dz
                </p>
            </div>
        </div>

        <div class="col-md-2">
            <div class="row justify-content-center">
                <i class="fas fa-map-marker-alt so_med"></i>
            </div>
            <div class="row justify-content-center">
                <p class="p_social_media">
                    USDB, BLIDA, ALGERIA...
                </p>
            </div>
        </div>

        <div class="col-md-2">
            <div class="row justify-content-center">
                <i class="fab fa-facebook-square so_med"></i>
            </div>
            <div class="row justify-content-center">
                <p class="p_social_media">
                    TecDev_Groupe8
                </p>
            </div>
        </div>
    </div>
    <div class="row justify-content-center powredby" style="background-color: #37346b">
        <img src="archProjMaster/assets/tecdevlogo.svg" alt="tecdevlogo" height="70" width="180">
    </div>
    <!-- Contact_information_end -->


</div>
<!-- Content_end -->


</body>

</html>
