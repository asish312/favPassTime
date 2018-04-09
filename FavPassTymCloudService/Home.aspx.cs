using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace myFavpasTime
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (!this.Page.User.Identity.IsAuthenticated)
                {
                    Response.Redirect("~/Login.aspx");
                }
                if (this.Page.User.IsInRole("Administrator"))
                {
                    pnlAssignRoles.Visible = true;
                    gvUsers.DataSource = GetData("SELECT UserId, Username, RoleId FROM Users");
                    gvUsers.DataBind();
                }
            }
        }

        private DataTable GetData(string query)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList ddlRoles = (e.Row.FindControl("ddlRoles") as DropDownList);
                ddlRoles.DataSource = GetData("SELECT RoleId, RoleName FROM Roles");
                ddlRoles.DataTextField = "RoleName";
                ddlRoles.DataValueField = "RoleId";
                ddlRoles.DataBind();

                string assignedRole = (e.Row.DataItem as DataRowView)["RoleId"].ToString();
                ddlRoles.Items.FindByValue(assignedRole).Selected = true;
            }
        }

        protected void UpdateRole(object sender, EventArgs e)
        {
            GridViewRow row = ((sender as Button).NamingContainer as GridViewRow);
            int userId = int.Parse((sender as Button).CommandArgument);
            int roleId = int.Parse((row.FindControl("ddlRoles") as DropDownList).SelectedItem.Value);
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE Users SET RoleId = @RoleId WHERE UserId = @UserId"))
                {
                    cmd.Parameters.AddWithValue("@UserId", userId);
                    cmd.Parameters.AddWithValue("@RoleId", roleId);
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
    }
}