using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace OnlineAdmission
{
    public partial class Confirmation : System.Web.UI.Page
    {
        #region Properties
        public int Student_ID
        {
            get
            {
                int Student_ID = 0;
                try
                {
                    Student_ID = Convert.ToInt32(Session["Student_ID_Session"]);
                }
                catch
                {
                    Student_ID = 0;
                }
                return Student_ID;
            }
        }
        public string DOB { get; set; }
        public string DOBWords
        {
            get
            {
                string DOBWord = "";
                string MonthNumeric;
                string DateNumeric;
                string YearNumeric;
                if (DOB.Substring(1, 1) == "/" || DOB.Substring(4, 1) == "/")
                {
                    if (DOB.Substring(1, 1) == "/")
                    {
                        MonthNumeric = "0" + DOB.Substring(0, 1);
                    }
                    else
                    {
                        MonthNumeric = DOB.Substring(0, 2);
                    }
                    if (DOB.Substring(3, 1) == "/")
                    {
                        DateNumeric = "0" + DOB.Substring(2, 1);
                        YearNumeric = DOB.Substring(4, 4);
                    }
                    else if (DOB.Substring(4, 1) == "/" && DOB.Substring(1, 1) != "/")
                    {
                        DateNumeric = "0" + DOB.Substring(3, 1);
                        YearNumeric = DOB.Substring(5, 4);
                    }
                    else
                    {
                        DateNumeric = DOB.Substring(2, 2);
                        YearNumeric = DOB.Substring(5, 4);
                    }
                }
                else
                {
                    MonthNumeric = DOB.Substring(0, 2);
                    DateNumeric = DOB.Substring(3, 2);
                    YearNumeric = DOB.Substring(6, 4);
                }                 
                string MonthChar = ""; 
                string SuperScript;
                switch (MonthNumeric)
                {
                    case "01":
                        MonthChar = "January";
                        break;
                    case "02":
                        MonthChar = "February";
                        break;
                    case "03":
                        MonthChar = "March";
                        break;
                    case "04":
                        MonthChar = "April";
                        break;
                    case "05":
                        MonthChar = "May";
                        break;
                    case "06":
                        MonthChar = "June";
                        break;
                    case "07":
                        MonthChar = "July";
                        break;
                    case "08":
                        MonthChar = "August";
                        break;
                    case "09":
                        MonthChar = "September";
                        break;
                    case "10":
                        MonthChar = "October";
                        break;
                    case "11":
                        MonthChar = "November";
                        break;
                    case "12":
                        MonthChar = "December";
                        break;
                }
                switch (DateNumeric)
                {
                    case "01":
                    case "21":
                    case "31":
                        SuperScript = "\xBst";
                        break;
                    case "02":
                    case "22":
                        SuperScript = "\xBnd";
                        break;
                    case "03":
                    case "23":
                        SuperScript = "\xBrd";
                        break;
                    default:
                        SuperScript = "\xBth";
                        break;
                }

                DOBWord = "(" + DateNumeric + SuperScript + " - " + MonthChar + " - " + YearNumeric + ")";

                return DOBWord;
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
                Command.Parameters.Add(new SqlParameter("@Student_ID", Student_ID));
                Connection.Open();
                dtbl.Load(Command.ExecuteReader());
            }
            catch(Exception E)
            {
                Session["ErrorMessage"] = Convert.ToString(E);
                Response.Redirect("ApplicationError.aspx");
            }
            finally
            {
                Connection.Close();
            }
            lblAplNo.Text = (dtbl.Rows[0]["APPLICATION_ID"].ToString());
            lblName.Text = (dtbl.Rows[0]["FIRST_NAME"].ToString());
            lblMiddleName.Text = (dtbl.Rows[0]["MIDDLE_NAME"].ToString());
            lblSurname.Text = (dtbl.Rows[0]["SURNAME"].ToString());
            lblGender.Text = (dtbl.Rows[0]["GENDER"].ToString());
            lblMotherTongue.Text = (dtbl.Rows[0]["MOTHER_TONGUE"].ToString());
            lblReligion.Text = (dtbl.Rows[0]["RELIGION"].ToString());
            lblCasteSubCaste.Text = (dtbl.Rows[0]["CASTE_SUB_CASTE"].ToString());
            DOB = (dtbl.Rows[0]["DATE_OF_BIRTH"].ToString());
            lblDOB.Text = DOB.Substring(0, DOB.Length - 11) + DOBWords;
            lblPlaceOfBirth.Text = (dtbl.Rows[0]["PLACE_OF_BIRTH"].ToString());
            lblResidentialAddress.Text = (dtbl.Rows[0]["RESIDENTIAL_ADDRESS"].ToString());
            lblArea.Text = (dtbl.Rows[0]["AREA"].ToString());
            lblAadharNumber.Text = (dtbl.Rows[0]["AADHAR_NUMBER"].ToString());
            lblMedicalHistory.Text = (dtbl.Rows[0]["MEDICAL_HISTORY"].ToString());
            lblOtherInfo.Text = (dtbl.Rows[0]["ADDITIONAL_INFORMATION"].ToString());
            lblFathersName.Text = (dtbl.Rows[0]["FATHERS_NAME"].ToString());
            lblFatherQualification.Text = (dtbl.Rows[0]["FATHERS_QUALIFICATION"].ToString());
            lblFatherOccupation.Text = (dtbl.Rows[0]["FATHERS_OCCUPATION"].ToString());
            lblFatherNative.Text = (dtbl.Rows[0]["FATHERS_NATIVE_PLACE"].ToString());
            lblFathersEmail.Text = (dtbl.Rows[0]["FATHERS_EMAIL"].ToString());
            lblFatherTelephone.Text = (dtbl.Rows[0]["FATHERS_TELEPHONE"].ToString());
            lblFatherMobile.Text = (dtbl.Rows[0]["FATHERS_MOBILE_NUMBER"].ToString());
            lblFatherWhatsapp.Text = (dtbl.Rows[0]["FATHERS_WHATSAPP_NUMBER"].ToString());
            lblFatherResidentialAddress.Text = (dtbl.Rows[0]["FATHERS_RESIDENTIAL_ADDRESS"].ToString());
            lblFatherOfficeAddress.Text = (dtbl.Rows[0]["FATHERS_OFFICE_ADDRESS"].ToString());
            lblFatherOfficeTelephone.Text = (dtbl.Rows[0]["FATHERS_OFFICE_TELEPHONE_NUMBER"].ToString());
            lblFatherPAN.Text = (dtbl.Rows[0]["FATHERS_PAN_NUMBER"].ToString());
            lblFatherAadharNumber.Text = (dtbl.Rows[0]["FATHERS_AADHAR_NUMBER"].ToString());
            lblMothersName.Text = (dtbl.Rows[0]["MOTHERS_NAME"].ToString());
            lblMotherMaidenName.Text = (dtbl.Rows[0]["MOTHERS_MAIDEN_NAME"].ToString());
            lblMotherQualification.Text = (dtbl.Rows[0]["MOTHERS_QUALIFICATION"].ToString());
            lblMotherOccupation.Text = (dtbl.Rows[0]["MOTHERS_OCCUPATION"].ToString());
            lblMotherNative.Text = (dtbl.Rows[0]["MOTHERS_NATIVE_PLACE"].ToString());
            lblMothersEmail.Text = (dtbl.Rows[0]["MOTHERS_EMAIL"].ToString());
            lblMotherTelephone.Text = (dtbl.Rows[0]["MOTHERS_TELEPHONE"].ToString());
            lblMotherMobile.Text = (dtbl.Rows[0]["MOTHERS_MOBILE_NUMBER"].ToString());
            lblMotherWhatsApp.Text = (dtbl.Rows[0]["MOTHERS_WHATSAPP_NUMBER"].ToString());
            lblMotherResidentialAddress.Text = (dtbl.Rows[0]["MOTHERS_RESIDENTIAL_ADDRESS"].ToString());
            lblMotherOfficeAddress.Text = (dtbl.Rows[0]["MOTHERS_OFFICE_ADDRESS"].ToString());
            lblMotherOfficeTelephone.Text = (dtbl.Rows[0]["MOTHERS_OFFICE_TELEPHONE_NUMBER"].ToString());
            lblMotherPAN.Text = (dtbl.Rows[0]["MOTHERS_PAN_NUMBER"].ToString());
            lblMotherAadharNumber.Text = (dtbl.Rows[0]["MOTHERS_AADHAR_NUMBER"].ToString());
            lblRelatedStudent.Text = (dtbl.Rows[0]["RELATION_IN_SCHOOL"].ToString());
            lblRelatedStudentName.Text = (dtbl.Rows[0]["RELATION_NAME"].ToString());
            lblRelatedStudentSection.Text = (dtbl.Rows[0]["RELATION_SECTION"].ToString());
            lblRelatedStudentStandard.Text = (dtbl.Rows[0]["RELATION_STANDARD"].ToString());
            lblRelatedStudentDivision.Text = (dtbl.Rows[0]["RELATION_DIVISION"].ToString());
            lblFamilyIncome.Text = (dtbl.Rows[0]["FAMILY_INCOME"].ToString());         
        }
        #endregion Custom Methods

        #region Page Events
        protected void Page_Load(object sender, EventArgs e)
        {
            int check = Student_ID;
            if (check == 0)
            {
                Response.Redirect("SessionExpired.aspx");
            }
            else
            {
                AssignValue();
            }
            Session["Student_ID_Edit_Session"] = Convert.ToString("0");
            Session["Student_ID_Session"] = Convert.ToString("X");
        }
        #endregion Page Events

        #region Page Controls
        #endregion Page Controls
    }
}