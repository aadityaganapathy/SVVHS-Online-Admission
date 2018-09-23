<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admission.aspx.cs" Inherits="OnlineAdmission.AdmissionMainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .success-button{
            width:450px !important;
            height:196px !important;
            background-repeat: no-repeat;
            background-image: url('Images/NewForm.jpg');    
            background-size: 450px 196px !important;
        }

        .edit-button{
            width:450px !important;
            height:196px !important;
            background-repeat: no-repeat;
            background-image: url('Images/EditForm.jpg');    
            background-size: 450px 196px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <asp:Button CssClass="success-button" ID="NewForm" runat="server" OnClick="NewForm_Click" />
        <br />        
        <br />        
        <br />        
        <asp:Button CssClass="edit-button" ID="EditForm" runat="server" OnClick="EditForm_Click" />
        <br />
    </center>
</asp:Content>

