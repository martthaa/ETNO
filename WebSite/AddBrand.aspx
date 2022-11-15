﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddBrand.aspx.cs" Inherits="WebSite.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="form-horizontal">
            <h2>Add Brand</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Brand Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtBrandName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtBrandName"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
                </div>
            </div>
        </div>

        <h1>Brands</h1>
        <hr />
        <div class="panel panel-default">
            <!-- табличка -->
            <div class="panel-heading">All Brands</div>

            <asp:Repeater ID="rptrBrands" runat="server">
                <HeaderTemplate>
                     <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Brand</th>
                           
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                      <tr>
                        <th><%# Eval("BrandID")%></th>
                        <td><%# Eval("Name")%></td>
                        
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                   </tbody>
                </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>
