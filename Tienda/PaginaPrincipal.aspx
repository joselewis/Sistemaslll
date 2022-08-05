<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="PaginaPrincipal.aspx.cs" Inherits="Tienda.PaginaPrincipal1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="PaginaPrincipal/carousel.css" rel="stylesheet" />
    <link href="PaginaPrincipal/carousel.rtl.css" rel="stylesheet" />
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/carousel/">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner" >
      <div class="carousel-item active">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>
        <img src="ImgPaginaPrincipal/NbkvkgfMP6du7nre4qUH6K.jpg" />
          <div class="container">
          <div class="carousel-caption text-start">
            <h1>Example headline.</h1>
            <p>Some representative placeholder content for the first slide of the carousel.</p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>
        <img src="ImgPaginaPrincipal/4538906.jpg" />
        <div class="container">
          <div class="carousel-caption">
            <h1>Another example headline.</h1>
            <p>Some representative placeholder content for the second slide of the carousel.</p>
            
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>
        <img src="ImgPaginaPrincipal/dc-comics-layoffs-reportedly-affect-a-third-of-editorial-sta_g9ap.jpg" />
        <div class="container">
          <div class="carousel-caption text-end">
            <h1>One more for good measure.</h1>
            <p>Some representative placeholder content for the third slide of this carousel.</p>
            
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
<div class="row">

<asp:Repeater runat="server" ID="d1">
    <ItemTemplate>
        <div class="card" style="width: 17rem;">
            <div class="card-body ">
                <a href="ProductoEspecifico.aspx?id=<%#Eval("CODIGO_PRODUCTO")%>">
                    <img class="card-img-top" src="data:image/jpg;base64,<%#Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"IMAGEN"))%>" alt=""/>
                </a>
                <%--<Center>
                    <img class="card-img-top" src="data:image/jpg;base64,<%#Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"IMAGEN"))%>"/>
                    <h5 class="card-title"><%# DataBinder.Eval(Container.DataItem,"MARCA")%> <%# DataBinder.Eval(Container.DataItem,"NOMBRE_PRODUCTO")%></h5>
                    <p class="card-text"><%# DataBinder.Eval(Container.DataItem,"DESCRIPCION_PRODUCTO")%></p>
                    <h6 class="card-text">₡<%# DataBinder.Eval(Container.DataItem,"PRECIO_PRODUCTO")%></h6> 
                </Center>--%>  
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>
</div>  
<asp:Label ID="lblError" runat="server" ForeColor="Lime" Text="Error" Visible="False"></asp:Label>
</asp:Content>

            