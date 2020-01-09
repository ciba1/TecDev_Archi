<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>pro_arch_b</title>
<<<<<<< HEAD:WebContent/admin.html
    <link rel="stylesheet" type="text/css" href="archProjMaster/admin.css">
=======
    <link rel="stylesheet" href="archProjMaster/style/admin.css">
>>>>>>> d43b393f72a1c014a5bbcdf9a565c3b83e8d3d29:WebContent/admin.jsp

    <link rel="stylesheet" href="archProjMaster/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" />

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <!-- import plugin script -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

    <!-- DAtatable -->
    <link rel="stylesheet" type="text/css" href="style/datatable.css">

    <link rel="stylesheet" type="text/css" href=" https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css   ">


    <script charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script charset="utf8" src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
    <script charset="utf8" src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>

</head>
<body style="background-color: #a9a7ce;">
<div class="page-wrapper chiller-theme toggled">
<a id="show-sidebar" class="btn btn-sm text-white" href="#" style="background-color: #37346b">
<i class="fas fa-bars"></i>
</a>
<nav id="sidebar" class="sidebar-wrapper">
<div class="sidebar-content">
<div class="sidebar-brand">
<a href="#" class="row justify-content-center">
<img src="assets/tecdevlogo.svg" alt="" height="100" width="100">
</a>
<div id="close-sidebar">
<i class="fas fa-times"></i>
</div>
</div>
<div class="sidebar-header">
<div class="user-pic">
<img class="img-responsive img-rounded"
src="assets/harouz.jpg"
alt="User picture"
style="border-radius: 50%; height: 55px; width: 55px"
>
</div>
<div class="user-info">
<span class="user-name">ADMIN
<strong>Admin</strong>
</span>
<span class="user-role">Administrator</span>
<span class="user-status">
<i class="fa fa-circle"></i>
<span>Online</span>
</span>
</div>
</div>
<div class="sidebar-menu">
<ul>
<li class="header-menu">
<span>General</span>
</li>
<li id="dashboard_clk" class="sidebar-dropdown">
<a href="#">
<i class="fa fa-tachometer-alt"></i>
<span>Dashboard</span>
<span class="badge badge-pill badge-warning">New</span>
</a>
<div class="sidebar-submenu">
<ul>
<li>
<a href="#">Dashboard 1
<span class="badge badge-pill badge-success">Pro</span>
</a>
</li>
<li>
<a href="#">***</a>
</li>
</ul>
</div>
</li>
<li class="sidebar-dropdown">
<a href="#">
<i class="fas fa-heartbeat"></i>
<span>E-Health</span>
<span class="badge badge-pill badge-danger">3</span>
</a>
<div class="sidebar-submenu">
<ul>
<li>
<a href="#">***</a>
</li>
</ul>
</div>
</li>
<li id="drug_clk">
<a href="#">
<i class="fas fa-pills"></i>
<span>Drugs</span>
</a>
</li>
<li id="herbo_clk">
<a href="#">
<i class="fab fa-pagelines"></i>
<span>Herbos</span>
</a>
</li>
<li id="doctor_clk">
<a href="#">
<i class="fas fa-user-md"></i>
<span>Doctors</span>
</a>
</li>
<li id="patient_clk">
<a href="#">
<i class="fas fa-user-injured"></i>
<span>Patients</span>
</a>
</li>
</ul>
</div>
<!-- sidebar-menu  -->
</div>
<!-- sidebar-content  -->
<div class="sidebar-footer">
<a href="#">
<i class="fa fa-bell"></i>
<span class="badge badge-pill badge-warning notification">3</span>
</a>
<a href="#">
<i class="fa fa-envelope"></i>
<span class="badge badge-pill badge-success notification">7</span>
</a>
<a href="#">
<i class="fa fa-cog"></i>
<span class="badge-sonar"></span>
</a>
<a href="#">
<i class="fa fa-power-off"></i>
</a>
</div>
</nav>
<!-- sidebar-wrapper  -->
    <main class="page-content">
    <div class="container-fluid">

    <div id="dash_main">

    <!-- nbr -->
    <div class="row">

    <!-- nbr_doctor -->
    <div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-top-primary shadow h-100 py-2">
    <div class="card-body">
    <div class="row no-gutters align-items-center">
    <div class="col mr-2">
    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Doctors (Specialty)</div>
    <div class="h5 mb-0 font-weight-bold  text-gray-800"><span class="badge badge-pill badge-primary">40 / 10</span></div>
    </div>
    <div class="col-auto">
    <i class="fas fa-user-md fa-3x text-primary"></i>
    </div>
    </div>
    </div>
    </div>
    </div>
    <!-- nbr_doctor_end -->

    <!-- nbr_patient -->
    <div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-top-danger shadow h-100 py-2">
    <div class="card-body">
    <div class="row no-gutters align-items-center">
    <div class="col mr-2">
    <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">patients</div>
    <div class="h5 mb-0 font-weight-bold  text-gray-800"><span class="badge badge-pill badge-danger">$40,000</span></div>
    </div>
    <div class="col-auto">
    <i class="fas fa-user-injured fa-3x text-danger"></i>
    </div>
    </div>
    </div>
    </div>
    </div>
    <!-- nbr_patient_end -->

    <!-- nbr_drugs -->
    <div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-top-warning shadow h-100 py-2">
    <div class="card-body">
    <div class="row no-gutters align-items-center">
    <div class="col mr-2">
    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Drugs - Type</div>
    <div class="h5 mb-0 font-weight-bold"><span class="badge badge-pill badge-warning">40 - 10</span></div>
    </div>
    <div class="col-auto">
    <i class="fas fa-pills fa-3x text-warning"></i>
    </div>
    </div>
    </div>
    </div>
    </div>
    <!-- nbr_drugs_end -->

    <!-- nbr_herbo -->
    <div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-top-success shadow h-100 py-2">
    <div class="card-body">
    <div class="row no-gutters align-items-center">
    <div class="col mr-2">
    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">herbo - type</div>
    <div class="h5 mb-0 font-weight-bold text-success "><span class="badge badge-pill badge-success">40 - 10</span></div>
    </div>
    <div class="col-auto">
    <i class="fab fa-pagelines  fa-3x text-success"></i>
    </div>
    </div>
    </div>
    </div>
    </div>
    <!-- nbr_herbo_end -->
    </div>
    <!-- nbr-end -->


    <div class="row">
    <!-------Line chart------->
    <div class="col-xl-8 col-lg-7">
    <div class="card shadow mb-4">

    <div class="card-header py-3" style="background-color: #37346b">
    <h6 class="m-0 font-weight-bold text-white">Line chart</h6>
    </div>

    <div class="card-body">
    <div class="chart">
    <!-- line chart canvas element -->
    <canvas id="line-chart"
    ></canvas>
    </div>
    </div>

    </div>
    </div>

    <!-------Pie chart------->
    <div class="col-xl-4 col-lg-5">
    <div class="card shadow mb-4">

    <div class="card-header py-3" style="background-color: #37346b">
    <h6 class="m-0 font-weight-bold text-white">Pie chart</h6>
    </div>

    <div class="card-body mt-4">
    <!---Pass data as an object-->
    <div class="chart">
    <!-- line chart canvas element -->
    <canvas id="doughnut-chart"
    ></canvas>
    </div>
    <!---Pass data as an array-->
    <!--pie-chart :data="{'Blueberry': 44, 'Strawberry': 23}"></pie-chart-->
    </div>

    </div>
    </div>
    </div>
    </div>

        <!-- doctors_main -->
        <div style="display: none" id="doc_crud">

            <div class="row">
                <div class="col-12" style="position: relative">
                    <div class="row doctors_main"></div>
                    <div class="row herbovite_text m-5 justify-content-center">
                        <img src="archProjMaster/assets/tecdevlogo.svg"
                             alt=""
                             style="margin-top: 0px; max-height: 100%"
                        >
                    </div>
                </div>
            </div>

            <!-- doctors crud -->
            <div class="row doctors_card">
                <div class="col-12">
                    <div class="card shadow mb-4">

                        <div class="card-header py-3" style="background-color: #37346b">
                            <h6 class="m-0 font-weight-bold text-white">Doctors CRUD</h6>
                        </div>

                        <div class="card-body" style="background-color: #5f5aaa">
                            <div>
                                <label for="btn_add_doc" class="text-white mr-3">Ajoutez Docteur</label>
                                <button id="btn_add_doc"
                                        class="btn btn-outline-light"
                                        data-toggle="modal"
                                        data-target="#doc_modal"
                                >
                                    <i class="fas fa-user-plus"></i>
                                </button>

                                <!-- doc modal add -->
                                <div class="modal fade"
                                     id="doc_modal"
                                     tabindex="-1"
                                     role="dialog"
                                     aria-labelledby="exampleModalLabel"
                                     aria-hidden="true"
                                >
                                    <div class="modal-dialog modal-lg" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                                <button type="button"
                                                        class="close"
                                                        data-dismiss="modal"
                                                        aria-label="Close"
                                                >
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">

                                                <form action="">

                                                    <div class="row">

                                                        <div class="col-md-4">
                                                            <div class="row">
                                                                <div class="col-12 mb-3">
                                                                    <img class="rounded-circle"
                                                                         src="archProjMaster/assets/admin/ava_doc.png"
                                                                         alt=""
                                                                         width="150px"
                                                                         height="150px"
                                                                         style="border: 4px solid #5f5aaa"
                                                                    >
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <div class="custom-file">
                                                                <label for="customFile">Ajouter Photo</label>
                                                                <input type="file" class="custom-file-input" id="customFile">
                                                                <label class="custom-file-label" for="customFile">Choose file</label>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-4">
                                                            <input type="text" class="form-control" id="nom_d" placeholder="Nom">
                                                        </div>

                                                        <div class="col-md-4">
                                                            <input type="text" class="form-control" id="prenom_d" placeholder="Prenom">
                                                        </div>
                                                    </div>

                                                    <hr>

                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <input type="text" class="form-control" id="adr_d" placeholder="Address">
                                                        </div>

                                                        <div class="col-md-4">
                                                            <input type="text" class="form-control" id="num_d" placeholder="Num">
                                                        </div>

                                                        <div class="col-md-4">
                                                            <select id="spe_c_d" class="form-control">
                                                                <option selected>Choose Spec</option>
                                                                <option>1</option>
                                                                <option>2</option>
                                                                <option>Autre</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <hr>

                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <input type="password" class="form-control" id="pass_d" placeholder="Password">
                                                        </div>

                                                        <div class="col-md-4">
                                                            <input type="password" class="form-control" id="pass_c_d" placeholder="Confirm">
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>

                                            <div class="modal-footer">
                                                <button type="button"
                                                        class="btn btn-secondary"
                                                        data-dismiss="modal"
                                                >Close</button>
                                                <button type="button" class="btn btn-primary">Ajouter</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="my-5">
                                <table class="table table-striped text-center tab" style="width:100% ;background-color: #a9a7e5">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nom</th>
                                        <th>Prenom</th>
                                        <th>Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody >
                                    <tr>
                                        <td>sblabla</td>
                                        <td>blabla</td>
                                        <td>blablabla</td>
                                        <td>
                                            <a href="#" class="btn btn-warning">
                                                <i class="fas fa-edit"></i>
                                            </a>
                                            <a href="#" class="btn btn-danger">
                                                <i class="fas fa-trash-alt"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>sblabla</td>
                                        <td>blabla</td>
                                        <td>blablabla</td>
                                        <td>
                                            <a href="#" class="btn btn-warning">
                                                <i class="fas fa-edit"></i>
                                            </a>
                                            <a href="#" class="btn btn-danger">
                                                <i class="fas fa-trash-alt"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>sblabla</td>
                                        <td>blabla</td>
                                        <td>blablabla</td>
                                        <td>
                                            <a href="#" class="btn btn-warning">
                                                <i class="fas fa-edit"></i>
                                            </a>
                                            <a href="#" class="btn btn-danger">
                                                <i class="fas fa-trash-alt"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>sblabla</td>
                                        <td>blabla</td>
                                        <td>blablabla</td>
                                        <td>
                                            <a href="#"
                                               class="btn btn-warning"
                                               data-toggle="modal"
                                               data-target="#doc_modal_update">
                                                <i class="fas fa-edit"></i>
                                            </a>
                                            <a href="#" class="btn btn-danger"
                                               data-toggle="modal"
                                               data-target="#doc_modal_delete">
                                                <i class="fas fa-trash-alt"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <!-- doc modal update -->
                                    <div class="modal fade"
                                         id="doc_modal_update"
                                         tabindex="-1"
                                         role="dialog"
                                         aria-labelledby="ModalLabel_1"
                                         aria-hidden="true"
                                    >
                                        <div class="modal-dialog modal-lg" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="ModalLabel_1">Modal title</h5>
                                                    <button type="button"
                                                            class="close"
                                                            data-dismiss="modal"
                                                            aria-label="Close"
                                                    >
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">

                                                    <form action="">

                                                        <div class="row">

                                                            <div class="col-md-4">
                                                                <div class="row">
                                                                    <div class="col-12 mb-3">
                                                                        <img class="rounded-circle"
                                                                             src="archProjMaster/assets/admin/ava_doc.png"
                                                                             alt=""
                                                                             width="150px"
                                                                             height="150px"
                                                                             style="border: 4px solid #5f5aaa"
                                                                        >
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <div class="custom-file">
                                                                    <label for="customFile_update_1">Ajouter Photo</label>
                                                                    <input type="file" class="custom-file-input" id="customFile_update_1">
                                                                    <label class="custom-file-label" for="customFile_update_1">Choose file</label>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-4">
                                                                <input type="text" class="form-control" id="nom_u" placeholder="Nom">
                                                            </div>

                                                            <div class="col-md-4">
                                                                <input type="text" class="form-control" id="prenom_u" placeholder="Prenom">
                                                            </div>
                                                        </div>

                                                        <hr>

                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <input type="text" class="form-control" id="adr_u" placeholder="Address">
                                                            </div>

                                                            <div class="col-md-4">
                                                                <input type="text" class="form-control" id="num_u" placeholder="Num">
                                                            </div>

                                                            <div class="col-md-4">
                                                                <select id="spe_c_u" class="form-control">
                                                                    <option selected>Choose Spec</option>
                                                                    <option>1</option>
                                                                    <option>2</option>
                                                                    <option>Autre</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <hr>

                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <input type="password" class="form-control" id="pass_u" placeholder="Password">
                                                            </div>

                                                            <div class="col-md-4">
                                                                <input type="password" class="form-control" id="pass_c_u" placeholder="Confirm">
                                                            </div>
                                                        </div>
                                                    </form>

                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button"
                                                            class="btn btn-secondary"
                                                            data-dismiss="modal"
                                                    >Close</button>
                                                    <button type="button" class="btn btn-primary">Modifier</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- doc modal delete -->
                                    <div class="modal fade"
                                         id="doc_modal_delete"
                                         tabindex="-1"
                                         role="dialog"
                                         aria-labelledby="ModalLabel_1_detlete"
                                         aria-hidden="true"
                                    >
                                        <div class="modal-dialog modal-md" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="ModalLabel_1_delete">Modal title</h5>
                                                    <button type="button"
                                                            class="close"
                                                            data-dismiss="modal"
                                                            aria-label="Close"
                                                    >
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <div>
                                                        <p>
                                                            Voulez-vous le supprimer définitivement?
                                                        </p>
                                                    </div>
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button"
                                                            class="btn btn-secondary"
                                                            data-dismiss="modal"
                                                    >Close</button>
                                                    <button type="button" class="btn btn-primary">Suprimer</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nom</th>
                                        <th>Prenom</th>
                                        <th>Actions</th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>

    <!-- patients crud -->
    <div class="row" style="display: none" id="pat_crud">
    <div class="col-12">
    <div class="card shadow mb-4">

    <div class="card-header py-3" style="background-color: #37346b">
    <h6 class="m-0 font-weight-bold text-white">Patients CRUD</h6>
    </div>

    <div class="card-body" style="background-color: #5f5aaa">
    <div class="my-5">
    <table class="table table-striped text-center tab" style="width:100% ;background-color: #a9a7e5">
    <thead>
    <tr>
    <th>ID</th>
    <th>Nom</th>
    <th>Prenom</th>
    <th>Actions</th>
    </tr>
    </thead>
    <tbody >
    <tr>
    <td>sblabla</td>
    <td>blabla</td>
    <td>blablabla</td>
    <td>
    <a href="#" class="btn btn-warning">
    <i class="fas fa-edit"></i>
    </a>
    <a href="#" class="btn btn-danger">
    <i class="fas fa-trash-alt"></i>
    </a>
    </td>
    </tr>
    <tr>
    <td>sblabla</td>
    <td>blabla</td>
    <td>blablabla</td>
    <td>
    <a href="#" class="btn btn-warning">
    <i class="fas fa-edit"></i>
    </a>
    <a href="#" class="btn btn-danger">
    <i class="fas fa-trash-alt"></i>
    </a>
    </td>
    </tr>
    <tr>
    <td>sblabla</td>
    <td>blabla</td>
    <td>blablabla</td>
    <td>
    <a href="#" class="btn btn-warning">
    <i class="fas fa-edit"></i>
    </a>
    <a href="#" class="btn btn-danger">
    <i class="fas fa-trash-alt"></i>
    </a>
    </td>
    </tr>
    <tr>
    <td>sblabla</td>
    <td>blabla</td>
    <td>blablabla</td>
    <td>
    <a href="#" class="btn btn-warning">
    <i class="fas fa-edit"></i>
    </a>
    <a href="#" class="btn btn-danger">
    <i class="fas fa-trash-alt"></i>
    </a>
    </td>
    </tr>
    </tbody>
    <tfoot>
    <tr>
    <th>ID</th>
    <th>Nom</th>
    <th>Prenom</th>
    <th>Actions</th>
    </tr>
    </tfoot>
    </table>
    </div>
    </div>

    </div>
    </div>
    </div>

    <!-- drugs crud -->
    <div class="row" style="display: none" id="drug_crud">
    <div class="col-12">
    <div class="card shadow mb-4">

    <div class="card-header py-3" style="background-color: #37346b">
    <h6 class="m-0 font-weight-bold text-white">Drugs CRUD</h6>
    </div>

    <div class="card-body" style="background-color: #5f5aaa">
    <div class="my-5">
    <table class="table table-striped text-center tab" style="width:100% ;background-color: #a9a7e5">
    <thead>
    <tr>
    <th>ID</th>
    <th>Nom</th>
    <th>Prenom</th>
    <th>Actions</th>
    </tr>
    </thead>
    <tbody >
    <tr>
    <td>sblabla</td>
    <td>blabla</td>
    <td>blablabla</td>
    <td>
    <a href="#" class="btn btn-warning">
    <i class="fas fa-edit"></i>
    </a>
    <a href="#" class="btn btn-danger">
    <i class="fas fa-trash-alt"></i>
    </a>
    </td>
    </tr>
    <tr>
    <td>sblabla</td>
    <td>blabla</td>
    <td>blablabla</td>
    <td>
    <a href="#" class="btn btn-warning">
    <i class="fas fa-edit"></i>
    </a>
    <a href="#" class="btn btn-danger">
    <i class="fas fa-trash-alt"></i>
    </a>
    </td>
    </tr>
    <tr>
    <td>sblabla</td>
    <td>blabla</td>
    <td>blablabla</td>
    <td>
    <a href="#" class="btn btn-warning">
    <i class="fas fa-edit"></i>
    </a>
    <a href="#" class="btn btn-danger">
    <i class="fas fa-trash-alt"></i>
    </a>
    </td>
    </tr>
    <tr>
    <td>sblabla</td>
    <td>blabla</td>
    <td>blablabla</td>
    <td>
    <a href="#" class="btn btn-warning">
    <i class="fas fa-edit"></i>
    </a>
    <a href="#" class="btn btn-danger">
    <i class="fas fa-trash-alt"></i>
    </a>
    </td>
    </tr>
    </tbody>
    <tfoot>
    <tr>
    <th>ID</th>
    <th>Nom</th>
    <th>Prenom</th>
    <th>Actions</th>
    </tr>
    </tfoot>
    </table>
    </div>
    </div>

    </div>
    </div>
    </div>

    <!-- herbo crud -->
    <div class="row" style="display: none" id="herbo_crud">
    <div class="col-12">
    <div class="card shadow mb-4">

    <div class="card-header py-3" style="background-color: #37346b">
    <h6 class="m-0 font-weight-bold text-white">Herbo CRUD</h6>
    </div>

    <div class="card-body" style="background-color: #5f5aaa">
    <div class="my-5">
    <table class="table table-striped text-center tab" style="width:100% ;background-color: #a9a7e5">
    <thead>
    <tr>
    <th>ID</th>
    <th>Nom</th>
    <th>Prenom</th>
    <th>Actions</th>
    </tr>
    </thead>
    <tbody >
    <tr>
    <td>sblabla</td>
    <td>blabla</td>
    <td>blablabla</td>
    <td>
    <a href="#" class="btn btn-warning">
    <i class="fas fa-edit"></i>
    </a>
    <a href="#" class="btn btn-danger">
    <i class="fas fa-trash-alt"></i>
    </a>
    </td>
    </tr>
    <tr>
    <td>sblabla</td>
    <td>blabla</td>
    <td>blablabla</td>
    <td>
    <a href="#" class="btn btn-warning">
    <i class="fas fa-edit"></i>
    </a>
    <a href="#" class="btn btn-danger">
    <i class="fas fa-trash-alt"></i>
    </a>
    </td>
    </tr>
    <tr>
    <td>sblabla</td>
    <td>blabla</td>
    <td>blablabla</td>
    <td>
    <a href="#" class="btn btn-warning">
    <i class="fas fa-edit"></i>
    </a>
    <a href="#" class="btn btn-danger">
    <i class="fas fa-trash-alt"></i>
    </a>
    </td>
    </tr>
    <tr>
    <td>sblabla</td>
    <td>blabla</td>
    <td>blablabla</td>
    <td>
    <a href="#" class="btn btn-warning">
    <i class="fas fa-edit"></i>
    </a>
    <a href="#" class="btn btn-danger">
    <i class="fas fa-trash-alt"></i>
    </a>
    </td>
    </tr>
    </tbody>
    <tfoot>
    <tr>
    <th>ID</th>
    <th>Nom</th>
    <th>Prenom</th>
    <th>Actions</th>
    </tr>
    </tfoot>
    </table>
    </div>
    </div>

    </div>
    </div>
    </div>

    </div>
    </main>
    <!-- page-content" -->
