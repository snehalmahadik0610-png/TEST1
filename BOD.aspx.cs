using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.Threading.Tasks;

public partial class BOD : System.Web.UI.Page
{
    private DataBase_Connection databaseconnection;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            refreshdata();
            MultiView.ActiveViewIndex = 0;
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel4.Visible = false;
        }
    }
    protected void Menu1_MenuItemClick1(object sender, MenuEventArgs e)
    {
        int Index = Int32.Parse(e.Item.Value);
        MultiView.ActiveViewIndex = Index;
    }
    public void refreshdata()
    {
        databaseconnection = new DataBase_Connection();
        int brcode = Convert.ToInt16(Session["UserBranchCode"]);
        String query = "select * from LTLoanTraSystem where Authneeded =" + 0 + " and Authdone=" + 2;
        DataTable dt = new DataTable();
        dt = databaseconnection.SelectAllRecords1(query);
        GV.DataSource = dt;
        GV.DataBind();
        Txtcustno.Text = "";
        Txtappname.Text = "";
        Txtdob.Text = "";
        TxtGen.Text = "";
        Txtcusadd.Text = "";
        Txtperadd.Text = "";
        Txtemail.Text = "";
        Txtpanno.Text = "";
        Txtaadhar.Text = "";
        Txtmo.Text = "";
        Txtcast.Text = "";
        Txtsubcast.Text = "";
        Txtjob.Text = "";
        Txtjt.Text = "";
        TxtBusiness.Text = "";
        Txtbt.Text = "";
        Txtos.Text = "";
        TxtBr.Text = "";
        Txtws.Text = "";
        Txtweeker.Text = "";
        Txtloan.Text = "";
        Txtpu.Text = "";
        Txtgl.Text = "";
        Txtra.Text = "";
        Txtst.Text = "";
        Txtsa.Text = "";
        Txtgn.Text = "";
        Txtga.Text = "";
        Txtgw.Text = "";
        Txtir.Text = "";
        Txtgn1.Text = "";
        Txtga1.Text = "";
        Txtgw1.Text = "";
    }
    protected void Butre_Click(object sender, EventArgs e)
    {

    }

    protected void Butap_Click(object sender, EventArgs e)
    {

    }

    protected void Butapre_Click(object sender, EventArgs e)
    {

    }

    protected void lnkview_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = true;
        Panel4.Visible = true;
        int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
        databaseconnection = new DataBase_Connection();
        int brcode = Convert.ToInt16(Session["UserBranchCode"]);
        String query = " select t1.CustomerNo,t1.NameOfApplicant,t1.Gender,t1.DOB,t1.Address,t1.PermenantAdd,t1.EmailId,t1.PanNo,t1.AaddharNo ,t1.ContactNo,t1.Cast,t1.SubCast,t1.Job,t1.Typeofjob ,t1.Business,t1.TypeOfBusiness,t1.Staff,t1. BranchName,t1.WeekerSection,t1.TypeOfWeekerSection,t2.LoanType,t2.Purpose ,t2.GL,t2.RequireedAmount,t2.Securitytype,t2.SecurityAmount,t2.GuaranterName,t2.GuaranterAdd,t2.Guaranterwork,t2.Interest,t2.GuaranterName2,t2.GuaranterAdd2,t2.Guaranterwork2 from LTLoanTraSystem as t1 join LTLoan as t2 on t1.LoanType = t2.LoanType where  ApplicationId=" + id;
        //String query = "select * from  LoanTraSystem  where ApplicationId=" + id /*+ " AND  ManageroffBrCode =" + brcode*/;
        DataTable dt = new DataTable();
        Hf.Value = id.ToString();
        dt = databaseconnection.SelectAllRecords(query);
        Txtcustno.Text = dt.Rows[0]["CustomerNo"].ToString().Trim();
        Txtappname.Text = dt.Rows[0]["NameOfApplicant"].ToString().Trim();
        Txtdob.Text = dt.Rows[0]["DOB"].ToString().Trim();
        TxtGen.Text = dt.Rows[0]["Gender"].ToString().Trim();
        Txtcusadd.Text = dt.Rows[0]["Address"].ToString().Trim();
        Txtperadd.Text = dt.Rows[0]["PermenantAdd"].ToString().Trim();
        Txtemail.Text = dt.Rows[0]["EmailId"].ToString().Trim();
        Txtpanno.Text = dt.Rows[0]["PanNo"].ToString().Trim();
        Txtaadhar.Text = dt.Rows[0]["AaddharNo"].ToString().Trim();
        Txtmo.Text = dt.Rows[0]["ContactNo"].ToString().Trim();
        Txtcast.Text = dt.Rows[0]["Cast"].ToString().Trim();
        Txtsubcast.Text = dt.Rows[0]["SubCast"].ToString().Trim();
        Txtjob.Text = dt.Rows[0]["Job"].ToString().Trim();
        Txtjt.Text = dt.Rows[0]["Typeofjob"].ToString().Trim();
        TxtBusiness.Text = dt.Rows[0]["Business"].ToString().Trim();
        Txtbt.Text = dt.Rows[0]["TypeOfBusiness"].ToString().Trim();
        Txtos.Text = dt.Rows[0]["Staff"].ToString().Trim();
        TxtBr.Text = dt.Rows[0]["BranchName"].ToString().Trim();
        Txtws.Text = dt.Rows[0]["WeekerSection"].ToString().Trim();
        Txtweeker.Text = dt.Rows[0]["TypeOfWeekerSection"].ToString().Trim();
        Txtloan.Text = dt.Rows[0]["LoanType"].ToString().Trim();
        Txtpu.Text = dt.Rows[0]["Purpose"].ToString().Trim();
        Txtgl.Text = dt.Rows[0]["GL"].ToString().Trim();
        Txtra.Text = dt.Rows[0]["RequireedAmount"].ToString().Trim();
        Txtst.Text = dt.Rows[0]["Securitytype"].ToString().Trim();
        Txtsa.Text = dt.Rows[0]["SecurityAmount"].ToString().Trim();
        Txtgn.Text = dt.Rows[0]["GuaranterName"].ToString().Trim();
        Txtga.Text = dt.Rows[0]["GuaranterAdd"].ToString().Trim();
        Txtgw.Text = dt.Rows[0]["Guaranterwork"].ToString().Trim();
        Txtir.Text = dt.Rows[0]["Interest"].ToString().Trim();
        Txtgn1.Text = dt.Rows[0]["GuaranterName2"].ToString().Trim();
        Txtga1.Text = dt.Rows[0]["GuaranterAdd2"].ToString().Trim();
        Txtgw1.Text = dt.Rows[0]["Guaranterwork2"].ToString().Trim();
    }
}