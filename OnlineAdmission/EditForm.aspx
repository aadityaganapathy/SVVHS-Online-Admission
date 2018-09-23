<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditForm.aspx.cs" Inherits="OnlineAdmission.EditForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css" id="form-control-disable">

       
         .form-control-disable {
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
        .form-control-disable-submits {
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
        .form-control-disable-submits:focus {
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
        }
        .form-control-disable-submits::-moz-placeholder {
            color: #999;
            opacity: 1;
        }
        .form-control-disable-submits:-ms-input-placeholder {
            color: #999;
        }
        .form-control-disable-submits::-webkit-input-placeholder {
            color: #999;
        }
        .form-control-disable-submits::-ms-expand {
            background-color: transparent;
            border: 0;
        }
        .form-control-disable-submits[disabled],
        .form-control-disable[readonly],
        fieldset[disabled] .form-control-disable {
            background-color: #eee;
            opacity: 1;
        }
        .form-control-disable-submits[disabled],
        fieldset[disabled] .form-control-disable {
            cursor: not-allowed;
        }
        .form-control-disable:focus {
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
        }
        .form-control-disable::-moz-placeholder {
            color: #999;
            opacity: 1;
        }
        .form-control-disable:-ms-input-placeholder {
            color: #999;
        }
        .form-control-disable::-webkit-input-placeholder {
            color: #999;
        }
        .form-control-disable::-ms-expand {
            background-color: transparent;
            border: 0;
        }
        .form-control-disable[disabled],
        .form-control-disable[readonly],
        fieldset[disabled] .form-control-disable {
            background-color: #eee;
            opacity: 1;
        }
        .form-control-disable[disabled],
        fieldset[disabled] .form-control-disable {
            cursor: not-allowed;
        }
        textarea.form-control-disable {
            height: auto;
        }
        input[type=search] {
            -webkit-appearance: none;
        }
        @media screen and (-webkit-min-device-pixel-ratio: 0) {
            input[type=date].form-control-disable,
            input[type=time].form-control-disable,
            input[type=datetime-local].form-control-disable,
            input[type=month].form-control-disable {
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
        .form-control-disable-static {
            min-height: 34px;
            padding-top: 7px;
            padding-bottom: 7px;
            margin-bottom: 0;
        }
        .form-control-disable-static.input-lg,
        .form-control-disable-static.input-sm {
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
        .form-group-sm .form-control-disable {
            height: 30px;
            padding: 5px 10px;
            font-size: 12px;
            line-height: 1.5;
            border-radius: 3px;
        }
        .form-group-sm select.form-control-disable {
            height: 30px;
            line-height: 30px;
        }
        .form-group-sm select[multiple].form-control-disable,
        .form-group-sm textarea.form-control-disable {
            height: auto;
        }
        .form-group-sm .form-control-disable-static {
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
        .form-group-lg .form-control-disable {
            height: 46px;
            padding: 10px 16px;
            font-size: 18px;
            line-height: 1.3333333;
            border-radius: 6px;
        }
        .form-group-lg select.form-control-disable {
            height: 46px;
            line-height: 46px;
        }
        .form-group-lg select[multiple].form-control-disable,
        .form-group-lg textarea.form-control-disable {
            height: auto;
        }
        .form-group-lg .form-control-disable-static {
            height: 46px;
            min-height: 38px;
            padding: 11px 16px;
            font-size: 18px;
            line-height: 1.3333333;
        }
        .has-feedback {
            position: relative;
        }
        .has-feedback .form-control-disable {
            padding-right: 42.5px;
        }
        .form-control-disable-feedback {
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
        .form-group-lg .form-control-disable + .form-control-disable-feedback,
        .input-group-lg + .form-control-disable-feedback,
        .input-lg + .form-control-disable-feedback {
            width: 46px;
            height: 46px;
            line-height: 46px;
        }
        .form-group-sm .form-control-disable + .form-control-disable-feedback,
        .input-group-sm + .form-control-disable-feedback,
        .input-sm + .form-control-disable-feedback {
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
        .has-success .form-control-disable {
            border-color: #3c763d;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        }
        .has-success .form-control-disable:focus {
            border-color: #2b542c;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #67b168;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #67b168;
        }
        .has-success .input-group-addon {
            color: #3c763d;
            background-color: #dff0d8;
            border-color: #3c763d;
        }
        .has-success .form-control-disable-feedback {
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
        .has-warning .form-control-disable {
            border-color: #8a6d3b;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        }
        .has-warning .form-control-disable:focus {
            border-color: #66512c;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #c0a16b;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #c0a16b;
        }
        .has-warning .input-group-addon {
            color: #8a6d3b;
            background-color: #fcf8e3;
            border-color: #8a6d3b;
        }
        .has-warning .form-control-disable-feedback {
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
        .has-error .form-control-disable {
            border-color: #a94442;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        }
        .has-error .form-control-disable:focus {
            border-color: #843534;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #ce8483;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #ce8483;
        }
        .has-error .input-group-addon {
            color: #a94442;
            background-color: #f2dede;
            border-color: #a94442;
        }
        .has-error .form-control-disable-feedback {
            color: #a94442;
        }
        .has-feedback label ~ .form-control-disable-feedback {
            top: 25px;
        }
        .has-feedback label.sr-only ~ .form-control-disable-feedback {
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
            .form-inline .form-control-disable {
                display: inline-block;
                width: auto;
                vertical-align: middle;
            }
            .form-inline .form-control-disable-static {
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
            .form-inline .input-group .form-control-disable,
            .form-inline .input-group .input-group-addon,
            .form-inline .input-group .input-group-btn {
                width: auto;
            }
            .form-inline .input-group > .form-control-disable {
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
            .form-inline .has-feedback .form-control-disable-feedback {
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
        .form-horizontal .has-feedback .form-control-disable-feedback {
            right: 15px;
        }
	        .input-group .form-control-disable {
            position: relative;
            z-index: 2;
            float: left;
            width: 500px;
            margin-bottom: 0;
        }
        .input-group .form-control-disable:focus {
            z-index: 3;
        }
        .input-group-lg > .form-control-disable,
        .input-group-lg > .input-group-addon,
        .input-group-lg > .input-group-btn > .btn {
            height: 46px;
            padding: 10px 16px;
            font-size: 18px;
            line-height: 1.3333333;
            border-radius: 6px;
        }
        select.input-group-lg > .form-control-disable,
        select.input-group-lg > .input-group-addon,
        select.input-group-lg > .input-group-btn > .btn {
            height: 46px;
            line-height: 46px;
        }
        select[multiple].input-group-lg > .form-control-disable,
        select[multiple].input-group-lg > .input-group-addon,
        select[multiple].input-group-lg > .input-group-btn > .btn,
        textarea.input-group-lg > .form-control-disable,
        textarea.input-group-lg > .input-group-addon,
        textarea.input-group-lg > .input-group-btn > .btn {
            height: auto;
        }
        .input-group-sm > .form-control-disable,
        .input-group-sm > .input-group-addon,
        .input-group-sm > .input-group-btn > .btn {
            height: 30px;
            padding: 5px 10px;
            font-size: 12px;
            line-height: 1.5;
            border-radius: 3px;
        }
        select.input-group-sm > .form-control-disable,
        select.input-group-sm > .input-group-addon,
        select.input-group-sm > .input-group-btn > .btn {
            height: 30px;
            line-height: 30px;
        }
        select[multiple].input-group-sm > .form-control-disable,
        select[multiple].input-group-sm > .input-group-addon,
        select[multiple].input-group-sm > .input-group-btn > .btn,
        textarea.input-group-sm > .form-control-disable,
        textarea.input-group-sm > .input-group-addon,
        textarea.input-group-sm > .input-group-btn > .btn {
            height: auto;
        }
        .input-group .form-control-disable,
        .input-group-addon,
        .input-group-btn {
            display: table-cell;
        }
        .input-group .form-control-disable:not(:first-child):not(:last-child),
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
        .input-group .form-control-disable:first-child,
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
        .input-group .form-control-disable:last-child,
        .input-group-addon:last-child,
        .input-group-btn:first-child > .btn-group:not(:first-child) > .btn,
        .input-group-btn:first-child > .btn:not(:first-child),
        .input-group-btn:last-child > .btn,
        .input-group-btn:last-child > .btn-group > .btn,
        .input-group-btn:last-child > .dropdown-toggle {
            border-top-left-radius: 0;
            border-bottom-left-radius: 0;
        }
	           .navbar-form .form-control-disable {
                display: inline-block;
                width: auto;
                vertical-align: middle;
            }
            .navbar-form .form-control-disable-static {
                display: inline-block;
            }
            .navbar-form .input-group {
                display: inline-table;
                vertical-align: middle;
            }
            .navbar-form .input-group .form-control-disable,
            .navbar-form .input-group .input-group-addon,
            .navbar-form .input-group .input-group-btn {
                width: auto;
            }
            .navbar-form .input-group > .form-control-disable {
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
            .navbar-form .has-feedback .form-control-disable-feedback {
                top: 0;
            }
        }

        </style>
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
    <style type="text/css">

         body {
            margin-top:40px;
        }
        .btn-default{
            margin-right: 20px !important;
        }
        .stepwizard-step p {
            margin-top: 10px;           
        }
        .h3, h3{
            margin-left:0px !important;
        }
        .stepwizard-row {
            display: table-row;
        }
        .stepwizard {
            display: table;
            width: 50%;
            position: center;
        }
        .stepwizard-step button[disabled] {
            opacity: 1 !important;
            filter: alpha(opacity=100) !important;
        }
        .stepwizard-row:before {
            top: 14px;
            bottom: 0;
            position: fixed;
            content: " ";
            width: 100%;
            height: 1px;
            background-color: #ccc;
            z-index: 0;
        }
        .stepwizard-step {
            display: table-cell;
            text-align: center;
            position: relative;
        }
        .form-control{
            width:600px !important;
        }
        .wizard-container{
            width: 570px !important;

            margin:100px 100px 100px 100px !important;
        }

</style>
    <style type="text/css" id="form-control-number">

       
         .form-control-number {
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
        .form-control-number-submits {
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
        .form-control-number-submits:focus {
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
        }
        .form-control-number-submits::-moz-placeholder {
            color: #999;
            opacity: 1;
        }
        .form-control-number-submits:-ms-input-placeholder {
            color: #999;
        }
        .form-control-number-submits::-webkit-input-placeholder {
            color: #999;
        }
        .form-control-number-submits::-ms-expand {
            background-color: transparent;
            border: 0;
        }
        .form-control-number-submits[disabled],
        .form-control-number[readonly],
        fieldset[disabled] .form-control-number {
            background-color: #eee;
            opacity: 1;
        }
        .form-control-number-submits[disabled],
        fieldset[disabled] .form-control-number {
            cursor: not-allowed;
        }
        .form-control-number:focus {
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
        }
        .form-control-number::-moz-placeholder {
            color: #999;
            opacity: 1;
        }
        .form-control-number:-ms-input-placeholder {
            color: #999;
        }
        .form-control-number::-webkit-input-placeholder {
            color: #999;
        }
        .form-control-number::-ms-expand {
            background-color: transparent;
            border: 0;
        }
        .form-control-number[disabled],
        .form-control-number[readonly],
        fieldset[disabled] .form-control-number {
            background-color: #eee;
            opacity: 1;
        }
        .form-control-number[disabled],
        fieldset[disabled] .form-control-number {
            cursor: not-allowed;
        }
        textarea.form-control-number {
            height: auto;
        }
        input[type=search] {
            -webkit-appearance: none;
        }
        @media screen and (-webkit-min-device-pixel-ratio: 0) {
            input[type=date].form-control-number,
            input[type=time].form-control-number,
            input[type=datetime-local].form-control-number,
            input[type=month].form-control-number {
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
        .form-control-number-static {
            min-height: 34px;
            padding-top: 7px;
            padding-bottom: 7px;
            margin-bottom: 0;
        }
        .form-control-number-static.input-lg,
        .form-control-number-static.input-sm {
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
        .form-group-sm .form-control-number {
            height: 30px;
            padding: 5px 10px;
            font-size: 12px;
            line-height: 1.5;
            border-radius: 3px;
        }
        .form-group-sm select.form-control-number {
            height: 30px;
            line-height: 30px;
        }
        .form-group-sm select[multiple].form-control-number,
        .form-group-sm textarea.form-control-number {
            height: auto;
        }
        .form-group-sm .form-control-number-static {
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
        .form-group-lg .form-control-number {
            height: 46px;
            padding: 10px 16px;
            font-size: 18px;
            line-height: 1.3333333;
            border-radius: 6px;
        }
        .form-group-lg select.form-control-number {
            height: 46px;
            line-height: 46px;
        }
        .form-group-lg select[multiple].form-control-number,
        .form-group-lg textarea.form-control-number {
            height: auto;
        }
        .form-group-lg .form-control-number-static {
            height: 46px;
            min-height: 38px;
            padding: 11px 16px;
            font-size: 18px;
            line-height: 1.3333333;
        }
        .has-feedback {
            position: relative;
        }
        .has-feedback .form-control-number {
            padding-right: 42.5px;
        }
        .form-control-number-feedback {
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
        .form-group-lg .form-control-number + .form-control-number-feedback,
        .input-group-lg + .form-control-number-feedback,
        .input-lg + .form-control-number-feedback {
            width: 46px;
            height: 46px;
            line-height: 46px;
        }
        .form-group-sm .form-control-number + .form-control-number-feedback,
        .input-group-sm + .form-control-number-feedback,
        .input-sm + .form-control-number-feedback {
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
        .has-success .form-control-number {
            border-color: #3c763d;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        }
        .has-success .form-control-number:focus {
            border-color: #2b542c;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #67b168;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #67b168;
        }
        .has-success .input-group-addon {
            color: #3c763d;
            background-color: #dff0d8;
            border-color: #3c763d;
        }
        .has-success .form-control-number-feedback {
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
        .has-warning .form-control-number {
            border-color: #8a6d3b;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        }
        .has-warning .form-control-number:focus {
            border-color: #66512c;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #c0a16b;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #c0a16b;
        }
        .has-warning .input-group-addon {
            color: #8a6d3b;
            background-color: #fcf8e3;
            border-color: #8a6d3b;
        }
        .has-warning .form-control-number-feedback {
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
        .has-error .form-control-number {
            border-color: #a94442;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        }
        .has-error .form-control-number:focus {
            border-color: #843534;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #ce8483;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 6px #ce8483;
        }
        .has-error .input-group-addon {
            color: #a94442;
            background-color: #f2dede;
            border-color: #a94442;
        }
        .has-error .form-control-number-feedback {
            color: #a94442;
        }
        .has-feedback label ~ .form-control-number-feedback {
            top: 25px;
        }
        .has-feedback label.sr-only ~ .form-control-number-feedback {
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
            .form-inline .form-control-number {
                display: inline-block;
                width: auto;
                vertical-align: middle;
            }
            .form-inline .form-control-number-static {
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
            .form-inline .input-group .form-control-number,
            .form-inline .input-group .input-group-addon,
            .form-inline .input-group .input-group-btn {
                width: auto;
            }
            .form-inline .input-group > .form-control-number {
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
            .form-inline .has-feedback .form-control-number-feedback {
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
        .form-horizontal .has-feedback .form-control-number-feedback {
            right: 15px;
        }
	        .input-group .form-control-number {
            position: relative;
            z-index: 2;
            float: left;
            width: 500px;
            margin-bottom: 0;
        }
        .input-group .form-control-number:focus {
            z-index: 3;
        }
        .input-group-lg > .form-control-number,
        .input-group-lg > .input-group-addon,
        .input-group-lg > .input-group-btn > .btn {
            height: 46px;
            padding: 10px 16px;
            font-size: 18px;
            line-height: 1.3333333;
            border-radius: 6px;
        }
        select.input-group-lg > .form-control-number,
        select.input-group-lg > .input-group-addon,
        select.input-group-lg > .input-group-btn > .btn {
            height: 46px;
            line-height: 46px;
        }
        select[multiple].input-group-lg > .form-control-number,
        select[multiple].input-group-lg > .input-group-addon,
        select[multiple].input-group-lg > .input-group-btn > .btn,
        textarea.input-group-lg > .form-control-number,
        textarea.input-group-lg > .input-group-addon,
        textarea.input-group-lg > .input-group-btn > .btn {
            height: auto;
        }
        .input-group-sm > .form-control-number,
        .input-group-sm > .input-group-addon,
        .input-group-sm > .input-group-btn > .btn {
            height: 30px;
            padding: 5px 10px;
            font-size: 12px;
            line-height: 1.5;
            border-radius: 3px;
        }
        select.input-group-sm > .form-control-number,
        select.input-group-sm > .input-group-addon,
        select.input-group-sm > .input-group-btn > .btn {
            height: 30px;
            line-height: 30px;
        }
        select[multiple].input-group-sm > .form-control-number,
        select[multiple].input-group-sm > .input-group-addon,
        select[multiple].input-group-sm > .input-group-btn > .btn,
        textarea.input-group-sm > .form-control-number,
        textarea.input-group-sm > .input-group-addon,
        textarea.input-group-sm > .input-group-btn > .btn {
            height: auto;
        }
        .input-group .form-control-number,
        .input-group-addon,
        .input-group-btn {
            display: table-cell;
        }
        .input-group .form-control-number:not(:first-child):not(:last-child),
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
        .input-group .form-control-number:first-child,
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
        .input-group .form-control-number:last-child,
        .input-group-addon:last-child,
        .input-group-btn:first-child > .btn-group:not(:first-child) > .btn,
        .input-group-btn:first-child > .btn:not(:first-child),
        .input-group-btn:last-child > .btn,
        .input-group-btn:last-child > .btn-group > .btn,
        .input-group-btn:last-child > .dropdown-toggle {
            border-top-left-radius: 0;
            border-bottom-left-radius: 0;
        }
	           .navbar-form .form-control-number {
                display: inline-block;
                width: auto;
                vertical-align: middle;
            }
            .navbar-form .form-control-number-static {
                display: inline-block;
            }
            .navbar-form .input-group {
                display: inline-table;
                vertical-align: middle;
            }
            .navbar-form .input-group .form-control-number,
            .navbar-form .input-group .input-group-addon,
            .navbar-form .input-group .input-group-btn {
                width: auto;
            }
            .navbar-form .input-group > .form-control-number {
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
            .navbar-form .has-feedback .form-control-number-feedback {
                top: 0;
            }

        </style>
    <style type="text/css" id="DatePicker">

    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="scripts/modernizr-custom.js"></script>
    <script src="scripts/polyfiller.js"></script>
    <script src="scripts/jquery-1.9.1.js"></script>
    <script src="scripts/jquery-1.9.1.min.js"></script>
    <script src="scripts/bootstrap.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wizard-container">
            <div class="stepwizard-row setup-panel">
                <div class="stepwizard-step">
                    <a href="#step-1" type="button" class="btn btn-primary carousel">Pupil Details</a>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-2" type="button" class="btn btn-default carousel" style="display:none !important;" disabled="disabled">Fathers Details</a>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-3" type="button" class="btn btn-default carousel" style="display:none !important;" disabled="disabled">Mothers Details</a>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-4" type="button" class="btn btn-default carousel" style="display:none !important;" disabled="disabled">General Information</a>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-5" type="button" class="btn btn-default carousel" style="display:none !important;" disabled="disabled">Disclaimer</a>
                </div>
            </div>

            <div class="row setup-content" id="step-1">
                        <h3>Pupil Details</h3>

                        <div class="form-group">
                            <label class="control-label">First Name</label>
                            <input maxlength="20" pattern=".{1,20}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter the First Name of the Pupil" id="txtFirstName" runat="server" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Middle Name</label>
                            <input maxlength="20" pattern=".{0,20}" title="Input Invalid" type="text" class="form-control" placeholder="Enter the Middle Name of the Pupil" id="txtMiddleName" runat="server" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Last Name / Surname</label>
                            <input maxlength="20" pattern=".{1,20}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter the Surname of the Pupil" id="txtSurname" runat="server" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Gender</label><br />
                            <input type="radio" value="Male" id="chkMale"  runat="server" name="Gender"  required="required" /> <label class="control-label">Male</label><br />
                            <input type="radio" value="Female" id="chkFemale"  runat="server" name="Gender"  required="required" /> <label class="control-label">Female</label>                      
                        </div>
                        <div class="form-group">
                            <label class="control-label">Mother Tongue</label>
                            <input maxlength="20" pattern=".{1,20}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter the Mother Tongue of the Pupil" id="txtMotherTongue" runat="server" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Religion</label>
                            <input maxlength="20" pattern=".{1,20}" title="Input Invalid" type="text" required="required" class="form-control" placeholder="Enter the Religion of the Pupil" id="txtReligion" runat="server" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Caste-Sub Caste</label>
                            <input maxlength="20" pattern=".{1,20}" title="Input Invalid" type="text" required="required" class="form-control" placeholder="Enter the Caste - Sub Caste of the Pupil" id="txtCasteSubCaste" runat="server" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date of Birth - (mm/dd/yyyy)</label>
                            <input type="text" required="required" onkeydown="return false;" class="form-control-date"  placeholder="Enter the Date Of Birth of the Pupil" id="txtDateOfBirth" runat="server" />
                       </div>
                        <div class="form-group">
                            <label class="control-label">Place of Birth</label>
                            <input maxlength="30" pattern=".{1,30}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter the Place Of Birth of the Pupil" id="txtPlaceOfBirth" runat="server" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Residential Address</label>
                            <textarea class="form-control" required="required" placeholder="Enter the Residential Address of the Pupil" id="txtResidentialAddress" runat="server" ></textarea>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Residential Area</label>
                            <select name="gender" class="form-control" placeholder="Enter the Residential Area of the Pupil" required="required" runat="server" id="valArea">
                                <option value="" class="form-control" disabled="disabled" selected="selected" >Enter the Residential Area of the Pupil</option>                            
                                <option value="Anupam Nagar" class="form-control">Anupam Nagar</option>
                                <option value="Atulbaug" class="form-control">Atulbaug</option>
                                <option value="B Ward Office" class="form-control">B Ward Office</option>
                                <option value="Barave Gaon" class="form-control">Barave Gaon</option>
                                <option value="Beturkarpada" class="form-control">Beturkarpada</option>
                                <option value="Bhawani Nagar" class="form-control">Bhawani Nagar</option>
                                <option value="Birla College" class="form-control">Birla College</option>
                                <option value="Bhoirwadi" class="form-control">Bhoirwadi</option>
                                <option value="Chatri Bunglow" class="form-control">Chatri Bunglow</option>
                                <option value="Chikanghar" class="form-control">Chikanghar</option>
                                <option value="Chotamhasoba Maidan" class="form-control">Chotamhasoba Maidan</option>
                                <option value="D-Mart" class="form-control">D-Mart</option>
                                <option value="Forest Society" class="form-control">Forest Society</option>
                                <option value="Gaikarpada" class="form-control">Gaikarpada</option>
                                <option value="Gandhari" class="form-control">Gandhari</option>
                                <option value="Gauripada" class="form-control">Gauripada</option>
                                <option value="Gholap Nagar" class="form-control">Gholap Nagar</option>
                                <option value="Godrej Hill" class="form-control">Godrej Hill</option>
                                <option value="Golden Park" class="form-control">Golden Park</option>
                                <option value="Indira Nagar" class="form-control">Indira Nagar</option>
                                <option value="Karnik Road" class="form-control">Karnik Road</option>
                                <option value="Khadakpada" class="form-control">Khadakpada</option>
                                <option value="Konkan Vashat" class="form-control">Konkan Vashat</option>
                                <option value="Mhasoba Maidan" class="form-control">Mhasoba Maidan</option>
                                <option value="Milind Nagar" class="form-control">Milind Nagar</option>
                                <option value="Murbad Road" class="form-control">Murbad Road</option>
                                <option value="New Chikannagar" class="form-control">New Chikannagar</option>
                                <option value="New RTO" class="form-control">New RTO</option>
                                <option value="Old Lourdes" class="form-control">Old Lourdes</option>
                                <option value="Pournima Talkis" class="form-control">Pournima Talkis</option>
                                <option value="Prem Auto" class="form-control">Prem Auto</option>
                                <option value="Rambaug" class="form-control">Rambaug</option>
                                <option value="Ramdaswadi" class="form-control">Ramdaswadi</option>
                                <option value="RTO" class="form-control">RTO</option>
                                <option value="Sahyadri Nagar" class="form-control">Sahyadri Nagar</option>
                                <option value="Sanjivini Hospital" class="form-control">Sanjivini Hospital</option>
                                <option value="St.Thomas School" class="form-control">St.Thomas School</option>
                                <option value="Syndicate" class="form-control">Syndicate</option>
                                <option value="Tawripada" class="form-control">Tawripada</option>
                                <option value="Vijay Nagar" class="form-control">Vijay Nagar</option>
                                <option value="Wayle Nagar" class="form-control">Wayle Nagar</option>
                                <option value="Yogidham" class="form-control">Yogidham</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Aadhar Card Number</label>
                            <input maxlength="12" pattern=".{12,12}" title="Input Invalid"  type="text" required="required" class="form-control-number" placeholder="Enter the Aadhar Card Number of the Pupil" id="txtAadharNumber" runat="server" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Medical History if Any</label>
                            <textarea class="form-control" placeholder="Enter the Medical History of the Pupil" id="txtMedialHistory" runat="server" ></textarea>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Additional Information if any</label>
                            <textarea class="form-control" placeholder="Enter the Additional Information of the Pupil" id="txtAdditionalInformation" runat="server" ></textarea>
                        </div>
                        <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button><br /> <br />
            </div>

            <div class="row setup-content" id="step-2">
                        <h3>Step 2</h3>
                        <div class="form-group">
                            <label class="control-label">Father's Name</label>
                            <input maxlength="40" pattern=".{1,40}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter Father's Name" id="txtFathersName" runat="server"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Father's Qualification</label>
                            <input maxlength="50" pattern=".{1,50}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter Father's Qualification" id="txtFathersQualification" runat="server" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Father's Occupation</label>
                            <input maxlength="50" pattern=".{1,50}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter Father's Occupation" id="txtFathersOccupation" runat="server" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Father's Native Place</label>
                            <input maxlength="30" pattern=".{1,30}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter Father's Native Place" id="txtFathersNative" runat="server"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Father's E-Mail Address</label>
                            <input maxlength="30" pattern=".{1,50}" title="Input Invalid"  type="email" required="required" class="form-control" placeholder="Enter Father's E-Mail Address" id="txtFatherEmail" runat="server"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Father's Telephone</label>
                            <div class="input-group">
                            <span class="input-group-addon">+91-251</span>
                            <input maxlength="12" type="text" class="form-control-number" placeholder="Enter Father's Father's Telephone" id="txtFathersTelephone" runat="server"/>                        
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Father's Mobile Number</label>
                            <div class="input-group">
                            <span class="input-group-addon">+91</span>
                            <input maxlength="10" pattern=".{10,10}" title="Input Invalid"  type="text" required="required" class="form-control-number" placeholder="Enter Father's Mobile Number" id="txtFathersMobile" runat="server"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Father's WhatsApp Number</label>
                            <div class="input-group">
                            <span class="input-group-addon">+91</span>
                            <input maxlength="10" type="text" class="form-control-number" placeholder="Enter Father's WhatsApp Number" id="txtFathersWhatsapp" runat="server"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Father's Residential Address</label>
                            <textarea class="form-control" required="required" placeholder="Enter Father's Residential Address" id="txtFathersAddress" runat="server"></textarea>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Father's Office Address</label>
                            <textarea class="form-control" placeholder="Enter Father's Office Address" id="txtFathersOfficeAddress" runat="server" ></textarea>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Father's Office Telephone Number</label>
                            <div class="input-group">
                            <span class="input-group-addon">+91</span>
                            <input maxlength="12" type="text" class="form-control-number" placeholder="Enter Father's Office Telephone Number" id="txtFathersOfficeTelephone" runat="server"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Father's PAN Number</label>
                            <input maxlength="10" pattern=".{10,10}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter Father's PAN Number" id="txtFathersPAN" runat="server"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Father's Aadhar Number</label>
                            <input maxlength="12" pattern=".{12,12}" title="Input Invalid"  type="text" required="required" class="form-control-number" placeholder="Enter Father's Aadhar Number" id="txtFathersAadhar" runat="server"/>
                        </div>
                        <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button><br /><br />
            </div>            
        
            <div class="row setup-content" id="step-3">
                        <h3>Step 3</h3>
                        <div class="form-group">
                            <label class="control-label">Mother's Name</label>
                            <input maxlength="40" pattern=".{1,40}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter Mother's Name" id="txtMothersName" runat="server"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Mother's Maiden Name</label>
                            <input maxlength="40" pattern=".{1,40}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter Mother's Maiden Name" id="txtMothersMaidenName" runat="server"/>
                        </div>						
                        <div class="form-group">
                            <label class="control-label">Mother's Qualification</label>
                            <input maxlength="50" pattern=".{1,50}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter Mother's Qualification" id="txtMothersQualification" runat="server" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Mother's Occupation</label>
                            <input maxlength="50" pattern=".{1,50}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter Mother's Occupation" id="txtMothersOccupation" runat="server" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Mother's Native Place</label>
                            <input maxlength="30" pattern=".{1,30}" title="Input Invalid"  type="text" required="required" class="form-control" placeholder="Enter Mother's Native Place" id="txtMothersNative" runat="server"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Mother's E-Mail Address</label>
                            <input maxlength="50" pattern=".{0}|.{6,50}" title="Input Invalid"  type="email" class="form-control" placeholder="Enter Mothers's E-Mail Address" id="txtMotherEmail" runat="server"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Mother's Telephone</label>
                            <div class="input-group">
                            <span class="input-group-addon">+91-251</span>
                            <input maxlength="12" type="text" class="form-control-number" placeholder="Enter Mother's Mother's Telephone" id="txtMothersTelephone" runat="server"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Mother's Mobile Number</label>
                            <div class="input-group">
                            <span class="input-group-addon">+91</span>
                            <input maxlength="10" pattern=".{10,10}" title="Input Invalid"  type="text" required="required" class="form-control-number" placeholder="Enter Mother's Mobile Number" id="txtMothersMobile" runat="server"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Mother's WhatsApp Number</label>
                            <div class="input-group">
                            <span class="input-group-addon">+91</span>
                            <input maxlength="10"  type="text" class="form-control-number" placeholder="Enter Mother's WhatsApp Number" id="txtMothersWhatsapp" runat="server"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Mother's Residential Address</label>
                            <textarea class="form-control" required="required" placeholder="Enter Mother's Residential Address" id="txtMothersAddress" runat="server"></textarea>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Mother's Office Address</label>
                            <textarea class="form-control" placeholder="Enter Mother's Office Address" id="txtMothersOfficeAddress" runat="server" ></textarea>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Mother's Office Telephone Number</label>
                            <div class="input-group">
                            <span class="input-group-addon">+91</span>
                            <input maxlength="12" type="text" class="form-control-number" placeholder="Enter Mother's Office Telephone Number" id="txtMothersOfficeTelephone" runat="server"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Mother's PAN Number</label>
                            <input maxlength="10" type="text" class="form-control" placeholder="Enter Mother's PAN Number" id="txtMothersPAN" runat="server"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Mother's Aadhar Number</label>
                            <input maxlength="12" pattern=".{12,12}" title="Input Invalid"  type="text" required="required" class="form-control-number" placeholder="Enter Mother's Aadhar Number" id="txtMothersAadhar" runat="server"/>
                        </div>
                        <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
            </div>

            <div class="row setup-content" id="step-4">
                        <h3>Step 4</h3>

                        <div class="form-group" >
                            <label class="control-label">Whether any other children of the same family is studying in Primary/ Secondary Section of SVVHS</label><br />
                            <input type="radio" value="yes" id="chkRelatedStudentYes" runat="server" class="radiobutton" name="RelatedStudent" required="required"/> <label class="control-label">Yes</label><br />
                            <input type="radio" value="no" id="chkRelatedStudentNo" runat="server" class="radiobutton" name="RelatedStudent" required="required" /> <label class="control-label">No</label>
                         </div>

                        <div class="form-group">
                            <label class="control-label">Name of the Student</label>
                            <input maxlength="40" pattern=".{1,40}" title="Input Invalid"  type="text" disabled="disabled" required="required" class="form-control-disable" placeholder="Enter Name of the Related Student" id="txtRelatedStudentName" runat="server"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Section</label><br />
                            <input type="radio" value="Primary" id="chkPrimary"  disabled="disabled" class="form-control-disable-RBTN" runat="server" name="Section"  required="required" /> <label class="control-label">Primary</label><br />
                            <input type="radio" value="Secondary" id="chkSecondary"  disabled="disabled" class="form-control-disable-RBTN" runat="server" name="Section"  required="required" /> <label class="control-label">Secondary</label>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Standard</label>
                            <input maxlength="10" type="text" required="required"  disabled="disabled" class="form-control-disable" placeholder="Enter Standard of the Related Student" id="txtStandard" runat="server"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Division</label>
                            <input maxlength="1" type="text" required="required"  disabled="disabled" class="form-control-disable" placeholder="Enter Division of the Related Student" id="txtDivision" runat="server"/>
                        </div>


                        <div class="form-group">
                            <label class="control-label">Total Family Income (Per Annum)</label><br />
                            <input type="radio" value="< 50,000" id="chkIncome1" runat="server" name="FamilyIncome"  required="required" /> <label class="control-label">Less than 50,000</label><br />
                            <input type="radio" value="50,001 - 1,00,000" id="chkIncome2" runat="server" name="FamilyIncome"  required="required"/> <label class="control-label">50,001- 1,00,000</label><br />
                            <input type="radio" value="1,00,001 - 2,00,000" id="chkIncome3" runat="server" name="FamilyIncome"  required="required"/> <label class="control-label">1,00,001 - 2,00,000</label><br />
                            <input type="radio" value="2,00,001 - 3,00,000" id="chkIncome4" runat="server" name="FamilyIncome"  required="required"/> <label class="control-label">2,00,001 - 3,00,000</label><br />
                            <input type="radio" value="3,00,001 - 4,00,000" id="chkIncome5" runat="server" name="FamilyIncome"  required="required"/> <label class="control-label">3,00,001 - 4,00,000</label><br />
                            <input type="radio" value="> 4,00,000" id="chkIncome6" runat="server" name="FamilyIncome"  required="required"/> <label class="control-label">Greater than 4,00,000</label><br />                                      
                        </div>

                        <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
                        
            </div>

            <div class="row setup-content" id="step-5">
                <h3>Step 5</h3>
                <br />
                <div class="form-group">
                    <h4 >Terms & Conditions</h4> <br />
                    <b>
                        <p>INFORMATION FURNISHED IN THE FORM ARE TRUE TO THE BEST OF OUR KNOWLEDGE AND BELIEF.</p><br />
                        <p>INCOMPLETE / INCORRECT INFORMATION WILL DISQUALIFY ADMISSION.</p><br />
                        <p>SUBMISSION OF THIS APPLICATION DOES NOT GUARANTEE ADMISSION.</p><br />
                        <p>IF ADMISSION IS GRANTED, WE AGREE TO ABIDE BY THE RULES & REGULATIONS OF THE SCHOOL IN FORCE FROM TIME TO TIME.</p><br />
                    </b>
                    <p>
                        <input type="checkbox" class="accept-tc" required="required" /> I Agree to the Terms & Conditions mentioned above.
                    </p>
                </div>
                <asp:Button id="Submit" Text="Submit" runat="server" OnClick="Submit_Click" class="form-control-submits" />
            </div>
     </div>

        <script type="text/javascript">

            $(document).ready(function () {
            var navListItems = $('div.setup-panel div a'),
                    allWells = $('.setup-content'),
                    allNextBtn = $('.nextBtn');

            allWells.hide();

            navListItems.click(function (e) {
                e.preventDefault();
                var $target = $($(this).attr('href')),
                        $item = $(this);

                if (!$item.hasClass('disabled')) {
                    navListItems.removeClass('btn-primary').addClass('btn-default');
                    $item.addClass('btn-primary');
                    allWells.hide();
                    $target.show();
                    $target.find('input:eq(0)').focus();
                }
            });

            allNextBtn.click(function () {
                var curStep = $(this).closest(".setup-content"),
                    curStepBtn = curStep.attr("id"),
                    nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
                    curInputs = curStep.find("input[type='text'],input[type='email'],input[type='date'],input[type='radio'],select, textarea"),
                    isValid = true;

                $(".form-group").removeClass("has-error");
                for (var i = 0; i < curInputs.length; i++) {
                    if (!curInputs[i].validity.valid) {
                        isValid = false;
                        $(curInputs[i]).closest(".form-group").addClass("has-error");
                    }
                }

                if (isValid) {
                    nextStepWizard.removeAttr('disabled').trigger('click');
                    nextStepWizard.removeAttr('style').trigger('click');
                }
                    
            });

            $('div.setup-panel div a.btn-primary').trigger('click');

            $("input[type=radio]:radio").click(function () {
                if ($(this).val() == 'yes') {
                    $(".form-control-disable").removeAttr("disabled");
                    $(".form-control-disable-RBTN").removeAttr("disabled");
                        }
                else if ($(this).val() == 'no') {
                    $(".form-control-disable").attr("disabled", "disabled");
                    $(".form-control-disable-RBTN").attr("disabled", "disabled");
                        }
            });

            $(".form-control-submits").click(function () {
                var curStep = $(this).closest(".setup-content"),
                    curStepBtn = curStep.attr("id"),
                    nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
                    curInputs = curStep.find("input[type='checkbox']"),
                    isValid = true;
                for (var i = 0; i < curInputs.length; i++) {
                    if (!curInputs[i].validity.valid) {
                        isValid = false;
                    }
                }
            });

            $(".form-control-number").keydown(function (e) {
                // Allow: backspace, delete, tab, escape, enter and .
                if ($.inArray(e.keyCode, [46, 8, 9, 17, 27, 13, 67, 86, 88, 110, 190]) !== -1 ||
                    // Allow: Ctrl+A, Command+A
                    (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
                    // Allow: home, end, left, right, down, up
                    (e.keyCode >= 35 && e.keyCode <= 40)) {
                    // let it happen, don't do anything
                    return;
                }
                // Ensure that it is a number and stop the keypress
                if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                    e.preventDefault();
                }
            });

            $(function () {
                $(".form-control-date").datepicker({
                    changeMonth: true,
                    changeYear: true,
                    showButtonPanel: true,
                    dateFormat: 'mm-dd-yy',
                    yearRange: "2000:2020"
                });
            });
        });
        </script>

            
</asp:Content>

