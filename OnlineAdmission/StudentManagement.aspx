<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentManagement.aspx.cs" Inherits="OnlineAdmission.StudentManagement" %>
<!DOCTYPE html>
<html
    xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Sri Vani Vidyashala High School</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

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
        .checkbox-grid td{
            text-align: left !important;
            display: inline-table !important;
            float: left !important;
            width: 183px !important;
            font-size:14px !important;
            margin-bottom:0px !important;
        }
            .TestTable th, td {
                padding: 1.3px !important
            }
            #SearchResultTable :nth-child(1){
                min-width:40px !important;
                width:40px !important;
                max-width:40px !important;
                padding-top:5px !important;
                padding-bottom:5px !important;
                padding-left:5px !important;
                padding-right:5px !important;
                font-size:15px !important;
            }
            #SearchResultTable :nth-child(2){
                min-width:65px !important;
                width:65px !important;
                max-width:65px !important;
                padding-top:5px !important;
                padding-bottom:5px !important;
                padding-left:5px !important;
                padding-right:5px !important;
                font-size:15px !important;
            }
            #SearchResultTable :nth-child(3){
                min-width:110px !important;
                width:110px !important;
                max-width:110px !important;
                padding-top:5px !important;
                padding-bottom:5px !important;
                padding-left:5px !important;
                padding-right:5px !important;
                font-size:15px !important;
            }
            #SearchResultTable :nth-child(4){
                min-width:200px !important;
                width:200px !important;
                max-width:200px !important;
                word-break:break-word !important;
                padding-top:5px !important;
                padding-bottom:5px !important;
                padding-left:5px !important;
                padding-right:5px !important;
                font-size:15px !important;
            }
            #SearchResultTable :nth-child(5){
                min-width:200px !important;
                width:200px !important;
                max-width:200px !important;
                word-break:break-word !important;
                padding-top:5px !important;
                padding-bottom:5px !important;
                padding-left:5px !important;
                padding-right:5px !important;
                font-size:15px !important;
            }
            #SearchResultTable :nth-child(6){
                min-width:80px !important;
                width:80px !important;
                max-width:80px !important;
                padding-top:5px !important;
                padding-bottom:5px !important;
                padding-left:5px !important;
                padding-right:5px !important;
                font-size:15px !important;
            }
            #SearchResultTable :nth-child(7){
                min-width:120px !important;
                width:120px !important;
                max-width:120px !important;
                padding-top:5px !important;
                padding-bottom:5px !important;
                padding-left:5px !important;
                padding-right:5px !important;
                font-size:15px !important;
            }
            #SearchResultTable :nth-child(8){
                min-width:200px !important;
                width:200px !important;
                max-width:200px !important;
                padding-top:5px !important;
                padding-bottom:5px !important;
                padding-left:5px !important;
                padding-right:5px !important;
                font-size:15px !important;
            }
            #SearchResultTable :nth-child(9){
                min-width:120px !important;
                width:120px !important;
                max-width:120px !important;
                padding-top:5px !important;
                padding-bottom:5px !important;
                padding-left:5px !important;
                padding-right:5px !important;
                font-size:15px !important;
            }
        </style>
    </head>
    <body>
        <form id="form1" runat="server">
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
                                        <a href="WebsiteManagement.aspx">Website Management</a>
                                    </li>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="Search-Main">
            <asp:Button ID="Logout" runat="server" Width="80px" Text="Logout" OnClick="Logout_Click" ForeColor="Black" CssClass="Logout-Click" />
            <table border="0">
                <tr>
                    <td>
                        <div style="margin-top:22px !important; margin-bottom:8px !important; margin-left:15px !important; margin-right:15px !important;" >
                            <table border="0">
                                <tr >
                                <td style="padding-bottom:8px !important; padding-top:8px !important; font-size:16px !important;">
                                    Student ID :
                                </td>
                                    <td style="padding-bottom:8px !important; padding-top:8px !important; ">
                                        <asp:TextBox runat="server" ID="txtApplicationID" TextMode="Number" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style=" font-size:16px !important; min-width: 150px !important; max-width: 150px !important; padding-bottom:8px !important; padding-top:8px !important;">
                                    Name:
                                </td>
                                    <td style="min-width: 300px !important; max-width: 300px !important; padding-bottom:8px !important; padding-top:8px !important;">
                                        <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="min-width: 150px !important; max-width: 150px !important; padding-bottom:8px !important; padding-top:8px !important; font-size:16px !important;">Surname:
                                </td>
                                    <td style="min-width: 300px !important; max-width: 300px !important; padding-bottom:8px !important; padding-top:8px !important;">
                                        <asp:TextBox runat="server" ID="txtSurname" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-bottom:8px !important; padding-top:8px !important; font-size:16px !important;">Date of Birth(from) :
                                </td>
                                    <td style="padding-bottom:8px !important; padding-top:8px !important;">
                                        <asp:TextBox runat="server" ID="txtDateFrom" onkeydown="return false;" CssClass="form-control-date"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-bottom:8px !important; padding-top:8px !important; font-size:16px !important;">Date of Birth(to) :
                                </td>
                                    <td style="padding-bottom:8px !important; padding-top:8px !important;">
                                        <asp:TextBox runat="server" ID="txtDateTo" onkeydown="return false;" CssClass="form-control-date"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr></tr>
                                <tr>
                                    <td style="padding-bottom:8px !important; padding-top:8px !important; font-size:16px !important;">Gender :
                                </td>
                                    <td style="padding-bottom:8px !important; padding-top:8px !important;">
                                        <asp:DropDownList runat="server" ID="ddlGender" CssClass="form-control">
                                            <asp:ListItem Text="" Value=""></asp:ListItem>
                                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td style="padding-bottom:8px !important; padding-top:8px !important; font-size:14px !important; ">
                        Area :
                        
                        <div style="margin:15px 15px !important;">
                            <asp:CheckBoxList runat="server" ID="valArea" RepeatDirection="Horizontal" RepeatColumns="4" CssClass="checkbox-grid">
                                <asp:ListItem Value="Anupam Nagar">Anupam Nagar</asp:ListItem>
                                <asp:ListItem Value="Atulbaug">Atulbaug</asp:ListItem>
                                <asp:ListItem Value="B Ward Office">B Ward Office</asp:ListItem>
                                <asp:ListItem Value="Barave Gaon">Barave Gaon</asp:ListItem>
                                <asp:ListItem Value="Beturkarpada">Beturkarpada</asp:ListItem>
                                <asp:ListItem Value="Bhawani Nagar">Bhawani Nagar</asp:ListItem>
                                <asp:ListItem Value="Birla College">Birla College</asp:ListItem>
                                <asp:ListItem Value="Bhoirwadi">Bhoirwadi</asp:ListItem>
                                <asp:ListItem Value="Chatri Bunglow">Chatri Bunglow</asp:ListItem>
                                <asp:ListItem Value="Chikanghar">Chikanghar</asp:ListItem>
                                <asp:ListItem Value="Chotamhasoba Maidan">Chotamhasoba Maidan</asp:ListItem>
                                <asp:ListItem Value="D-Mart">D-Mart</asp:ListItem>
                                <asp:ListItem Value="Forest Society">Forest Society</asp:ListItem>
                                <asp:ListItem Value="Gaikarpada">Gaikarpada</asp:ListItem>
                                <asp:ListItem Value="Gandhari">Gandhari</asp:ListItem>
                                <asp:ListItem Value="Gauripada">Gauripada</asp:ListItem>
                                <asp:ListItem Value="Gholap Nagar">Gholap Nagar</asp:ListItem>
                                <asp:ListItem Value="Godrej Hill">Godrej Hill</asp:ListItem>
                                <asp:ListItem Value="Golden Park">Golden Park</asp:ListItem>
                                <asp:ListItem Value="Indira Nagar">Indira Nagar</asp:ListItem>
                                <asp:ListItem Value="Karnik Road">Karnik Road</asp:ListItem>
                                <asp:ListItem Value="Khadakpada">Khadakpada</asp:ListItem>
                                <asp:ListItem Value="Konkan Vashat">Konkan Vashat</asp:ListItem>
                                <asp:ListItem Value="Mhasoba Maidan">Mhasoba Maidan</asp:ListItem>
                                <asp:ListItem Value="Milind Nagar">Milind Nagar</asp:ListItem>
                                <asp:ListItem Value="Murbad Road">Murbad Road</asp:ListItem>
                                <asp:ListItem Value="New Chikannagar">New Chikannagar</asp:ListItem>
                                <asp:ListItem Value="New RTO">New RTO</asp:ListItem>
                                <asp:ListItem Value="Old Lourdes">Old Lourdes</asp:ListItem>
                                <asp:ListItem Value="Pournima Talkis">Pournima Talkis</asp:ListItem>
                                <asp:ListItem Value="Prem Auto">Prem Auto</asp:ListItem>
                                <asp:ListItem Value="Rambaug">Rambaug</asp:ListItem>
                                <asp:ListItem Value="Ramdaswadi">Ramdaswadi</asp:ListItem>
                                <asp:ListItem Value="RTO">RTO</asp:ListItem>
                                <asp:ListItem Value="Sahyadri Nagar">Sahyadri Nagar</asp:ListItem>
                                <asp:ListItem Value="Sanjivini Hospital">Sanjivini Hospital</asp:ListItem>
                                <asp:ListItem Value="St.Thomas School">St.Thomas School</asp:ListItem>
                                <asp:ListItem Value="Syndicate">Syndicate</asp:ListItem>
                                <asp:ListItem Value="Tawripada">Tawripada</asp:ListItem>
                                <asp:ListItem Value="Vijay Nagar">Vijay Nagar</asp:ListItem>
                                <asp:ListItem Value="Wayle Nagar">Wayle Nagar</asp:ListItem>
                                <asp:ListItem Value="Yogidham">Yogidham</asp:ListItem>
                            </asp:CheckBoxList>
                        </div>
                    </td>
                </tr>
                <tr>
                    <table>
                        <tr>
                            <td style="padding-left:8px !important; padding-right:8px !important;">
                                <asp:Button id="Search" Text="Search" runat="server" OnClick="Search_Click " class="form-control-submits" />
                            </td>
                            <td style="padding-left:8px !important; padding-right:8px !important;">
                                <asp:Button id="Reset" Text="Reset Controls" runat="server" OnClick="Reset_Click " class="form-control-submits" />
                            </td>
                        <td style="padding-left:8px !important; padding-right:8px !important;">
                            <asp:Button id="Function" Text="Export" runat="server" OnClick="Export_Click" class="form-control-submits" ToolTip="Export Selected Rows to Excel" />
                        </td>
                        <td style="padding-left:8px !important; padding-right:8px !important;">
                            <asp:Button id="OpenRecord" Text="Open Record" runat="server" OnClick="Open_Click" class="form-control-submits" ToolTip="Open Selected Record" />
                        </td>
                    </tr>
                </table>
            </tr>
        </table>
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <center>
                <asp:DataGrid runat="server" ID="SearchResultTable" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="table" AllowSorting="True" BorderStyle="Ridge" >
                    <AlternatingItemStyle BackColor="White" />
                    <EditItemStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" Font-Size="15" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <Columns>
                        <asp:TemplateColumn HeaderText="TEST">
                            <HeaderTemplate>
                                <input type="checkbox" id="select-all" onclick="toggle(this)"/>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <input type="checkbox" id="CheckIndividual" name="CheckIndividual" runat="server" class="CheckboxSelect"/>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="StudentID" Visible="false">
                            <ItemTemplate>
                                <asp:Label id="StudentID" Text='
                                    <%# DataBinder.Eval(Container.DataItem, "APPLICATION ID") %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                    </asp:DataGrid>
                </center>
            </div>
        </form>
        <script>
            $(function () {
                $(".form-control-date").datepicker({
                    changeMonth: true,
                    changeYear: true,
                    showButtonPanel: true,
                    dateFormat: 'mm-dd-yy'
                });
            });
                    $(document).ready(function () {
                        $("#select-all").change(function () {
                            $(".CheckboxSelect").prop('checked', $(this).prop("checked"));
                        });
                    });
                </script>
    </body>
</html>