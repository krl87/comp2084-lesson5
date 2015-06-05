<%@ Page Title="Input Validation" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="week_5.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>ASP.net Input Validation</h3>
    <h6>All Fields are Required.</h6>
    <div class="form-group">
        <label for="txtName" class="col-sm-3" >Name: </label>
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="label label-danger" ControlToValidate="txtName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="txtPassword" class="col-sm-3">Password: </label>
        <asp:TextBox ID="txtPassword" textmode="Password" runat="server" />
        <asp:RequiredFieldValidator  CssClass="label label-danger" ControlToValidate="txtPassword" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
        <as2p:CompareValidator   ControlToCompare="txtConfirm" ControlToValidate="txtPassword" Display="dynamic" Type="String" Operator="Equal" CssClass="label label-danger" runat="server" ErrorMessage="Passwords Do Not Match"></as2p:CompareValidator>
    </div>
    <div class="form-group">
        <label for="txtConfirm" class="col-sm-3">Confirm Password: </label>
        <asp:TextBox ID="txtConfirm" textmode="Password" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="label label-danger" ControlToValidate="txtConfirm" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="txtAge" class="col-sm-3">Age: </label>
        <asp:TextBox ID="txtAge" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="label label-danger" ControlToValidate="txtAge" runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" CssClass="label label-danger"  ErrorMessage="Enter a # between 1 and 120" MinimumValue="1" MaximumValue="120" Type="Integer" Display="Dynamic"></asp:RangeValidator>
    </div>
    <asp:Button ID="btnSumbit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSumbit_Click" />
    <asp:Label ID="lblMessage" runat="server" />
</asp:Content>
