<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="OnlineAdmission.Confirmation" %>
<!DOCTYPE html>
<html
    xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <style type="text/css">
            .table-c th,td{
                padding:8px !important;
            }
            .h4 {
                margin-left:0px !important;
            }
        </style>
    </head>
    <body>
        <form id="form1" runat="server" onclick="javascript:window.print();" >
            <div>
                <table>
                    <tr>
                        <td style="width:150px !important;">
                            <center>
                                <asp:image runat="server" ImageUrl="Images/SVVHS.png" Width="80px" Height="80px"></asp:image>
                            </center>
                        </td>
                        <td>
                            <center>
                                <font size="5">
                                    <b>Sri Vani Vidyashala High School</b>
                                </font>
                                <font size="1">
                                    <br />(Recognised by Goverment)
                    
                                
                                </font>
                                <font size="2">
                                    <br />Opposite B-Ward Office, Near Cinemax
                    
                                    
                                    <br />Khadakpada, Kalyan(W) - 421301.
                    
                                    
                                    <br />Thane, Maharashtra - India.
                    
                                    
                                    <br />E-Mail- srivanividya@rediffmail.com
                    
                                
                                </font>
                                <br />
                                <br />
                            </center>
                        </td>
                        <td style="width:150px !important;">
                            <center>
                                <asp:image runat="server" ID="imgPupil" Width="150px"></asp:image>
                            </center>
                        </td>
                    </tr>
                </table>
            </div>
            <br />
            <div>
                <table>
                    <tr>
                        <td width="660px">
                            <table class="table-c" border="0">
                                <tr>
                                    <td>
                                        <h4><b>Pupil's Details :-</b></h4>
                                    </td>
                                </tr>  <!--Pupils Details-->
                                <tr>
                                    <td style="width:230px !important">
                                        Application Number
                                    </td>
                                    <td style="width:420px !important;">
                                        <asp:Label ID="lblAplNo" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Application Number-->

                                <tr>
                                    <td>
                                        Name of the Pupil:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblName" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--First Name-->
                                <tr>
                                    <td>
                                        Middle Name:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMiddleName" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Middle Name-->
                                <tr>
                                    <td>
                                        Surname:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblSurname" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Surname-->
                                <tr>
                                    <td>
                                        Gender:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblGender" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Gender-->
                                <tr>
                                    <td>
                                        Mother Tongue:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMotherTongue" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Tongue-->
                                <tr>
                                    <td>
                                        Religion:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblReligion" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Religion-->
                                <tr>
                                    <td>
                                        Caste & Sub Caste:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblCasteSubCaste" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Caste-SubCaste-->
                                <tr>
                                    <td>
                                        Date of Birth:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblDOB" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Date of Birth-->
                                <tr>
                                    <td>
                                        Place of Birth:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblPlaceOfBirth" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Place Of Birth-->
                                <tr>
                                    <td>
                                        Residential Address:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblResidentialAddress" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Residential Address-->
                                <tr>
                                    <td>
                                        Residential Area:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblArea" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Area-->
                                <tr>
                                    <td>
                                        Aadhar Number:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblAadharNumber" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Aadhar Number-->
                                <tr>
                                    <td>
                                        Medical History(if any):
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMedicalHistory" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Medical History-->
                                <tr>
                                    <td>
                                        Any Other Information(if any):
                                    </td>
                                    <td>
                                        <asp:Label ID="lblOtherInfo" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Additional Information-->

                                <tr>
                                    <td>
                                        <h4><b>Father's Details :-</b></h4>
                                    </td>
                                </tr>  <!--Father Details-->


                                <tr>
                                    <td>
                                        Father's Name:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFathersName" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Father Name-->
                                <tr>
                                    <td>
                                        Father's Qualification:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFatherQualification" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Father Qualification-->
                                <tr>
                                    <td>
                                        Father's Occupation:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFatherOccupation" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Father Occupation-->
                                <tr>
                                    <td>
                                        Father's Native:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFatherNative" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Father Native-->
                                <tr>
                                    <td>
                                        Father's E-Mail Address:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFathersEmail" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Father Email-->
                                <tr>
                                    <td>
                                        Father's Telephone:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFatherTelephone" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Father Telephone-->
                                <tr>
                                    <td>
                                        Father's Mobile:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFatherMobile" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Father Mobile-->
                                <tr>
                                    <td>
                                        Father's WhatsApp:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFatherWhatsapp" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Father Whatsapp-->
                                <tr>
                                    <td>
                                        Father's Residential Address:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFatherResidentialAddress" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Father Address-->
                                <tr>
                                    <td>
                                        Father's Office Address:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFatherOfficeAddress" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Father Office Address-->
                                <tr>
                                    <td>
                                        Father's Office Telephone:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFatherOfficeTelephone" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Father Office Telephone-->
                                <tr>
                                    <td>
                                        Father's PAN:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFatherPAN" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Father PAN-->
                                <tr>
                                    <td>
                                        Father's Aadhar Number:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFatherAadharNumber" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Father Aadhar-->

                                <tr>
                                    <td>
                                        <h4><b>Mother's Details :-</b></h4>
                                    </td>
                                    <td> </td>
                                </tr>  <!--Mothers Details-->



                                <tr>
                                    <td>
                                        Mother's Name:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMothersName" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Name-->
                                <tr>
                                    <td>
                                        Mother's Maiden Name:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMotherMaidenName" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Maiden Name-->
                                <tr>
                                    <td>
                                        Mother's Qualification:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMotherQualification" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Qualification-->
                                <tr>
                                    <td>
                                        Mother's Occupation:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMotherOccupation" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Occupation-->
                                <tr>
                                    <td>
                                        Mother's Native:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMotherNative" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Native-->
                                <tr>
                                    <td>
                                        Mother's E-Mail Address:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMothersEmail" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Email-->
                                <tr>
                                    <td>
                                        Mother's Telephone:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMotherTelephone" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Telephone-->
                                <tr>
                                    <td>
                                        Mother's Mobile:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMotherMobile" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Mobile-->
                                <tr>
                                    <td>
                                        Mother's WhatsApp:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMotherWhatsApp" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Whatsapp-->
                                <tr>
                                    <td>
                                        Mother's Residential Address:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMotherResidentialAddress" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Address-->
                                <tr>
                                    <td>
                                        Mother's Office Address:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMotherOfficeAddress" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Office Address-->
                                <tr>
                                    <td>
                                        Mother's Office Telephone:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMotherOfficeTelephone" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Office Telephone-->
                                <tr>
                                    <td>
                                        Mother's PAN:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMotherPAN" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother PAN-->
                                <tr>
                                    <td>
                                        Mother's Aadhar Number:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblMotherAadharNumber" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Mother Aadhar-->

                                <tr>
                                    <td>
                                        <h4><b>General Information :-</b></h4>
                                    </td>
                                    <td> </td>
                                </tr>  <!--General Details-->


                                <tr>
                                    <td>
                                        Whether any other children of the same family is studying in Primary/ Secondary Section of SVVHS:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblRelatedStudent" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Related Student-->
                                <tr>
                                    <td>
                                        Name of the Related Student:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblRelatedStudentName" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Related Student Name-->
                                <tr>
                                    <td>
                                        Section of the Related Student:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblRelatedStudentSection" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Related Student Section-->
                                <tr>
                                    <td>
                                        Standard of the Related Student:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblRelatedStudentStandard" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Related Student Standard-->
                                <tr>
                                    <td>
                                        Division of the Related Student:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblRelatedStudentDivision" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Related Student Division-->
                                <tr>
                                    <td>
                                        Family Income:
                                    </td>
                                    <td>
                                        <asp:Label ID="lblFamilyIncome" runat="server"></asp:Label>
                                    </td>
                                </tr>  <!--Family Income-->



                                <tr>
                                    <td align="left">
                                        <br />
                                        <br /> Date:
                                    
                                    </td>
                                    <td height="100px" align="right">
                                        <br />
                                        <br /> Signature of Parent &nbsp&nbsp&nbsp&nbsp                                   
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </body>
</html>