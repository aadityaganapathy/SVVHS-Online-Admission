using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


namespace OnlineAdmission
{
    public partial class NewForm : System.Web.UI.Page
    {
        #region Properties
        public string Query
        {
            get
            {
                string Query = "INSERT INTO STUDENT_DETAILS (FIRST_NAME, MIDDLE_NAME, SURNAME, GENDER, MOTHER_TONGUE, RELIGION, CASTE_SUB_CASTE, PLACE_OF_BIRTH, DATE_OF_BIRTH, RESIDENTIAL_ADDRESS, AREA, AADHAR_NUMBER, MEDICAL_HISTORY, ADDITIONAL_INFORMATION, FATHERS_NAME, FATHERS_QUALIFICATION, FATHERS_OCCUPATION, FATHERS_NATIVE_PLACE, FATHERS_EMAIL, FATHERS_TELEPHONE, FATHERS_MOBILE_NUMBER, FATHERS_WHATSAPP_NUMBER, FATHERS_RESIDENTIAL_ADDRESS, FATHERS_OFFICE_ADDRESS, FATHERS_OFFICE_TELEPHONE_NUMBER, FATHERS_PAN_NUMBER, FATHERS_AADHAR_NUMBER, MOTHERS_NAME, MOTHERS_MAIDEN_NAME, MOTHERS_QUALIFICATION, MOTHERS_OCCUPATION, MOTHERS_NATIVE_PLACE, MOTHERS_EMAIL, MOTHERS_TELEPHONE, MOTHERS_MOBILE_NUMBER, MOTHERS_WHATSAPP_NUMBER, MOTHERS_RESIDENTIAL_ADDRESS, MOTHERS_OFFICE_ADDRESS, MOTHERS_OFFICE_TELEPHONE_NUMBER, MOTHERS_PAN_NUMBER, MOTHERS_AADHAR_NUMBER, RELATION_IN_SCHOOL, RELATION_NAME, RELATION_SECTION, RELATION_STANDARD, RELATION_DIVISION, FAMILY_INCOME) OUTPUT INSERTED.APPLICATION_ID  VALUES (@FIRST_NAME, @MIDDLE_NAME, @SURNAME, @GENDER, @MOTHER_TONGUE, @RELIGION, @CASTE_SUB_CASTE, @PLACE_OF_BIRTH, @DATE_OF_BIRTH, @RESIDENTIAL_ADDRESS, @AREA, @AADHAR_NUMBER, @MEDICAL_HISTORY, @ADDITIONAL_INFORMATION, @FATHERS_NAME, @FATHERS_QUALIFICATION, @FATHERS_OCCUPATION, @FATHERS_NATIVE_PLACE, @FATHERS_NATIVE_PLACE, @FATHERS_EMAIL, @FATHERS_MOBILE_NUMBER, @FATHERS_WHATSAPP_NUMBER, @FATHERS_RESIDENTIAL_ADDRESS, @FATHERS_OFFICE_ADDRESS, @FATHERS_OFFICE_TELEPHONE_NUMBER, @FATHERS_PAN_NUMBER, @FATHERS_AADHAR_NUMBER, @MOTHERS_NAME, @MOTHERS_MAIDEN_NAME, @MOTHERS_QUALIFICATION, @MOTHERS_OCCUPATION, @MOTHERS_NATIVE_PLACE, @MOTHERS_EMAIL, @MOTHERS_TELEPHONE, @MOTHERS_MOBILE_NUMBER, @MOTHERS_WHATSAPP_NUMBER, @MOTHERS_RESIDENTIAL_ADDRESS, @MOTHERS_OFFICE_ADDRESS, @MOTHERS_OFFICE_TELEPHONE_NUMBER, @MOTHERS_PAN_NUMBER, @MOTHERS_AADHAR_NUMBER, @RELATION_IN_SCHOOL, @RELATION_NAME, @RELATION_SECTION, @RELATION_STANDARD, @RELATION_DIVISION, @FAMILY_INCOME)";
                return Query;
            }
        }
        public int Application_ID { get; set; }
        public string Gender
        {
            get
            {
                if(chkMale.Checked == true)
                {
                    return chkMale.Value;
                }
                else if(chkFemale.Checked == true)
                {
                    return chkFemale.Value;
                }
                else
                {
                    return "NA";
                }
            }
        }
        public string RelatedStudent
        {
            get
            {
                if (chkRelatedStudentYes.Checked == true)
                {
                    return chkRelatedStudentYes.Value;
                }
                else if (chkRelatedStudentNo.Checked == true)
                {
                    return chkRelatedStudentNo.Value;
                }
                else
                {
                    return "NA";
                }
            }
        }
        public string RelatedStudentSection
        {
            get
            {
                if (chkPrimary.Checked == true)
                {
                    return chkPrimary.Value;
                }
                else if (chkSecondary.Checked == true)
                {
                    return chkSecondary.Value;
                }
                else
                {
                    return "";
                }
            }
        }
        public string FamilyIncome
        {
            get
            {
                if (chkIncome1.Checked == true)
                {
                    return chkIncome1.Value;
                }
                else if (chkIncome2.Checked == true)
                {
                    return chkIncome2.Value;
                }
                else if (chkIncome3.Checked == true)
                {
                    return chkIncome3.Value;
                }
                else if (chkIncome4.Checked == true)
                {
                    return chkIncome4.Value;
                }
                else if (chkIncome5.Checked == true)
                {
                    return chkIncome5.Value;
                }
                else if (chkIncome6.Checked == true)
                {
                    return chkIncome6.Value;
                }
                else
                {
                    return "NA";
                }
            }
        }
        public int ValidationCount { get; set; }
        #endregion Propertiessss

