<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaPrincipal.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="PaginaPrincipal.aspx.cs" Inherits="Tienda.PaginaPrincipal1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="PaginaPrincipal/PaginaPrincipal.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div  class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div  class="carousel-inner">
    <div class="carousel-item active">
      <img src="ImgPaginaPrincipal/4538906.jpg" class="d-block w-100 h-25"/>
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="ImgPaginaPrincipal/NbkvkgfMP6du7nre4qUH6K.jpg" class="d-block w-100" alt="..."/>
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="ImgPaginaPrincipal/dc-comics-layoffs-reportedly-affect-a-third-of-editorial-sta_g9ap.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<br />
<div class="row">
<asp:Repeater runat="server" ID="RepetidorImagenes">
    <ItemTemplate>
        <div class="card" style="width: 17rem;">
            <div class="card-body ">
                <a href="/ProductoEspecifico.aspx" ><img class="card-img-top" src="data:image/jpg;base64,<%#Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"IMAGEN"))%>"/></a>
                <%--<Center>
                    <h5 class="card-title"><%# DataBinder.Eval(Container.DataItem,"MARCA")%> <%# DataBinder.Eval(Container.DataItem,"NOMBRE_PRODUCTO")%></h5>
                    <p class="card-text"><%# DataBinder.Eval(Container.DataItem,"DESCRIPCION_PRODUCTO")%></p>
                    <h6 class="card-text">₡<%# DataBinder.Eval(Container.DataItem,"PRECIO_PRODUCTO")%></h6> 
                </Center>--%>  
            </div>
            <%--<Center>
                <asp:Button runat="server" class="button" ID="BotonAgregarAlCarrito" Text="Agregar al carrito" OnClick="BotonAgregarAlCarrito_Click" />
            </Center>--%>
            </br>
        </div>
    </ItemTemplate>
</asp:Repeater>
</div>  
<asp:Label ID="lblError" runat="server" ForeColor="Lime" Text="Error" Visible="False"></asp:Label>
</asp:Content>

            