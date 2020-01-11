<%@ page pageEncoding="UTF-8" %>
<%@page import="Modele.medicament"%>
<%@page import="java.util.ArrayList"%>

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
  <%@ include file="liste.jsp" %>
    <!-- navbar_end -->

    <!--page_header -->

    <!-- page_header_end -->

    <!-- Tableau_pharmavit -->
    <div class="my-5 container-fluid">
        <div style="position: relative">
            <div class=" pharmavit" style="height: 300px"></div>
            <div class="pharmavit_text">
                <h2>PharmaVite</h2>
                <h4>By</h4>
                <h1 style="font-size:50px">DIAGNOVITE</h1>
                <p>Le dictionnaire des médicaments</p>
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
              ArrayList<medicament> med=(ArrayList<medicament>)request.getAttribute("medph");
		   for(medicament i:med) {
		    	 out.print("<tr>"); 
		    	
		    	 out.print("<td> "); 
		            out.print(i.getLable());  
		         out.print("</td>"); 
		        
		         out.print("<td> "); 
		            out.print(i.getEffets());  
		         out.print("</td>"); 
                     
                out.print("<td>");  
                    out.print(i.getPrix()); 
                out.print("</td>");
                
                 out.print("</tr>"); 
 		    	     
		     }   %>    
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
