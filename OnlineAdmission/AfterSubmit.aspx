<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AfterSubmit.aspx.cs" Inherits="OnlineAdmission.AfterSubmit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       .success {
            width: 700px !important;
            background-repeat: no-repeat;
            background-position: 10px center;
            text-anchor: unset !important;
            color: #4F8A10;
            background-color: #DFF2BF;
            background-image: url('Images/success.png');
            background-size: 160px 160px !important;
            font-family: sans-serif;
            font-size: 30px !important;
            text-align: justify;
            padding-bottom: 60px !important;
            padding-top: 60px !important;
            
        }
       .alert-success{
            background-color: #DFF2BF !important;
            color: #4F8A10;

       }
       .success-text {
            text-align: center !important;
            margin-left: 100px !important;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <div class="success">
            <div class="success-text">
        Form Successfully Submitted!
        </div>
        </div>
        <br />
        <a href="Admission.aspx">
        <div class="alert alert-success" role="alert">
            <span class="sr-only"></span>
              <h1><label runat="server" id="lblApplicatonID" style="color:#4F8A10"></label></h1>   
              <h3><label style="color:#4F8A10"> To Edit/ Print your submitted application click here</label></h3>   

        </div>    

        </a>    
        <div class="alert alert-success" role="alert">
            <span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>
            <span class="sr-only">Error:</span>
              Please submit a printed copy of the form at admission office present in the school premisis.              
              You will be charged an amount of ₹ 50 for processing the application.           
        </div>
    </center>
</asp:Content>
