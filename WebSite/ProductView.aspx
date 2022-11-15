﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="WebSite.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-top:50px">
        <div class="col-md-5">
            <div style="max-width:480px" class="thumbnail">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <asp:Repeater ID="rptrImages" runat="server">
                                <ItemTemplate>
                                    <div class="carousel-item <%# GetActiveClass(Container.ItemIndex) %>">
                                         <img class="d-block w-100" src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" onerror="this.src='images/noimage.jpg'">

                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
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
            </div>
        </div>
        <div class="col-md-7">
            <asp:Repeater ID="rptrProductDetails" OnItemDataBound="rptrProductDetails_ItemDataBound" runat="server">
                <ItemTemplate>
            <div class="divDet1">
                 <h1 class="proNameView"><%#Eval("PName") %></h1>
                 <span class="proOgPriceView"><%#Eval("PSelPrice","{0:c}") %></span><span class="proPriceDiscountView"> <%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSelPrice"))) %> OFF</span>
                 <p class="proPriceView"><%#Eval("PPrice","{0:c}") %></p>
            </div>
             <h5 class="h5Size">SIZE</h5>
            <div>
                <asp:RadioButtonList ID="rblSize" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Value ="M" Text="M"></asp:ListItem>
                    <asp:ListItem Value ="L" Text="L"></asp:ListItem>
                    <asp:ListItem Value ="XL" Text="XL"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="divDet1">
            <asp:Button ID="btnAddToCart" OnClick="btnAddToCart_Click" CssClass="mainButton" runat="server" Text="ADD TO CART" />
            <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
        </div>
        <div class="divDet1">
            <h5 class="h5Size">Description</h5>
            <p>
                 <%#Eval("PDescription") %>
            </p>
            <h5 class="h5Size">Product Details</h5>
            <p>
                 <%#Eval("PProductDetails") %>
            </p>
            <h5 class="h5Size">Material & Care</h5>
            <p>
                <%#Eval("PMaterialCare") %>
            </p>
        </div>
        <div>
            <p><%# ((int)Eval("FreeDelivery")==1)?"Free Delivery":"" %></p>
            <p><%# ((int)Eval("30DayRet")==1)?"30 Days Returns":"" %></p>
            <p><%# ((int)Eval("COD")==1)?"Cash on Delivery":"" %></p>
        </div>
        <asp:HiddenField ID="hfCatID" Value='<%# Eval("PcategoryID") %>' runat="server" />
        <asp:HiddenField ID="hfSubCatID" Value='<%# Eval("PSubCatID") %>' runat="server" />
        <asp:HiddenField ID="hfGenderID" Value='<%# Eval("PGender") %>' runat="server" />
        <asp:HiddenField ID="hfBrandID" Value='<%# Eval("PBrandID") %>' runat="server" />

      </ItemTemplate>
    </asp:Repeater>
  </div>
</asp:Content>
