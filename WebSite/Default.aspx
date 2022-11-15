<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
   
    <title>Lab 3</title>
    
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            })
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-expand-lg" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand logo_text" href="Default.aspx"/>E T N O</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <%--<li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>--%>
                            <li class="dropdown">
                                <a href="#" class="drobdown-toggle" data-toggle="dropdown">Products <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Products.aspx">All Products</a></li>
                                    <%--<li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Men</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Shirts</a></li>
                                    <li><a href="#">Pants</a></li>
                                    <li><a href="#">Denims</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Women</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Top</a></li>
                                    <li><a href="#">Leggins</a></li>
                                    <li><a href="#">Denims</a></li>--%>
                                </ul>
                                
                            </li>
                            
                                <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                 Cart <span class="badge" id="pCount" runat="server">4</span> </button>
                            
                            
                            <li id="btnSignup" runat="server"><a href="SignUp.aspx">Sign Up</a></li>
                            
                            <li id="btnSignin" runat="server"><a href="SignIn.aspx">Sign In</a></li>

                            <li>
                               <asp:Button ID="btnSignOut" runat="server" CssClass="btn btn-default navbar-btn" Text="Sign Out" OnClick="btnSignOut_Click"  />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block w-100" src="Images/photo1.jpg" alt="First slide">
                     <div class="carousel-caption d-none d-md-block">
                        <h3>Courage</h3>
                         <p><a class="btn btn-lg btn-primary" href="SignUp.aspx" role="button">Join Us Today</a></p>
                      </div>
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src="Images/photo1.jpg" alt="Second slide">
                     <div class="carousel-caption d-none d-md-block">
                    <h3>Authenticity</h3>
                  </div>
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src="Images/photo1.jpg" alt="Third slide">
                     <div class="carousel-caption d-none d-md-block">
                    <h3>Simplicity</h3>
                  </div>
                </div>
              </div>
              <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>

            <!--Контент-->
            <%--<br />
            <div class="container center">
                <div class="row">
                    <div class="col-lg-4">
                        <img src="Images/Thumb01.jpeg" alt="thumb" width="140" height="140"/>
                        <h2>Mobiles</h2>
                        <p class="left">Lorem ipsum dolor sit amet, partem audire eam id. Mea quot cibo maiorum te, mea et posse tamquam convenire. Duo purto oratio fastidii eu, an duo erroribus conclusionemque, dolores detraxit consetetur cum ad. Cum facilisi persequeris consequuntur an.
                            Clita quando eam ad, pro libris pertinacia dissentiunt at, meis aliquando vel ad. Legendos accusamus ius ne, omnium fabellas ei sed. Nihil mollis aliquando ut pro, commune consulatu aliquando id sed. Ex has tamquam pertinax interpretaris. Pro cu ipsum scripta nostrum, mei an omnes nominavi. Iuvaret adipisci corrumpit pro ex.
                            Mazim.</p>
                        <p><a class=" btn btn-default" href="#" role="button">View &raquo</a></p>
                    </div>
                    <div class="col-lg-4">
                        <img class="img-circle" src="Images/Thumb02.jpg" alt="thumb02" width="140" height="140"/>
                        <h2>Clothing</h2>
                        <p class="left">Lorem ipsum dolor sit amet, partem audire eam id. Mea quot cibo maiorum te, mea et posse tamquam convenire. Duo purto oratio fastidii eu, an duo erroribus conclusionemque, dolores detraxit consetetur cum ad. Cum facilisi persequeris consequuntur an.
                            Clita quando eam ad, pro libris pertinacia dissentiunt at, meis aliquando vel ad. Legendos accusamus ius ne, omnium fabellas ei sed. Nihil mollis aliquando ut pro, commune consulatu aliquando id sed. Ex has tamquam pertinax interpretaris. Pro cu ipsum scripta nostrum, mei an omnes nominavi. Iuvaret adipisci corrumpit pro ex.
                            Mazim.</p>
                        <p><a class=" btn btn-default" href="#" role="button">View &raquo</a></p>
                    </div>
                    <div class="col-lg-4">
                        <img class="img-circle" src="Images/Thumb03.jpg" alt="thumb03" width="140" height="140"/>
                        <h2>Footwear</h2>
                        <p class="left">Lorem ipsum dolor sit amet, partem audire eam id. Mea quot cibo maiorum te, mea et posse tamquam convenire. Duo purto oratio fastidii eu, an duo erroribus conclusionemque, dolores detraxit consetetur cum ad. Cum facilisi persequeris consequuntur an.
                            Clita quando eam ad, pro libris pertinacia dissentiunt at, meis aliquando vel ad. Legendos accusamus ius ne, omnium fabellas ei sed. Nihil mollis aliquando ut pro, commune consulatu aliquando id sed. Ex has tamquam pertinax interpretaris. Pro cu ipsum scripta nostrum, mei an omnes nominavi. Iuvaret adipisci corrumpit pro ex.
                            Mazim.</p>
                        <p><a class=" btn btn-default" href="#" role="button">View &raquo</a></p>
                    </div>
                </div>
            </div>--%>
            <div class="container center">
                <section class="about_content">
            <div class="about_text">
                <p class="about_text_part">Creating embroidered shirts, Etnodim speaks of modernity.</p>
                <p class="about_text_part">Our ornaments are imprints of today's values ​​that are closely related to our roots.</p>
                <p class="about_text_part">We do not have the ability to travel through time, but this journey is always within us.</p>
                <p class="about_text_part">We are inseparably connected with all that is called Ukrainian culture, and although our faces have so many features of our ancestors, they are unique.</p>
                <p class="about_text_part">We look into the eyes of the new generation to see there, the history of Ukraine.</p>

            </div>
            </section>
        </div>
            
            <hr />
            <footer>
                <div class="container">
                    <p class="pull-right"><a href="#">Back to top</a></p>
                    <p>&copy; 2022 ETNO.com &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a>&middot; <a href="#">Products</a></p>
                </div>
            </footer>

        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
