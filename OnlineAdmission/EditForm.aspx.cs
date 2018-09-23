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
    public partial class EditForm : System.Web.UI.Page
    {
        #region Properties
        public string Query
        {
            get
            {
                string Query = "UPDATE STUDENT_DETAILS SET FIRST_NAME = @FIRST_NAME,MIDDLE_NAME = @MIDDLE_NAME, SURNAME = @SURNAME, GENDER = @GENDER,MOTHER_TONGUE = @MOTHER_TONGUE,RELIGION = @RELIGION, CASTE_SUB_CASTE = @CASTE_SUB_CASTE,PLACE_OF_BIRTH = @PLACE_OF_BIRTH , DATE_OF_BIRTH = @DATE_OF_BIRTH,RESIDENTIAL_ADDRESS = @RESIDENTIAL_ADDRESS , AREA = @AREA,AADHAR_NUMBER = @AADHAR_NUMBER, MEDICAL_HISTORY = @MEDICAL_HISTORY , ADDITIONAL_INFORMATION = @ADDITIONAL_INFORMATION, FATHERS_NAME = @FATHERS_NAME, FATHERS_QUALIFICATION = @FATHERS_QUALIFICATION, FATHERS_OCCUPATION = @FATHERS_OCCUPATION, FATHERS_NATIVE_PLACE = @FATHERS_NATIVE_PLACE, FATHERS_EMAIL = @FATHERS_EMAIL, FATHERS_TELEPHONE = @FATHERS_TELEPHONE, FATHERS_MOBILE_NUMBER = @FATHERS_MOBILE_NUMBER, FATHERS_WHATSAPP_NUMBER = @FATHERS_WHATSAPP_NUMBER, FATHERS_RESIDENTIAL_ADDRESS = @FATHERS_RESIDENTIAL_ADDRESS, FATHERS_OFFICE_ADDRESS = @FATHERS_OFFICE_ADDRESS, FATHERS_OFFICE_TELEPHONE_NUMBER = @FATHERS_OFFICE_TELEPHONE_NUMBER, FATHERS_PAN_NUMBER = @FATHERS_PAN_NUMBER, FATHERS_AADHAR_NUMBER = @FATHERS_AADHAR_NUMBER, MOTHERS_NAME = @MOTHERS_NAME,MOTHERS_MAIDEN_NAME = @MOTHERS_MAIDEN_NAME, MOTHERS_QUALIFICATION = @MOTHERS_QUALIFICATION, MOTHERS_OCCUPATION = @MOTHERS_OCCUPATION, MOTHERS_NATIVE_PLACE = @MOTHERS_NATIVE_PLACE, MOTHERS_EMAIL = @MOTHERS_EMAIL, MOTHERS_TELEPHONE = @MOTHERS_TELEPHONE, MOTHERS_MOBILE_NUMBER = @MOTHERS_MOBILE_NUMBER, MOTHERS_WHATSAPP_NUMBER = @MOTHERS_WHATSAPP_NUMBER, MOTHERS_RESIDENTIAL_ADDRESS = @MOTHERS_RESIDENTIAL_ADDRESS, MOTHERS_OFFICE_ADDRESS = @MOTHERS_OFFICE_ADDRESS, MOTHERS_OFFICE_TELEPHONE_NUMBER = @MOTHERS_OFFICE_TELEPHONE_NUMBER, MOTHERS_PAN_NUMBER = @MOTHERS_PAN_NUMBER, MOTHERS_AADHAR_NUMBER = @MOTHERS_AADHAR_NUMBER, RELATION_IN_SCHOOL = @RELATION_IN_SCHOOL,RELATION_NAME = @RELATION_NAME, RELATION_SECTION = @RELATION_SECTION, RELATION_STANDARD = @RELATION_STANDARD, RELATION_DIVISION = @RELATION_DIVISION,FAMILY_INCOME = @FAMILY_INCOME WHERE APPLICATION_ID = @APPLICATION_ID";               
                return Query;
            }
        }
        public int Application_ID { get; set; }
        public int Student_ID_Edit
        {
            get
            {
                int Student_ID_Edit = 0;
                try
                {
                    Student_ID_Edit = Convert.ToInt32(Session["Student_ID_Edit_Session"]);
                }
                catch
                {
                    Student_ID_Edit = 0;
                }
                return Student_ID_Edit;
            }
        }
        public string GenderSet { get; set; }
        public string Gender
        {
            get
            {
                if (chkMale.Checked == true)
                {
                    return chkMale.Value;
                }
                else if (chkFemale.Checked == true)
                {
                    return chkFemale.Value;
                }
                else
                {
                    return "NA";
                }
            }
        }
        public string RelatedStudentSet { get; set; }
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
        public string RelatedStudentSectionSet { get; set; }
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
        public string FamilyIncomeSet { get; set; }
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
        #endregion Properties

        #region Custom Methods

        public void AssignValue()
        {
            SqlConnection Connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineAdmission"].ConnectionString);
            DataTable dtbl = new DataTable();
            try
            {
                string Query = ("SELECT * FROM STUDENT_DETAILS WITH(NOLOCK) WHERE APPLICATION_ID = @Student_ID");
                SqlCommand Command = new SqlCommand(Query, Connection);
                Command.Parameters.Add(new SqlParameter("@Student_ID", Student_ID_Edit));
                Connection.Open();
                dtbl.Load(Command.ExecuteReader());
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
            txtFirstName.Value = (dtbl.Rows[0]["FIRST_NAME"].ToString());
            txtMiddleName.Value = (dtbl.Rows[0]["MIDDLE_NAME"].ToString());
            txtSurname.Value = (dtbl.Rows[0]["SURNAME"].ToString());
            GenderSet = (dtbl.Rows[0]["GENDER"].ToString());
            txtMotherTongue.Value = (dtbl.Rows[0]["MOTHER_TONGUE"].ToString());
            txtReligion.Value = (dtbl.Rows[0]["RELIGION"].ToString());
            txtCasteSubCaste.Value = (dtbl.Rows[0]["CASTE_SUB_CASTE"].ToString());
            string DOB = (dtbl.Rows[0]["DATE_OF_BIRTH"].ToString());
            txtDateOfBirth.Value = DOB.Substring(0, DOB.Length - 11);
            txtPlaceOfBirth.Value = (dtbl.Rows[0]["PLACE_OF_BIRTH"].ToString());
            txtResidentialAddress.Value = (dtbl.Rows[0]["RESIDENTIAL_ADDRESS"].ToString());
            valArea.Value = (dtbl.Rows[0]["AREA"].ToString());
            txtAadharNumber.Value = (dtbl.Rows[0]["AADHAR_NUMBER"].ToString());
            txtMedialHistory.Value = (dtbl.Rows[0]["MEDICAL_HISTORY"].ToString());
            txtAdditionalInformation.Value = (dtbl.Rows[0]["ADDITIONAL_INFORMATION"].ToString());
            txtFathersName.Value = (dtbl.Rows[0]["FATHERS_NAME"].ToString());
            txtFathersQualification.Value = (dtbl.Rows[0]["FATHERS_QUALIFICATION"].ToString());
            txtFathersOccupation.Value = (dtbl.Rows[0]["FATHERS_OCCUPATION"].ToString());
            txtFathersNative.Value = (dtbl.Rows[0]["FATHERS_NATIVE_PLACE"].ToString());
            txtFatherEmail.Value = (dtbl.Rows[0]["FATHERS_EMAIL"].ToString());
            txtFathersTelephone.Value = (dtbl.Rows[0]["FATHERS_TELEPHONE"].ToString());
            txtFathersMobile.Value = (dtbl.Rows[0]["FATHERS_MOBILE_NUMBER"].ToString());
            txtFathersWhatsapp.Value = (dtbl.Rows[0]["FATHERS_WHATSAPP_NUMBER"].ToString());
            txtFathersAddress.Value = (dtbl.Rows[0]["FATHERS_RESIDENTIAL_ADDRESS"].ToString());
            txtFathersOfficeAddress.Value = (dtbl.Rows[0]["FATHERS_OFFICE_ADDRESS"].ToString());
            txtFathersOfficeTelephone.Value = (dtbl.Rows[0]["FATHERS_OFFICE_TELEPHONE_NUMBER"].ToString());
            txtFathersPAN.Value = (dtbl.Rows[0]["FATHERS_PAN_NUMBER"].ToString());
            txtFathersAadhar.Value = (dtbl.Rows[0]["FATHERS_AADHAR_NUMBER"].ToString());
            txtMothersName.Value = (dtbl.Rows[0]["MOTHERS_NAME"].ToString());
            txtMothersMaidenName.Value = (dtbl.Rows[0]["MOTHERS_MAIDEN_NAME"].ToString());
            txtMothersQualification.Value = (dtbl.Rows[0]["MOTHERS_QUALIFICATION"].ToString());
            txtMothersOccupation.Value = (dtbl.Rows[0]["MOTHERS_OCCUPATION"].ToString());
            txtMothersNative.Value = (dtbl.Rows[0]["MOTHERS_NATIVE_PLACE"].ToString());
            txtMotherEmail.Value = (dtbl.Rows[0]["MOTHERS_EMAIL"].ToString());
            txtMothersTelephone.Value = (dtbl.Rows[0]["MOTHERS_TELEPHONE"].ToString());
            txtMothersMobile.Value = (dtbl.Rows[0]["MOTHERS_MOBILE_NUMBER"].ToString());
            txtMothersWhatsapp.Value = (dtbl.Rows[0]["MOTHERS_WHATSAPP_NUMBER"].ToString());
            txtMothersAddress.Value = (dtbl.Rows[0]["MOTHERS_RESIDENTIAL_ADDRESS"].ToString());
            txtMothersOfficeAddress.Value = (dtbl.Rows[0]["MOTHERS_OFFICE_ADDRESS"].ToString());
            txtMothersOfficeTelephone.Value = (dtbl.Rows[0]["MOTHERS_OFFICE_TELEPHONE_NUMBER"].ToString());
            txtMothersPAN.Value = (dtbl.Rows[0]["MOTHERS_PAN_NUMBER"].ToString());
            txtMothersAadhar.Value = (dtbl.Rows[0]["MOTHERS_AADHAR_NUMBER"].ToString());
            RelatedStudentSet = (dtbl.Rows[0]["RELATION_IN_SCHOOL"].ToString());
            txtRelatedStudentName.Value = (dtbl.Rows[0]["RELATION_NAME"].ToString());
            RelatedStudentSectionSet = (dtbl.Rows[0]["RELATION_SECTION"].ToString());
            txtStandard.Value = (dtbl.Rows[0]["RELATION_STANDARD"].ToString());
            txtDivision.Value = (dtbl.Rows[0]["RELATION_DIVISION"].ToString());
            FamilyIncomeSet = (dtbl.Rows[0]["FAMILY_INCOME"].ToString());
            SetGender();
            SetRelatedStudent();
            SetRelatedStudentSection();
            SetFamilyIncome();
        }

        public void SetFamilyIncome()
        {
            if (FamilyIncomeSet == "< 50,000")
            {
                chkIncome1.Checked = true;
            } 
            else if (FamilyIncomeSet == "50,001 - 1,00,000")
            {
                chkIncome2.Checked = true;
            }
            else if(FamilyIncomeSet == "1,00,001 - 2,00,000")
            {
                chkIncome3.Checked = true;
            }
            else if (FamilyIncomeSet == "2,00,001 - 3,00,000")
            {
                chkIncome4.Checked = true;
            }
            else if (FamilyIncomeSet == "3,00,001 - 4,00,000")
            {
                chkIncome5.Checked = true;
            }
            else if (FamilyIncomeSet == "> 4,00,000")
            {
                chkIncome6.Checked = true;
            }
        }
        public void SetRelatedStudentSection()
        {
            if (RelatedStudentSectionSet=="Primary")
            {
                chkPrimary.Checked = true;
            }
            else if (RelatedStudentSectionSet == "Secondary")
            {
                chkSecondary.Checked = true;
            }
        }
        public void SetRelatedStudent()
        {
            if (RelatedStudentSet == "yes")
            {
                chkRelatedStudentYes.Checked = true;
            }
            else if (RelatedStudentSet == "no")
            {
                chkRelatedStudentNo.Checked = true;
            }
        }
        public void SetGender()
        {
            if (GenderSet =="Male")
            {
                chkMale.Checked = true;
            }
            else if (GenderSet == "Female")
            {
                chkFemale.Checked = true;
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
                        command.Parameters.AddWithValue("@APPLICATION_ID", Student_ID_Edit);
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
                        command.Parameters.AddWithValue("@FATHERS_AADHAR_NUMBER", txtFathersAadhar.Value);
                        command.Parameters.AddWithValue("@MOTHERS_NAME", txtMothersName.Value);
                        command.Parameters.AddWithValue("@MOTHERS_MAIDEN_NAME", txtMothersMaidenName.Value);
                        command.Parameters.AddWithValue("@MOTHERS_QUALIFICATION", txtMothersQualification.Value);
                        command.Parameters.AddWithValue("@MOTHERS_OCCUPATION", txtMothersOccupation.Value);
                        command.Parameters.AddWithValue("@MOTHERS_NATIVE_PLACE", txtMothersNative.Value);
                        command.Parameters.AddWithValue("@MOTHERS_EMAIL", txtMotherEmail.Value);
                        command.Parameters.AddWithValue("@MOTHERS_TELEPHONE", txtMothersTelephone.Value);
                        command.Parameters.AddWithValue("@MOTHERS_MOBILE_NUMBER", txtMothersMobile.Value);
                        command.Parameters.AddWithValue("@MOTHERS_WHATSAPP_NUMBER", txtMothersWhatsapp.Value);
                        command.Parameters.AddWithValue("@MOTHERS_RESIDENTIAL_ADDRESS", txtMothersAddress.Value);
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
                        command.ExecuteNonQuery();
                        Session["Student_ID_Session"] = Convert.ToString(Student_ID_Edit);
                        Session["AfterSubmit"] = Convert.ToString(Student_ID_Edit);

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
            int check = Student_ID_Edit;
            if (check == 0)
            {
                Response.Redirect("SessionExpired.aspx");
            }
            else
            {
                if (!this.IsPostBack)
                {
                    AssignValue();
                }
            }
        }
        #endregion Page Events

        #region Page Controls
        protected void Submit_Click(object sender, EventArgs e)
        {
            this.Submit.Enabled = false;
            //ImageUpload();
            DatabaseEntry();
            HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>window.open('Confirmation.aspx', '_new');</SCRIPT>");
            Server.Transfer("AfterSubmit.aspx");
        }
        #endregion Page Controls
    }
}