using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebSite
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindMainCategory();
                BindBrandsRptr();
            }
        }

        private void BindBrandsRptr()
        {
            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select A.*,B.* from dblSubCategories A inner join tbCategories B on B.CatID=A.MainCatID", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtBrands = new DataTable();
                        sda.Fill(dtBrands);
                        rptrSubCategory.DataSource = dtBrands;
                        rptrSubCategory.DataBind();
                    }

                }
            }
        }

        private void BindMainCategory()
        {

            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from tbCategories",con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd); //зберігаємо нашу інформацію в базі,треба адаптер
                DataTable dt = new DataTable(); //нова база даних
                sda.Fill(dt);// створюю базу даних з адаптером

                //якщо пароль і юзернейм співпадає -> бд заповнюється
                if (dt.Rows.Count != 0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "CatName";
                    ddlCategory.DataValueField = "CatID";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));

                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into dblSubCategories values('" + txtSubCatName.Text + "','" + ddlCategory.SelectedItem.Value + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                txtSubCatName.Text = string.Empty;
                ddlCategory.ClearSelection();
                ddlCategory.Items.FindByValue("0").Selected = true;
            }
            BindBrandsRptr();

        }
    }
    
}