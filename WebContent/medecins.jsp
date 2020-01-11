<%@page import="Modele.medecin"%>
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

    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<<<<<<< HEAD
    
    <link rel="stylesheet" type="text/css" href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"/>
	<link rel="stylesheet" type="text/css" href="archProjMaster/css/style.css"/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> 
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
	
	
  <script>
  $.get("http://localhost:8080/e_health/GetMedcin.jsp", function(data, status){
		


		$( function() {
			var availableTags ;
			
			function split( val ) {
				return val.split( /,\s*/ );
			}
			function extractLast( term ) {
				return split( term ).pop();
			}

			$( "#tags" )
				
				.on( "keydown", function( event ) {
					if ( event.keyCode === $.ui.keyCode.TAB &&
							$( this ).autocomplete( "instance" ).menu.active ) {
						event.preventDefault();
					}
				})
				.autocomplete({
					minLength: 0,
					source: function( request, response ) {
						
						response( $.ui.autocomplete.filter(
								JSON.parse(data), extractLast( request.term ) ) );
					},
					focus: function() {
						
						return false;
					},
					select: function( event, ui ) {
						var terms = split( this.value );
						
						terms.pop();
						
						terms.push( ui.item.value );
						
						terms.push( "" );
						this.value = terms.join( "" );
						return false;
					}
				});
		} );
		
	  });
	
  </script>
=======

>>>>>>> 6213a8fbe389c64e8285a65063ec0465c7e65a77
</head>
<body style="background-color: #5f5aaa">
<!-- Content -->
<div class="">
    <!-- navbar -->
    <%@ include file="liste.jsp" %>
    <!-- navbar_end -->

    <!-- liste_medecins -->
    <!-- card_search -->
    <div class="card bg-dark text-white border border-0">
        <img src="archProjMaster/assets/medecin/medecin_card.jpg"
             class="card-img img-fluid"
             alt="stethoscope-fond-bleu"
             style="min-height: 350px">
        <div class="card-img-overlay p-5">
            <h1 class="card-title"><strong>DiagnoVit</strong></h1>
            <br><br>
            <p class="card-text">Trouvez rapidement un medecin en algerie et prenez rendez-vous</p>
            <p class="card-text">n'import quoi!!</p>

            <!-- Search -->
            
			<script>
			function getMedecin(){
				var Rmed = document.getElementById('tags').value
				document.getElementById("form_id").submit();
				 
					

				}
			</script>
            <div class="sticky-top py-4 row justify-content-center">
                <div class="col-lg-8">
                    <div class="input-group mb-2">
                    <form action="versListeMedecins" id="form_id" method="post">
                        <input id="tags" name="Rmed" type="text" class="form-control form-control-lg"  placeholder="Thesis's search">
                        <div class="input-group-prepend">
                            <div class="input-group-text rounded-right m-0 border border-secondary" style="background-color: #5f5aaa">
                                <i onclick="getMedecin()"class="fas fa-search text-white"></i>
                            </div>
                        </div>
                        </form>
                    </div>
                  
                </div>
            </div>
            <!-- Search_end -->
        </div>
    </div>
    <br>
    <br>
    <!-- card_search_end -->
     <!-- liste_medecins_end -->
<%  System.out.println("search maOKich ");

