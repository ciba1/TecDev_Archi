
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
x            </span>
        <!-- toglle_nav_end -->

        <!-- LOGO -->
        <a class="navbar-brand text-white" href="#">
            <img src="archProjMaster/assets/logo_health.svg" width="65" height="65" class="d-inline-block align-top" alt="">
        </a>
        <!-- LOGO_end -->

        <!-- List -->
        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <!-- list_menu -->
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item">
                    <a class="nav-link text-white text-center" href="/e_health/home.jsp">Home</a>

                </li>
                <li class="nav-item">
                    <a class="nav-link text-white text-center" href="#doctor">Consultation</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white text-center" href="#doctor"  >Doctors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white text-center" href="#drugs">Drugs</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link text-white text-center" href="#contact">Contacts<span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <!-- list_menu_end -->

            <!-- Sign_IN -->
           <%  String user =(String)session.getAttribute("user");
           
            int idUser  = 1;
            if(false){	
            out.print("<form class='form-inline my-2 my-lg-0 mx-2' action='Connexion' method='get'>");
            out.print("  <button name='login' class='btn btn-outline-success my-2 my-sm-0' type='submit' >SignIN</button>");
            out.print("</form>");
            out.print("<!-- Sign_IN_end -->");

           }
            else{
            	out.print("<h3 style='font-size:18px;color:green;'>"+user+"</h3>&nbsp&nbsp&nbsp&nbsp");
            }
            %>         
           <!-- Sign_UP -->
           
           <button onclick="window.location.href = 'http://localhost:8080/e_health/index?page=logout';" class='btn btn-outline-success my-2 sm' type='submit'>Logout</button>
           
            <!-- Sign_UP_end -->
        </div>
        <!-- List_end -->

    </nav>
    <!-- navbar_end -->