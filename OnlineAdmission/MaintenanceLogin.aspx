<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MaintenanceLogin.aspx.cs" Inherits="OnlineAdmission.MaintenanceLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .form-control-submits{
            width:180px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <center>Maintenance Login</center>
        </div>
        <center>
            <table class="table">
                <br />
                <tr>
                    <div class="input-group">
                        <span class="input-group-addon">Username</span>
                        <input type="text" class="form-control" required="required" id="txtUsername" runat="server" data-toggle="popover" data-trigger="hover focus" data-content="Username" />
                    </div>
                </tr>
                <asp:requiredfieldvalidator id="RequiredFieldValidator1" forecolor="Red" errormessage="Please Enter the Username" controltovalidate="txtUsername" runat="server"></asp:requiredfieldvalidator>
                <br />
                <tr>
                    <div class="input-group">
                        <span class="input-group-addon">Password</span>
                        <input type="text" class="form-control" required="required" id="txtPassword" runat="server" data-toggle="popover" data-trigger="hover focus" data-content="Password" />
                    </div>
                </tr>
                <asp:requiredfieldvalidator id="RequiredFieldValidator2" forecolor="Red" errormessage="Please Enter Password" controltovalidate="txtPassword" runat="server"></asp:requiredfieldvalidator>
                <tr>
                    <td>
                        <asp:Button id="StudentManagement" Text="Student Management" runat="server" OnClick="SM_Click " class="form-control-submits" />
                    </td>
                    <td>
                        <asp:Button id="WebsiteManagement" Text="Website Management" runat="server" OnClick="WM_Click " class="form-control-submits" />
                    </td>
                </tr>
                <br />
                <asp:label id="lblError" runat="server" ForeColor="Red"></asp:label>
            </table>
        </center>
    </div>
    <script>
            $(document).ready(function() {
                $('[data-toggle="popover"]').popover();
            });
        </script>
</asp:Content>

