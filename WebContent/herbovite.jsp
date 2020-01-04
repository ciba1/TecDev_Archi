<%@ page import=" src.medicament,java.util.ArrayList" %>

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


    <!-- DAtatable -->
    <link rel="stylesheet" type="text/css" href="archProjMaster/style/datatable.css">
    <link rel="stylesheet" type="text/css" href=" https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css   ">


    <script charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script charset="utf8" src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
    <script charset="utf8" src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>

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

    <!--page_header -->

    <!-- page_header_end -->

    <!-- Tableau_pharmavit -->
    <div class="my-5 container-fluid">
        <div style="position: relative">
            <div class="herbovite" style="height: 300px"></div>
            <div class="herbovite_text">
                <h2>HerboVite</h2>
                <h4>By</h4>
                <h1 style="font-size:50px">DIAGNOVITE</h1>
                <p>Le dictionnaire des m√©dicaments</p>
            </div>
        </div>

        <div class="my-5">
            <table id="example" class="table table-striped" style="width:100% ;background-color: #a9a7e5">
                <thead>
                <tr>
                    <th>Nom</th>
                    <th>effets</th>
                   <th>Prix</th>
                    
                </tr>
                </thead>
                <tbody>
               
                    <% 
                  ArrayList<medicament> med = (ArrayList<medicament>) request.getAttribute("med");
		      
		     for(medicament item: med){
		    	 out.print("<tr><td>"); 
		    	 out.print(item.getLable());  
		         out.print("</td><td>");
	             out.print(item.getEffets());  
		         out.print("</td><td>");
                 out.print(item.getPrix()); 
                 out.print("</td></tr>");
            //testi psk maraho ybanli Ècrakk
              }
                     %>    
		  
                 </tbody>
                <tfoot>
                <tr>
                    <th>Nom</th>
                    <th>effets</th>
                    <th>Prix</th>
                    
                </tr>
                </tfoot>
            </table>
        </div>
    </div>
    <!-- Tableau_pharmavit_end -->

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
<script>
    $(document).ready(function() {
        $('#example').DataTable();
    } );
</script>
</html>