<!-- page-content" -->
</div>
<!-- page-wrapper -->
</body>

<script>

/*----- sidebar -----*/
$(".sidebar-dropdown > a").click(function() {
$(".sidebar-submenu").slideUp(200);
if (
$(this)
.parent()
.hasClass("active")
) {
$(".sidebar-dropdown").removeClass("active");
$(this)
.parent()
.removeClass("active");
} else {
$(".sidebar-dropdown").removeClass("active");
$(this)
.next(".sidebar-submenu")
.slideDown(200);
$(this)
.parent()
.addClass("active");
}
});

/* close sidebar */
$("#close-sidebar").click(function() {
$(".page-wrapper").removeClass("toggled");
});
/* open sidebar */
$("#show-sidebar").click(function() {
$(".page-wrapper").addClass("toggled");
});

$(document).ready(function(){
/* dash ùain toggles */
$("#dashboard_clk").click(function(){
$("#dash_main").css("display", "block");
$("#doc_crud").css("display", "none");
$("#herbo_crud").css("display", "none");
$("#drug_crud").css("display", "none");
$("#pat_crud").css("display", "none");
});

/* drugs crud toggles */
$("#drug_clk").click(function(){
$("#drug_crud").css("display", "block");
$("#doc_crud").css("display", "none");
$("#herbo_crud").css("display", "none");
$("#pat_crud").css("display", "none");
$("#doc_crud").css("display", "none");
});

/* hervo crud toggles */
$("#herbo_clk").click(function(){
$("#herbo_crud").css("display", "block");
$("#dash_main").css("display", "none");
$("#doc_crud").css("display", "none");
$("#drug_crud").css("display", "none");
$("#pat_crud").css("display", "none");
});

/* doctors crud toggles */
$("#doctor_clk").click(function(){
$("#doc_crud").css("display", "block");
$("#dash_main").css("display", "none");
$("#herbo_crud").css("display", "none");
$("#drug_crud").css("display", "none");
$("#pat_crud").css("display", "none");
});

/* Patients crud toggles */
$("#patient_clk").click(function(){
$("#pat_crud").css("display", "block");
$("#dash_main").css("display", "none");
$("#herbo_crud").css("display", "none");
$("#drug_crud").css("display", "none");
$("#doc_crud").css("display", "none");
});
});

