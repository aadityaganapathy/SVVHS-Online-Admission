<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/EditDetails.aspx.cs" Inherits="OnlineAdmission.EditDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <center>Admission Form</center>
        </div>
        <center>
            <table class="table">
                <br />
                <tr>
                    <div class="input-group">
                        <span class="input-group-addon">Application ID</span>
                        <input type="text" class="form-control" required="required" id="txtDetailsApplicationID" runat="server" data-toggle="popover" data-trigger="hover focus" data-content="Application ID" />
                    </div>
                </tr>
                <asp:requiredfieldvalidator id="RequiredFieldValidator1" forecolor="Red" errormessage="Please Enter the Application ID" controltovalidate="txtDetailsApplicationID" runat="server"></asp:requiredfieldvalidator>
                <br />
                <tr>
                    <div class="input-group">
                        <span class="input-group-addon">Father's Mobile Number</span>
                        <input type="text" class="form-control" required="required" id="txtRegisterdMobile" runat="server" data-toggle="popover" data-trigger="hover focus" data-content="Registered Mobile Number" />
                    </div>
                </tr>
                <asp:requiredfieldvalidator id="RequiredFieldValidator2" forecolor="Red" errormessage="Please Enter Registered Mobile Number" controltovalidate="txtRegisterdMobile" runat="server"></asp:requiredfieldvalidator>
                <tr>
                    <td>
                        <asp:Button id="submit" Text="Submit" runat="server" OnClick="submit_Click " class="form-control-submits" />
                    </td>
                    <td>
                        <asp:Button id="Print" Text="Print" runat="server" OnClick="Print_Click " class="form-control-submits" />
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