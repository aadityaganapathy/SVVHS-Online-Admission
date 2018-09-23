<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" ValidateRequest="false" AutoEventWireup="true" CodeBehind="WebsiteManagement.aspx.cs" Inherits="OnlineAdmission.WebsiteManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css" id="form-control-date">

       
         .form-control-date {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }
        .form-control-date-submits {
            display: block;
            width: 150px !important;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: white;
            background-color: #337ab7;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }
        .form-control-date-submits:focus {
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
        }
        .form-control-date-submits::-moz-placeholder {
            color: #999;
            opacity: 1;
        }
        .form-control-date-submits:-ms-input-placeholder {
            color: #999;
        }
        .form-control-date-submits::-webkit-input-placeholder {
            color: #999;
        }
        .form-control-date-submits::-ms-expand {
            background-color: transparent;
            border: 0;
        }
        .form-control-date-submits[disabled],
        .form-control-date[readonly],
        fieldset[disabled] .form-control-date {
            background-color: #eee;
            opacity: 1;
        }
        .form-control-date-submits[disabled],
        fieldset[disabled] .form-control-date {
            cursor: not-allowed;
        }
        .form-control-date:focus {
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
        }
        .form-control-date::-moz-placeholder {
            color: #999;
            opacity: 1;
        }
        .form-control-date:-ms-input-placeholder {
            color: #999;
        }
        .form-control-date::-webkit-input-placeholder {
            color: #999;
        }
        .form-control-date::-ms-expand {
            background-color: transparent;
            border: 0;
        }
        .form-control-date[disabled],
        .form-control-date[readonly],
        fieldset[disabled] .form-control-date {
            background-color: #eee;
            opacity: 1;
        }
        .form-control-date[disabled],
        fieldset[disabled] .form-control-date {
            cursor: not-allowed;
        }
        textarea.form-control-date {
            height: auto;
        }
        input[type=search] {
            -webkit-appearance: none;
        }
        @media screen and (-webkit-min-device-pixel-ratio: 0) {
            input[type=date].form-control-date,
            input[type=time].form-control-date,
            input[type=datetime-local].form-control-date,
            input[type=month].form-control-date {
                line-height: 34px;
            }
            .input-group-sm input[type=date],
            .input-group-sm input[type=time],
            .input-group-sm input[type=datetime-local],
            .input-group-sm input[type=month],
            input[type=date].input-sm,
            input[type=time].input-sm,
            input[type=datetime-local].input-sm,
            input[type=month].input-sm {
                line-height: 30px;
            }
            .input-group-lg input[type=date],
            .input-group-lg input[type=time],
            .input-group-lg input[type=datetime-local],
            .input-group-lg input[type=month],
            input[type=date].input-lg,
            input[type=time].input-lg,
            input[type=datetime-local].input-lg,
            input[type=month].input-lg {
                line-height: 46px;
            }
        }
        .form-group {
            margin-bottom: 15px;
        }
        .checkbox,
        .radio {
            position: relative;
            display: block;
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .checkbox label,
        .radio label {
            min-height: 20px;
            padding-left: 20px;
            margin-bottom: 0;
            font-weight: 400;
            cursor: pointer;
        }
        .checkbox input[type=checkbox],
        .checkbox-inline input[type=checkbox],
        .radio input[type=radio],
        .radio-inline input[type=radio] {
            position: absolute;
            margin-top: 4px\9;
            margin-left: -20px;
        }
        .checkbox + .checkbox,
        .radio + .radio {
            margin-top: -5px;
        }
        .checkbox-inline,
        .radio-inline {
            position: relative;
            display: inline-block;
            padding-left: 20px;
            margin-bottom: 0;
            font-weight: 400;
            vertical-align: middle;
            cursor: pointer;
        }
        .checkbox-inline + .checkbox-inline,
        .radio-inline + .radio-inline {
            margin-top: 0;
            margin-left: 10px;
        }
        fieldset[disabled] input[type=checkbox],
        fieldset[disabled] input[type=radio],
        input[type=checkbox].disabled,
        input[type=checkbox][disabled],
        input[type=radio].disabled,
        input[type=radio][disabled] {
            cursor: not-allowed;
        }
        .checkbox-inline.disabled,
        .radio-inline.disabled,
        fieldset[disabled] .checkbox-inline,
        fieldset[disabled] .radio-inline {
            cursor: not-allowed;
        }
        .checkbox.disabled label,
        .radio.disabled label,
        fieldset[disabled] .checkbox label,
        fieldset[disabled] .radio label {
            cursor: not-allowed;
        }
        .form-control-date-static {
            min-height: 34px;
            padding-top: 7px;
            padding-bottom: 7px;
            margin-bottom: 0;
        }
        .form-control-date-static.input-lg,
        .form-control-date-static.input-sm {
            padding-right: 0;
            padding-left: 0;
        }
        .input-sm {
            height: 30px;
            padding: 5px 10px;
            font-size: 12px;
            line-height: 1.5;
            border-radius: 3px;
        }
        select.input-sm {
            height: 30px;
            line-height: 30px;
        }
        select[multiple].input-sm,
        textarea.input-sm {
            height: auto;
        }
        .form-group-sm .form-control-date {
            height: 30px;
            padding: 5px 10px;
            font-size: 12px;
            line-height: 1.5;
            border-radius: 3px;
        }
        .form-group-sm select.form-control-date {
            height: 30px;
            line-height: 30px;
        }
        .form-group-sm select[multiple].form-control-date,
        .form-group-sm textarea.form-control-date {
            height: auto;
        }
        .form-group-sm .form-control-date-static {
            height: 30px;
            min-height: 32px;
            padding: 6px 10px;
            font-size: 12px;
            line-height: 1.5;
        }
        .input-lg {
            height: 46px;
            padding: 10px 16px;
            font-size: 18px;
            line-height: 1.3333333;
            border-radius: 6px;
        }
        select.input-lg {
            height: 46px;
            line-height: 46px;
        }
        select[multiple].input-lg,
        textarea.input-lg {
            height: auto;
        }
        .form-group-lg .form-control-date {
            height: 46px;
            padding: 10px 16px;
            font-size: 18px;
            line-height: 1.3333333;
            border-radius: 6px;
        }
        .form-group-lg select.form-control-date {
            height: 46px;
            line-height: 46px;
        }
        .form-group-lg select[multiple].form-control-date,
        .form-group-lg textarea.form-control-date {
            height: auto;
        }
        .form-group-lg .form-control-date-static {
            height: 46px;
            min-height: 38px;
            padding: 11px 16px;
            font-size: 18px;
            line-height: 1.3333333;
        }
        .has-feedback {
            position: relative;
        }
        .has-feedback .form-control-date {
            padding-right: 42.5px;
        }
        .form-control-date-feedback {
            position: absolute;
            top: 0;
            right: 0;
            z-index: 2;
            display: block;
            width: 34px;
            height: 34px;
            line-height: 34px;
            text-align: center;
            pointer-events: none;
        }
        .form-group-lg .form-control-date + .form-control-date-feedback,
        .input-group-lg + .form-control-date-feedback,
        .input-lg + .form-control-date-feedback {
            width: 46px;
            height: 46px;
            line-height: 46px;
        }
        .form-group-sm .form-control-date + .form-control-date-feedback,
        .input-group-sm + .form-control-date-feedback,
        .input-sm + .form-control-date-feedback {
            width: 30px;
            height: 30px;
            line-height: 30px;
        }
        .has-success .checkbox,
        .has-success .checkbox-inline,
        .has-success .control-label,
        .has-success .help-block,
        .has-success .radio,
        .has-success .radio-inline,
        .has-success.checkbox label,
        .has-success.checkbox-inline label,
        .has-success.radio label,
        .has-success.radio-inline label {
            color: #3c763d;
        }
        .has-success .form-control-date {
            border-color: #3c763d;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        }
        .has-success .form-control-date:focus {
            border-color: #2b542c;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #67b168;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #67b168;
        }
        .has-success .input-group-addon {
            color: #3c763d;
            background-color: #dff0d8;
            border-color: #3c763d;
        }
        .has-success .form-control-date-feedback {
            color: #3c763d;
        }
        .has-warning .checkbox,
        .has-warning .checkbox-inline,
        .has-warning .control-label,
        .has-warning .help-block,
        .has-warning .radio,
        .has-warning .radio-inline,
        .has-warning.checkbox label,
        .has-warning.checkbox-inline label,
        .has-warning.radio label,
        .has-warning.radio-inline label {
            color: #8a6d3b;
        }
        .has-warning .form-control-date {
            border-color: #8a6d3b;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        }
        .has-warning .form-control-date:focus {
            border-color: #66512c;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #c0a16b;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #c0a16b;
        }
        .has-warning .input-group-addon {
            color: #8a6d3b;
            background-color: #fcf8e3;
            border-color: #8a6d3b;
        }
        .has-warning .form-control-date-feedback {
            color: #8a6d3b;
        }
        .has-error .checkbox,
        .has-error .checkbox-inline,
        .has-error .control-label,
        .has-error .help-block,
        .has-error .radio,
        .has-error .radio-inline,
        .has-error.checkbox label,
        .has-error.checkbox-inline label,
        .has-error.radio label,
        .has-error.radio-inline label {
            color: #a94442;
        }
        .has-error .form-control-date {
            border-color: #a94442;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        }
        .has-error .form-control-date:focus {
            border-color: #843534;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #ce8483;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #ce8483;
        }
        .has-error .input-group-addon {
            color: #a94442;
            background-color: #f2dede;
            border-color: #a94442;
        }
        .has-error .form-control-date-feedback {
            color: #a94442;
        }
        .has-feedback label ~ .form-control-date-feedback {
            top: 25px;
        }
        .has-feedback label.sr-only ~ .form-control-date-feedback {
            top: 0;
        }
        .help-block {
            display: block;
            margin-top: 5px;
            margin-bottom: 10px;
            color: #737373;
        }
        @media (min-width: 768px) {
            .form-inline .form-group {
                display: inline-block;
                margin-bottom: 0;
                vertical-align: middle;
            }
            .form-inline .form-control-date {
                display: inline-block;
                width: auto;
                vertical-align: middle;
            }
            .form-inline .form-control-date-static {
                display: inline-block;
            }
            .GenderRadio {
                margin-left: 30px !important;
            }
            .form-inline .input-group {
                display: inline-table;
                vertical-align: middle;
                margin-left: 30px;
            }
            .form-inline .input-group .form-control-date,
            .form-inline .input-group .input-group-addon,
            .form-inline .input-group .input-group-btn {
                width: auto;
            }
            .form-inline .input-group > .form-control-date {
                width: 100%;
            }
            .form-inline .control-label {
                margin-bottom: 0;
                vertical-align: middle;
            }
            .form-inline .checkbox,
            .form-inline .radio {
                display: inline-block;
                margin-top: 0;
                margin-bottom: 0;
                vertical-align: middle;
            }
            .form-inline .checkbox label,
            .form-inline .radio label {
                padding-left: 0;
            }
            .form-inline .checkbox input[type=checkbox],
            .form-inline .radio input[type=radio] {
                position: relative;
                margin-left: 0;
            }
            .form-inline .has-feedback .form-control-date-feedback {
                top: 0;
            }
        }
        .form-horizontal .checkbox,
        .form-horizontal .checkbox-inline,
        .form-horizontal .radio,
        .form-horizontal .radio-inline {
            padding-top: 7px;
            margin-top: 0;
            margin-bottom: 0;
        }
        .form-horizontal .checkbox,
        .form-horizontal .radio {
            min-height: 27px;
        }
        .form-horizontal .form-group {
            margin-right: -15px;
            margin-left: -15px;
        }
        @media (min-width: 768px) {
            .form-horizontal .control-label {
                padding-top: 7px;
                margin-bottom: 0;
                text-align: right;
            }
        }
        .form-horizontal .has-feedback .form-control-date-feedback {
            right: 15px;
        }
	        .input-group .form-control-date {
            position: relative;
            z-index: 2;
            float: left;
            width: 500px;
            margin-bottom: 0;
        }
        .input-group .form-control-date:focus {
            z-index: 3;
        }
        .input-group-lg > .form-control-date,
        .input-group-lg > .input-group-addon,
        .input-group-lg > .input-group-btn > .btn {
            height: 46px;
            padding: 10px 16px;
            font-size: 18px;
            line-height: 1.3333333;
            border-radius: 6px;
        }
        select.input-group-lg > .form-control-date,
        select.input-group-lg > .input-group-addon,
        select.input-group-lg > .input-group-btn > .btn {
            height: 46px;
            line-height: 46px;
        }
        select[multiple].input-group-lg > .form-control-date,
        select[multiple].input-group-lg > .input-group-addon,
        select[multiple].input-group-lg > .input-group-btn > .btn,
        textarea.input-group-lg > .form-control-date,
        textarea.input-group-lg > .input-group-addon,
        textarea.input-group-lg > .input-group-btn > .btn {
            height: auto;
        }
        .input-group-sm > .form-control-date,
        .input-group-sm > .input-group-addon,
        .input-group-sm > .input-group-btn > .btn {
            height: 30px;
            padding: 5px 10px;
            font-size: 12px;
            line-height: 1.5;
            border-radius: 3px;
        }
        select.input-group-sm > .form-control-date,
        select.input-group-sm > .input-group-addon,
        select.input-group-sm > .input-group-btn > .btn {
            height: 30px;
            line-height: 30px;
        }
        select[multiple].input-group-sm > .form-control-date,
        select[multiple].input-group-sm > .input-group-addon,
        select[multiple].input-group-sm > .input-group-btn > .btn,
        textarea.input-group-sm > .form-control-date,
        textarea.input-group-sm > .input-group-addon,
        textarea.input-group-sm > .input-group-btn > .btn {
            height: auto;
        }
        .input-group .form-control-date,
        .input-group-addon,
        .input-group-btn {
            display: table-cell;
        }
        .input-group .form-control-date:not(:first-child):not(:last-child),
        .input-group-addon:not(:first-child):not(:last-child),
        .input-group-btn:not(:first-child):not(:last-child) {
            border-radius: 0;
        }
        .input-group-addon,
        .input-group-btn {
            width: 200px;
            white-space: nowrap;
            vertical-align: middle;
        }
        .input-group-addon {
            padding: 6px 12px;
            font-size: 14px;
            font-weight: 400;
            line-height: 1;
            color: #555;
            text-align: center;
            background-color: #eee;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .input-group-addon.input-sm {
            padding: 5px 10px;
            font-size: 12px;
            border-radius: 3px;
        }
        .input-group-addon.input-lg {
            padding: 10px 16px;
            font-size: 18px;
            border-radius: 6px;
        }
        .input-group-addon input[type=checkbox],
        .input-group-addon input[type=radio] {
            margin-top: 0;
        }
        .input-group .form-control-date:first-child,
        .input-group-addon:first-child,
        .input-group-btn:first-child > .btn,
        .input-group-btn:first-child > .btn-group > .btn,
        .input-group-btn:first-child > .dropdown-toggle,
        .input-group-btn:last-child > .btn-group:not(:last-child) > .btn,
        .input-group-btn:last-child > .btn:not(:last-child):not(.dropdown-toggle) {
            border-top-right-radius: 0;
            border-bottom-right-radius: 0;
        }
        .input-group-addon:first-child {
            border-right: 0;
        }
        .input-group .form-control-date:last-child,
        .input-group-addon:last-child,
        .input-group-btn:first-child > .btn-group:not(:first-child) > .btn,
        .input-group-btn:first-child > .btn:not(:first-child),
        .input-group-btn:last-child > .btn,
        .input-group-btn:last-child > .btn-group > .btn,
        .input-group-btn:last-child > .dropdown-toggle {
            border-top-left-radius: 0;
            border-bottom-left-radius: 0;
        }
	           .navbar-form .form-control-date {
                display: inline-block;
                width: auto;
                vertical-align: middle;
            }
            .navbar-form .form-control-date-static {
                display: inline-block;
            }
            .navbar-form .input-group {
                display: inline-table;
                vertical-align: middle;
            }
            .navbar-form .input-group .form-control-date,
            .navbar-form .input-group .input-group-addon,
            .navbar-form .input-group .input-group-btn {
                width: auto;
            }
            .navbar-form .input-group > .form-control-date {
                width: 100%;
            }
            .navbar-form .control-label {
                margin-bottom: 0;
                vertical-align: middle;
            }
            .navbar-form .checkbox,
            .navbar-form .radio {
                display: inline-block;
                margin-top: 0;
                margin-bottom: 0;
                vertical-align: middle;
            }
            .navbar-form .checkbox label,
            .navbar-form .radio label {
                padding-left: 0;
            }
            .navbar-form .checkbox input[type=checkbox],
            .navbar-form .radio input[type=radio] {
                position: relative;
                margin-left: 0;
            }
            .navbar-form .has-feedback .form-control-date-feedback {
                top: 0;
            }

        </style>
    <style>
        .panel{
            background-color:black !important;
            width:300px !important;
            position:initial !important;
        }
    </style>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" class="Header-Navbar">
            <div>
                <nav class="navbar navbar-default navbar-fixed-top">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">
                                <img alt="Brand" src="Images/SVVHS.png" />
                            </a>
                            <ul class="nav nav-pills">
                                <li role="presentation" class="active">
                                    <a href="HomePage.aspx">Home</a>
                                </li>
                                    <li role="presentation">
                                        <a href="StudentManagement.aspx">Student Management</a>
                                    </li>
                                    <li role="presentation">
                                        <a href="WebsiteManagement.aspx">News Management</a>
                                    </li>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="Logout" runat="server" Width="120px" Text="Save & Logout" OnClick="Logout_Click" ForeColor="Black" CssClass="Logout-Click" />
    <br />
    <br />
    <br />
    <center>
        <asp:GridView CssClass="News-Table" ID="GridView1" class="News-Grid" runat="server" AutoGenerateColumns="False" DataKeyNames="SR_NO"
         OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" OnRowDataBound="OnRowDataBound"
        OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added." BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="DATA" ItemStyle-Width="808px">
                    <ItemTemplate>
                        <asp:Label ID="lblDATA" runat="server" Text='<%# Eval("DATA") %>'>
                        </asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDATA" runat="server" Text='<%# Eval("DATA") %>' TextMode="MultiLine" CssClass="News-Grid-Text">
                        </asp:TextBox>
                        <asp:requiredfieldvalidator id="RequiredFieldValidator1" forecolor="Red" errormessage="Text Box cannot be empty" controltovalidate="txtDATA" runat="server"></asp:requiredfieldvalidator>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Link" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ShowEditButton="true" ShowDeleteButton="true" HeaderText="EDIT / DELETE DATA" ItemStyle-Width="160px" ></asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <table border="1" style="border-collapse: collapse">
            <tr>
                <td style="width: 808px">
                    <asp:TextBox ID="txtNewDATA" runat="server" TextMode="MultiLine" CssClass="News-Grid-Text" />
                </td>
                <td style="width: 160px">
                    <center>
                        <asp:Button ID="btnAdd" runat="server" Width="80px" Text="Add" OnClick="Insert" ForeColor="Black" />
                    </center>
                </td>
            </tr>
        </table>
        <br /> <br /> <br />
        <center>
        <div class="panel panel-default">
            <div class="panel-heading">
                <center>Admission Dates</center>
            </div>
            <br />
            <div class="form-group">
                <label class="control-label">Admission Date(From)</label>
                <input type="text" onkeydown="return false;" class="form-control-date" style="width:261px !important"  placeholder="Enter the Admission Date(From)" id="txtDateFrom" runat="server" />
            </div>
            <div class="form-group">
                <label class="control-label">Admission Date(To)</label>
                <input type="text" onkeydown="return false;" class="form-control-date" style="width:261px !important"  placeholder="Enter the Admission Date(To)" id="txtDateTo" runat="server" />
            </div>
            <br />
            <asp:label runat="server" id="lblError" ForeColor="Red"></asp:label>
            <asp:Button id="Submit" Text="Submit" runat="server" class="form-control-submits" OnClick="Submit_Click" />
            <br /><br />            
        </div>
        </center>
    </center>
    <script type="text/javascript">
        $(document).ready(function () {
        $(function () {
            $(".form-control-date").datepicker({
                changeMonth: true,
                changeYear: true,
                showButtonPanel: true,
                dateFormat: 'mm-dd-yy',
                yearRange: "1900:2100"
            });
        });
        });
    </script>
</asp:Content>
