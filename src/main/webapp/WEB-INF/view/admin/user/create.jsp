<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                <meta name="author" content="Hỏi Dân IT" />
                <title>Dashboard - Hỏi Dân IT</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/css/AdminDashBoardStyles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });
                </script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Dashboard</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">User</li>
                                </ol>
                                <div class="mt-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <h3>Create a user</h3>
                                            <hr />
                                            <form:form class="row g-3" action="/admin/user/create" method="post"
                                                modelAttribute="newUser" enctype="multipart/form-data">
                                                <div class="col-md-6">
                                                    <label path="email" class="form-label">Email</label>
                                                    <form:input type="email" class="form-control" path="email" />
                                                </div>
                                                <div class="col-md-6">
                                                    <label path="password" class="form-label">Password</label>
                                                    <form:input type="password" class="form-control" path="password" />
                                                </div>
                                                <div class="col-md-6">
                                                    <label path="fullName" class="form-label">Full Name</label>
                                                    <form:input type="text" class="form-control" path="fullName" />
                                                </div>
                                                <div class="col-md-6">
                                                    <label path="phone" class="form-label">Phone</label>
                                                    <form:input type="text" class="form-control" path="phone" />
                                                </div>
                                                <div class="col-12">
                                                    <label path="address" class="form-label">Address</label>
                                                    <form:input type="text" class="form-control" path="address"
                                                        placeholder="1234 Main St" />
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="form-label">Role</label>
                                                    <form:select class="form-select" path="role.name">
                                                        <form:option value="ADMIN">ADMIN</form:option>
                                                        <form:option value="USER">USER</form:option>
                                                    </form:select>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="avatarFile" class="form-label">
                                                        Avatar Upload
                                                    </label>
                                                    <input class="form-control" type="file" id="avatarFile"
                                                        name="hoidanitFile" accept=".png, .jpg, .jpeg" />
                                                </div>
                                                <div class="col-12 mb-3">
                                                    <img style="max-height: 250px; display: none; border-radius: 20px;"
                                                        alt="avatar preview" id="avatarPreview" />
                                                </div>
                                                <div class="col-12">
                                                    <form:button type="submit" class="btn btn-primary">Create user
                                                    </form:button>
                                                </div>
                                            </form:form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>
            </body>

            </html>