</script>

<script>
// line chart data
new Chart(document.getElementById("line-chart"), {
type: 'line',
data: {
labels: [1500,1600,1700,1750,1800,1850,1900,1950,1999,2050],
datasets: [{
data: [86,114,106,106,107,111,133,221,783,2478],
label: "aaa",
borderColor: "#3e95cd",
fill: false
}, {
data: [282,350,411,502,635,809,947,1402,3700,5267],
label: "bbb",
borderColor: "#8e5ea2",
fill: false
}, {
data: [168,170,178,190,203,276,408,547,675,734],
label: "ccc",
borderColor: "#3cba9f",
fill: false
}, {
data: [40,20,10,16,24,38,74,167,508,784],
label: "eee",
borderColor: "#e8c3b9",
fill: false
}, {
data: [6,3,2,2,7,26,82,172,312,433],
label: "ddd",
borderColor: "#c45850",
fill: false
}
]
},
options: {
title: {
display: true,
text: 'line chart\'s Title'
}
}
});

// pie chart data
new Chart(document.getElementById("doughnut-chart"), {
type: 'doughnut',
data: {
labels: ["aaa", "bbb", "ccc", "ddd", "eee"],
datasets: [
{
backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
data: [2478,5267,734,784,433]
}
]
},
options: {
title: {
display: true,
text: 'pie chart\'s Title'
}
}
});

/* dataTable */
$(document).ready(function() {
$('.tab').DataTable();
} );
</script>


</html>