        #region Custom Methods
        public void ValidateDatabaseEntry()
        {
            SqlConnection Connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineAdmission"].ConnectionString);
            DataTable dtbl = new DataTable();
            try
            {
                string Query = ("SELECT COUNT(*) FROM STUDENT_DETAILS WHERE FIRST_NAME = @FIRST_NAME AND SURNAME = @SURNAME AND DATE_OF_BIRTH = @DATE_OF_BIRTH");
                SqlCommand Command = new SqlCommand(Query, Connection);
                Command.Parameters.Add(new SqlParameter("@FIRST_NAME", txtFirstName.Value));
                Command.Parameters.Add(new SqlParameter("@SURNAME", txtSurname.Value));
                Command.Parameters.Add(new SqlParameter("@DATE_OF_BIRTH", txtDateOfBirth.Value));
                Connection.Open();
                dtbl.Load(Command.ExecuteReader());
                ValidationCount = Convert.ToInt32(dtbl.Rows[0][0]);
            }
            catch (Exception E)
            {
                Session["ErrorMessage"] = Convert.ToString(E);
                Response.Redirect("ApplicationError.aspx");
            }
            finally
            {
                Connection.Close();
            }
        }
        public void DatabaseEntry()
        {
            SqlConnection Connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineAdmission"].ConnectionString);
            {
                try
                {
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.Connection = Connection;
                        command.CommandType = CommandType.Text;
                        command.CommandText = Query;
                        command.Parameters.AddWithValue("@FIRST_NAME", txtFirstName.Value);
                        command.Parameters.AddWithValue("@MIDDLE_NAME", txtMiddleName.Value);
                        command.Parameters.AddWithValue("@SURNAME", txtSurname.Value);
                        command.Parameters.AddWithValue("@GENDER", Gender);
                        command.Parameters.AddWithValue("@MOTHER_TONGUE", txtMotherTongue.Value);
                        command.Parameters.AddWithValue("@RELIGION", txtReligion.Value);
                        command.Parameters.AddWithValue("@CASTE_SUB_CASTE", txtCasteSubCaste.Value);
                        command.Parameters.AddWithValue("@PLACE_OF_BIRTH", txtPlaceOfBirth.Value);
                        command.Parameters.AddWithValue("@DATE_OF_BIRTH", txtDateOfBirth.Value);
                        command.Parameters.AddWithValue("@RESIDENTIAL_ADDRESS", txtResidentialAddress.Value);
                        command.Parameters.AddWithValue("@AREA", valArea.Value);
                        command.Parameters.AddWithValue("@AADHAR_NUMBER", txtAadharNumber.Value);
                        command.Parameters.AddWithValue("@MEDICAL_HISTORY", txtMedialHistory.Value);
                        command.Parameters.AddWithValue("@ADDITIONAL_INFORMATION", txtAdditionalInformation.Value);
                        command.Parameters.AddWithValue("@FATHERS_NAME", txtFathersName.Value);
                        command.Parameters.AddWithValue("@FATHERS_QUALIFICATION", txtFathersQualification.Value);
                        command.Parameters.AddWithValue("@FATHERS_OCCUPATION", txtFathersOccupation.Value);
                        command.Parameters.AddWithValue("@FATHERS_NATIVE_PLACE", txtFathersNative.Value);
                        command.Parameters.AddWithValue("@FATHERS_EMAIL", txtFatherEmail.Value);
                        command.Parameters.AddWithValue("@FATHERS_TELEPHONE", txtFathersTelephone.Value);
                        command.Parameters.AddWithValue("@FATHERS_MOBILE_NUMBER", txtFathersMobile.Value);
                        command.Parameters.AddWithValue("@FATHERS_WHATSAPP_NUMBER", txtFathersWhatsapp.Value);
                        command.Parameters.AddWithValue("@FATHERS_RESIDENTIAL_ADDRESS", txtFathersAddress.Value);
                        command.Parameters.AddWithValue("@FATHERS_OFFICE_ADDRESS", txtFathersOfficeAddress.Value);
                        command.Parameters.AddWithValue("@FATHERS_OFFICE_TELEPHONE_NUMBER", txtFathersOfficeTelephone.Value);
                        command.Parameters.AddWithValue("@FATHERS_PAN_NUMBER", txtFathersPAN.Value);
                        command.Parameters.AddWithValue("@FATHERS_AADHAR_NUMBER", txtFathersAddress.Value);
                        command.Parameters.AddWithValue("@MOTHERS_NAME", txtMothersName.Value);
                        command.Parameters.AddWithValue("@MOTHERS_MAIDEN_NAME", txtMothersMaidenName.Value);
                        command.Parameters.AddWithValue("@MOTHERS_QUALIFICATION", txtMothersQualification.Value);
                        command.Parameters.AddWithValue("@MOTHERS_OCCUPATION", txtMothersOccupation.Value);
                        command.Parameters.AddWithValue("@MOTHERS_NATIVE_PLACE", txtMothersNative.Value);
                        command.Parameters.AddWithValue("@MOTHERS_EMAIL", txtMotherEmail.Value);
                        command.Parameters.AddWithValue("@MOTHERS_TELEPHONE", txtMothersTelephone.Value);
                        command.Parameters.AddWithValue("@MOTHERS_MOBILE_NUMBER", txtMothersMobile.Value);
                        command.Parameters.AddWithValue("@MOTHERS_WHATSAPP_NUMBER", txtMothersWhatsapp.Value);
                        command.Parameters.AddWithValue("@MOTHERS_RESIDENTIAL_ADDRESS", txtMothersAadhar.Value);
                        command.Parameters.AddWithValue("@MOTHERS_OFFICE_ADDRESS", txtMothersOfficeAddress.Value);
                        command.Parameters.AddWithValue("@MOTHERS_OFFICE_TELEPHONE_NUMBER", txtMothersOfficeTelephone.Value);
                        command.Parameters.AddWithValue("@MOTHERS_PAN_NUMBER", txtMothersPAN.Value);
                        command.Parameters.AddWithValue("@MOTHERS_AADHAR_NUMBER", txtMothersAadhar.Value);
                        command.Parameters.AddWithValue("@RELATION_IN_SCHOOL", RelatedStudent);
                        command.Parameters.AddWithValue("@RELATION_NAME", txtRelatedStudentName.Value);
                        command.Parameters.AddWithValue("@RELATION_SECTION", RelatedStudentSection);
                        command.Parameters.AddWithValue("@RELATION_STANDARD", txtStandard.Value);
                        command.Parameters.AddWithValue("@RELATION_DIVISION", txtDivision.Value);
                        command.Parameters.AddWithValue("@FAMILY_INCOME", FamilyIncome);
                        Connection.Open();
                        Application_ID = (int)command.ExecuteScalar();
                        Session["Student_ID_Session"] = Convert.ToString(Application_ID);
                        Session["AfterSubmit"] = Convert.ToString(Application_ID);
                    }

                }
                catch (Exception E)
                {
                    Session["ErrorMessage"] = Convert.ToString(E);
                    Response.Redirect("ApplicationError.aspx");
                }
                finally
                {
                    Connection.Close();
                }
            }
        }
        #endregion Custom Methods

        #region Page Events
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (Convert.ToString(Session["FormMode"]) != "TRUE")
            {
                Response.Redirect("SessionExpired.aspx");
            }
        }
        #endregion Page Events

        #region Page Controls
        protected void Submit_Click(object sender, EventArgs e)
        {
            ValidateDatabaseEntry();
            if (ValidationCount < 1)
            {
                this.Submit.Enabled = false;
                DatabaseEntry();
                HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>window.open('Confirmation.aspx', '_new');</SCRIPT>");
                Server.Transfer("AfterSubmit.aspx");
            }
            else
            {
                lblErrorText.Visible = true;
                lblErrorText.InnerText = "Record for this student already exists. If you want to Edit / Print the form please click here";
            }
        }


        #endregion Page Controls
    }
}