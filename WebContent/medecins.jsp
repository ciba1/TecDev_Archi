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
                    <form action="versListeMedecins" id="form_id" method="post">
                     <div class="input-group mb-2">
                       <input id="tags" name="Rmed" type="text" class="form-control form-control-lg"  placeholder="Thesis's search">
                        <div class="input-group-prepend">
                            <div class="input-group-text rounded-right m-0 border border-secondary" style="background-color: #5f5aaa">
                                <i onclick="getMedecin()" class="fas fa-search text-white"></i>
                            </div>
                        </div>
                       
                    </div>
                   </form>
                </div>
            </div>
            <!-- Search_end -->
        </div>
    </div>
    <br>
    <br>
    <!-- card_search_end -->
     <!-- liste_medecins_end -->
<%   String reche =(String) request.getAttribute("search");
if(reche!=null){
	 
ArrayList<medecin>med= (ArrayList<medecin>) request.getAttribute("med");
 if(med.size()!=0){
out.print("<div class='row justify-content-center mt-3'>");
        out.print("<div class='col-auto'>");
            out.print("<h1 class='card-title text-white'>");
out.print("<strong> Results ");

out.print("</strong>"); out.print("</h1>");
        out.print("</div>");
        out.print("<br>");
    out.print("</div>");
for(medecin item: med)
    {
    out.print("<!-- card_result -->");
    out.print("<div class='container'>");
        out.print("<!-- med_info -->");
        out.print("<div class='card my-3 border border-0 '>");
            out.print("<div class='row no-gutters' >");
                out.print("<div class='col-md-4 col-sm-4 '>");
                    out.print("<img src='archProjMaster/assets/medecin/doc.jpg' class='card-img img-fluid' alt='diagnostique-coeur'  style='height: 100%;'>");
                out.print("</div>");
                out.print("<div class='col-md-8 col-sm-8'>");
                    out.print("<div class='card-body mx-3 p-5'>");
                        out.print("<div class='row mb-2'>");
                            out.print("<div class='col'>");
                                out.print("<h2 class='card-title'>");out.print("<strong>"); out.print(item.getNom()+" "+item.getPrenom()); out.print("</strong>");out.print("</h2>");
                            out.print("</div>");
                        out.print("</div>");
                        out.print("<div class='row'>");
                            out.print("<div class='col'>");
                                out.print("<h3 class='card-text'>");out.print("<strong> Medecin ");  out.print("</strong> <br>"); out.print( item.getSpecialité()); out.print("</h3>");out.print("<br>");
                            out.print("</div>");
                        out.print("</div>");
                        out.print("<div class='row'>");
                            out.print("<div class='col'>");
                                out.print("<p class=''>"); out.print( item.getAdresse()); out.print("</p>");
                            out.print("</div>");
                        out.print("</div>");
                        out.print("<div class='row'>");
                            out.print("<div class='col'>");
                                out.print("<p class=''>");out.print("<strong> Du "); out.print("</strong> Dimanche-Jeudi");  out.print("<strong> 08h-12h ");out.print("</strong>  et "); out.print("<strong> 13h-17h ");out.print("</strong>");out.print("</p>");
                            out.print("</div>");
                        out.print("</div>");
                        out.print("<div class='row'>");
                            out.print("<div class='col'>");
                                out.print("<p class=''>");out.print("<strong>LE "); out.print("</strong> Samedi et Mardi");  out.print("<strong> 08h-12h ");out.print("</strong> et "); out.print("<strong> 13h-17h"); out.print("</strong>");out.print("</p>");
                            out.print("</div>");
                        out.print("</div>");
                        out.print("<div class='row'>");
                            out.print("<div class='col'>");
                                out.print("<button class='btn btn-info' data-toggle='modal' data-target='#exampleModal'> See More");out.print("</button>");
                            out.print("</div>");
                        out.print("</div>");
                    out.print("</div>");
                out.print("</div>");
            out.print("</div>");
        out.print("</div>");
        out.print("<!-- med_info -->");

        out.print("<!-- modal_medcin -->");
        out.print("<div class='modal fade' id='exampleModal' tabindex='-1' role='dialog' aria-labelledby='exampleModalLabel' aria-hidden='true'>");
            out.print("<div class='modal-dialog modal-lg' role='document'>");
                out.print("<div class='modal-content'>");
                    out.print("<div class='modal-header'>");
                        out.print("<h5 class='modal-title' id='exampleModalLabel'> Modal title"); out.print("</h5>");
                        out.print("<button type='button' class='close' data-dismiss='modal' aria-label='Close'>");
                            out.print("<span aria-hidden='true'> &times; ");out.print("</span>");
                        out.print("</button>");
                    out.print("</div>");
                    out.print("<div class='modal-body'>");

                        out.print("<div class='row'>");

                            out.print("<div class='col-md-4'>");
                                out.print("<div class='row justify-content-center'>");
                                    out.print("<div class='col-auto mb-3'>");
                                        out.print("<img class='rounded-circle' src='archProjMaster/assets/medecin/doc.jpg' alt='' width='100px' height='100px' style='border: 4px solid #5f5aaa' >");
                                    out.print("</div>");
                                    out.print("<div class='col-auto mb-3'>");
                                        out.print("<h4>");
                                            out.print("<strong>");out.print(item.getNom()); out.print("</strong>"); 
                                  out.print(item.getPrenom());
                                        out.print("</h4>");
                                    out.print("</div>");
                                    out.print("<div class='col-auto mb-3'>Medecin <br>");  out.print( item.getSpecialité() );out.print("</div>");
                                    out.print("<div class='col-auto mb-3'>");  out.print( item.getTelephone() );out.print("</div>");
                                    out.print("<div class='col-auto'>");
                                        out.print("<div class='row justify-content-center'>");
                                            out.print("<p>Dimanche-Jeudi ");  out.print("</p>");
                                        out.print("</div>");
                                        out.print("<div class='row justify-content-center'>");
                                            out.print("<p>");out.print("<strong> 08h-12h "); out.print("</strong> et ");  out.print("<strong> 13h-17h "); out.print("</strong>"); out.print("</p>");
                                        out.print("</div>");
                                    out.print("</div>");
                                    out.print("<div class='col-auto'>");
                                        out.print("<div class='row justify-content-center'>");
                                            out.print("<p>Samedi et Mardi"); out.print("</p>");
                                        out.print("</div>");
                                        out.print("<div class='row justify-content-center'>");
                                            out.print("<p>");out.print("<strong> 09h30-12h "); out.print("</strong> et");  out.print("<strong> 13h-15h30 "); out.print("</strong>"); out.print("</p>");
                                        out.print("</div>");
                                    out.print("</div>");
                                out.print("</div>");
                            out.print("</div>");

                            out.print("<div class='col-8'>");
                                out.print("<form action='RV' method='post' id='fRV' class='my-3'>");
                                    out.print("<div class='row'>");
                                        out.print("<div class='col-6'>");
                                            out.print("<input name='jour' id='datepicker' placeholder='make appointment'/>");
                                            out.print("<script>   $('#datepicker').datepicker({  uiLibrary: 'bootstrap4'  }); </script> ");
                                           
                                        out.print("</div>");
                                        out.print("<div class='col-6'>");
                                            out.print("<select name='heure' form='fRV' class='form-control' id='exampleFormControlSelect1'>");
                                                out.print("<option> Time </option>");
                                                out.print("<option> 9:00  </option>");; 
                                                 out.print("<option> 10:00 </option>");
                                                 out.print("<option> 11:00 </option>"); 
                                                  out.print("<option> 13:30  </option>"); 
                                                  out.print("<option> 14:30 </option>"); 
                                                   out.print("<option> 15:30  </option>");
                                            out.print("</select>");
                                        out.print("</div>");
                                    out.print("</div>");
                                out.print("</form>");
                                out.print("<hr>");
                                out.print("<div class='row'>");
                                    out.print("<div class='col-auto'>");
                                        out.print("<h4> Address "); out.print("</h4>");
                                        out.print("<p>"); 
                                      out.print( item.getAdresse());
                                         out.print("</p>");
                                    out.print("</div>");
                                out.print("</div>");
                                out.print("<div class='row'>");
                                    out.print("<div class='col'>");
                                        out.print("<div class='mapouter'>");
                                            out.print("<div class='gmap_canvas'>");
                                                out.print("<iframe width='600' height='500' id='gmap_canvas' src='https://maps.google.com/maps?q=usdb&t=&z=13&ie=UTF8&iwloc=&output=embed' frameborder='0' scrolling='no' marginheight='0' marginwidth='0'>");out.print("</iframe>");
                                            out.print("</div>");
                                        out.print("</div>");
                                    out.print("</div>");
                                out.print("</div>");
                            out.print("</div>");

                        out.print("</div>");

                    out.print("</div>");

                    out.print("<div class='modal-footer'>");
                        out.print("<button type='button' class='btn btn-secondary' data-dismiss='modal'> Close"); out.print("</button>");
                        out.print("<button form='fRV' type='submit'  type='button' class='btn btn-primary'> Appointment"); out.print("</button>");
                    out.print("</div>");
                out.print("</div>");
            out.print("</div>");
        out.print("</div>");
        out.print("<!-- modal_medcin_end -->");

    out.print("</div>");
}}}%>
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
