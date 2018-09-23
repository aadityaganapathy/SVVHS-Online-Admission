<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApplicationError.aspx.cs" Inherits="OnlineAdmission.ApplicationError" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
        <div class="alert alert-danger" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
            <span class="sr-only">Error:</span>
            <label runat="server" id="lblErrorMessage"></label>
        </div>
</asp:Content>