String reche = (String) request.getAttribute("search");
 if(reche!=null){
	 System.out.println("search OK ");
 ArrayList<medecin> med= (ArrayList<medecin>) request.getAttribute("med");
  if(med.size()!=0){
	  System.out.println("medecin OK ");
	  out.print("<div class=\"row justify-content-center mt-3\"> ");
	 out.print("<div class=\"col-auto\">");
     out.print("<h1 class=\"card-title text-white\"><strong>Results</strong></h1> </div> <br> </div> ");
     for(medecin item: med)
     { 
	 out.print(" <!-- card_result -->");
	 out.print(" <div class=\"container\">");
	 out.print("<!-- med_info -->");
     out.print("<div class=\"card my-3 border border-0\">");
    out.print("<div class=\"row no-gutters\" >");
   out.print(" <div class=\"col-md-4 col-sm-4\">");
	 out.print("   <img src=\"archProjMaster/assets/medecin/doc.jpg\" class=\"card-img img-fluid\" alt=\"diagnostique-coeur\"  style=\"height: 100%;\">");
	 out.print("   </div> ");
 out.print(" <div class=\"col-md-8 col-sm-8\">");
	 out.print(" <div class=\"card-body mx-3 p-5\">");
	 out.print("  <div class=\"row mb-2\">");
	 out.print("  <div class=\"col\">");
	 out.print("  <h2 class=\"card-title\"><strong>");
	 out.print(item.getNom()+" "+item.getPrenom()); 
	 out.print("</strong></h2>");
	 out.print(" </div>");
	 out.print("  </div>");
	 out.print(" <div class=\"row\">");
	 out.print("<div class=\"col\">");
     out.print("  <h3 class=\"card-text\"><strong>Medecin</strong> ");
     out.print( item.getSpecialité());
	out.print("  </h3><br> </div>");
	out.print(" </div>");
	out.print(" <div class=\"row\">");
	out.print("<div class=\"col\">");
	out.print(" <p class=\"\">");
	   out.print( item.getAdresse());
	out.print("</p>");
	out.print("</div>");
	out.print(" </div>");
	out.print(" <div class=\"row\">");
	out.print("   <div class=\"col\">");
	out.print(" <p class=\"\"><strong>Du</strong> Dimanche-Jeudi <strong>08h-12h</strong> et <strong>13h-17h</strong></p>");
	out.print(" </div>");
	out.print("</div>");
	out.print("<div class=\"row\">");
	out.print("<div class=\"col\">");
	out.print(" <p class=\"\"><strong>LE</strong> Samedi et Mardi <strong>08h-12h</strong> et <strong>13h-17h</strong></p>");
	out.print("    </div>       </div>");
	 out.print("<div class=\"row\"> <div class=\"col\">");
    out.print("<button class=\"btn btn-info\" data-toggle=\"modal\" data-target=\"#exampleModal\"> See More </button>");
   out.print("</div> </div> </div> </div> </div> </div>");
    
out.print("<!-- med_info -->");

<<<<<<< HEAD
out.print("<!-- modal_medcin -->");
out.print("<div class=\"modal fade\" id=\"exampleModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">");
 out.print("<div class=\"modal-dialog modal-lg\" role=\"document\"> <div class=\"modal-content\"> ");
 out.print("<div class=\"modal-header\"> <h5 class=\"modal-title\" id=\"exampleModalLabel\"> Modal title");
             
 out.print(" </h5> <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">");
 out.print("<span aria-hidden=\"true\"> &times; </span> </button> </div> <div class=\"modal-body\">");
 out.print("<div class=\"row\"> <div class=\"col-md-4\"> <div class=\"row justify-content-center\">");
 out.print("<div class=\"col-auto mb-3\">");
 out.print("<img class=\"rounded-circle\"src=\"archProjMaster/assets/medecin/doc.jpg\" alt=\"\"    width=\"100px\"  height=\"100px\"    style=\"border: 4px solid #5f5aaa\"      >");
 out.print("</div> <div class=\"col-auto mb-3\"> <h4> <strong> ");
 out.print(item.getNom());
         out.print("</strong>");
 out.print(item.getPrenom());
         out.print("</h4>");
         out.print("</div>");
         out.print("<div class=\"col-auto mb-3\"> Medecin");
          out.print( item.getSpecialité());
          out.print(" </div> <div class=\"col-auto mb-3\">");
         out.print( item.getTelephone());
          out.print(" </div> <div class=\"col-auto\">");
          out.print("<div class=\"row justify-content-center\"> <p>");
           
         out.print(" Dimanche-Jeudi </p> </div> <div class=\"row justify-content-center\">");
          out.print("<p> <strong>  08h-12h </strong> et <strong> 13h-17h");
        out.print("</strong> </p> </div> </div> <div class=\"col-auto\"> <div class=\"row justify-content-center\">");
          out.print("<p> Samedi et Mardi </p> </div>");
          out.print("<div class=\"row justify-content-center\"> <p> <strong> 09h30-12h </strong>  et ");
         
          out.print("<strong> 13h-15h30 </strong> </p> </div> </div> </div> </div> <div class=\"col-8\">");
         out.print("<form action=\"\" class=\"my-3\"> <div class=\"row\"> <div class=\"col-6\">");
          out.print("<input id=\"datepicker\" placeholder=\"make appointment\"/>");
           out.print("<script>   $('#datepicker').datepicker({   uiLibrary: 'bootstrap4'  });   </script> </div>   ");
       out.print(" <div class=\"col-6\">");
   out.print("<select class=\"form-control\" id=\"exampleFormControlSelect1\"> <option>Time</option>");
                                                
   out.print("<option> 9h00  </option>"); 
 out.print("<option> 10h00 </option>"); 
 out.print("<option> 11h00  </option>"); 
 out.print("<option> 13h30  </option>"); 
 out.print("<option> 14h30  </option>"); 
 out.print("<option> 15h30  </option>");
 
    out.print("</select>   </div>  </div>   </form>  <hr> <div class=\"row\">  <div class=\"col-auto\"> <h4>Address</h4> <p> ");
    
    out.print( item.getAdresse());
    
    out.print("</p> </div> </div> ");
     out.print("   <div class=\"row\"> <div class=\"col\"> <div class=\"mapouter\">");
    out.print(" <div class=\"gmap_canvas\">");                       
      out.print(" <iframe width=\"600\" height=\"500\" id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=usdb&t=&z=13&ie=UTF8&iwloc=&output=embed\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\"></iframe>") ;
       out.print("  </div>  </div> </div></div> </div>  </div> </div> </div>");
        out.print("<div class=\"modal-footer\">") ;
     out.print("<button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>") ;
     out.print("<button type=\"button\" class=\"btn btn-primary\">Appointment</button>") ;
     out.print("</div> </div> </div> </div>") ;
     
     out.print("<!-- modal_medcin_end -->") ;
=======
                            <div class="col-8">
                                <form action="" class="my-3">
                                    <div class="row">
                                        <div class="col-6">
                                            <input id="datepicker" placeholder="make appointment"/>
                                            <script>
                                                $('#datepicker').datepicker({
                                                    uiLibrary: 'bootstrap4'
                                                });
                                            </script>
                                        </div>
                                        <div class="col-6">
                                            <select class="form-control" id="exampleFormControlSelect1">
                                                <option>Time</option>
                                                <option>10h00</option>
                                                <option>11h00</option>
                                            </select>
                                        </div>
                                    </div>
                                </form>
                                <hr>
                                <div class="row">
                                    <div class="col-auto">
                                        <h4>Address</h4>
                                        <p>CitÃ© kda mena menhik B1 num 22, Birkhadem, Alger....</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="mapouter">
                                            <div class="gmap_canvas">
                                                <iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=usdb&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Appointment</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- modal_medcin_end -->

    </div>
    <!-- card_result_end -->
    <!-- liste_medecins_end -->
>>>>>>> 6213a8fbe389c64e8285a65063ec0465c7e65a77

    out.print("</div>") ;
    out.print("   <!-- card_result_end -->") ;
     out.print("  <!-- liste_medecins_end -->") ;
     } }  }  %>
    <br>
    <br>
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
