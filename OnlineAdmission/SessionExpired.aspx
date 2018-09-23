<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SessionExpired.aspx.cs" Inherits="OnlineAdmission.SessionExpired" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .warning {
            width: 700px !important;
            background-repeat: no-repeat;
            background-position: 10px center;
            text-anchor: unset !important;
            color: #9F6000;
            background-color: #FEEFB3;
            background-image: url('Images/warning.png');
            background-size: 160px 160px !important;
            font-family: sans-serif;
            font-size: 30px !important;
            text-align: justify;
            padding-bottom: 60px !important;
            padding-top: 60px !important;
        }
        .alert alert-warning{
            width: 700px !important;
        }
        .warning-text {
            text-align: center !important;
            margin-left: 100px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <div class="warning">
            <div class="warning-text">
            Your Session has expired!
            </div>
        </div>
        <br />
        <div class="alert alert-warning" role="alert">
            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
            <span class="sr-only">Error:</span>
              Please Do Not use the
            <b> Back Button </b> or 
            <b> Refresh Button </b>on the browser to navigate
        
        </div>
    </center>
</asp:Content>
