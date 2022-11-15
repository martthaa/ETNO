<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebSite.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hdCartAmount" runat="server" />
    <asp:HiddenField ID="hdCartDiscount" runat="server" />
    <asp:HiddenField ID="hdTotalPayed" runat="server" />
    <asp:HiddenField ID="hdPidSizeID" runat="server" />

    <div class="container">
        <div class="row" style="padding-top: 20px;">
            <div class="col-md-9">
                <div class="form-horizontal">
                    <h3>Delivery Address</h3>
                    <hr />
                     <div class="form-group">
            <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
            <div class="col-md-7">
                <asp:TextBox  ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </div>
            
        </div>
          <div class="form-group">
              <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Address"></asp:Label>
              <div class="col-md-7">
                  <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
            </div>
          </div>
          <div class="form-group">
              <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Pin Code"></asp:Label>
              <div class="col-md-7">
                  <asp:TextBox ID="txtPinCode" CssClass="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtPinCode"></asp:RequiredFieldValidator>
               </div>
         </div>
                </div>
            </div>
            <div class="col-md-3" runat="server" id="divPriceDetails">
                <div style="border-bottom: 1px solid #eaeaec;">
                    <h5 class="proNameViewCart">PRICE DETAILS</h5>
                    <div>
                        <label>Cart Total</label>
                        <span class="float-right priceGray" id="spanCartTotal" runat="server"></span>
                    </div>
                    <div>
                        <label>Cart Discount</label>
                        <span class="float-right priceGreen" id="spanDiscount" runat="server"></span>
                    </div>
                </div>
                <div>
                    <div class="proPriceView">
                        <label>Total</label>
                        <span class="float-right" id="spanTotal" runat="server"></span>
                    </div>
                </div>
            </div>
            <div class="col-md-12">

                 <%--<h3>Choose Payment Mode</h3>--%>
                <hr />
                <%--<ul class="nav nav-tabs">
                    <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#wallets">WALLETS</a></li>
                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#cards">CREDIT/DEBIT CARDS</a></li>
                    <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#cod">COD</a></li>
                </ul>

                <div class="tab-content">
                    <div id="wallets" class="tab-pane fade in active">--%>
                        <%--<h3>HOME</h3>
                        <p>Some content.</p>--%>
                        <asp:Button ID="btnPaytm" OnClick="btnPaytm_Click" runat="server" Text="Pay" />
                        
                    <%--</div>
                    <div id="cards" class="tab-pane fade ">
                        <h3>CREDIT</h3>
                       
                    </div>
                    <div id="cod" class="tab-pane fade">
                        <h3>COD</h3>
                        <p>Some content in menu 2.</p>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
</asp:Content>
