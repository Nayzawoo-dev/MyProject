using Dapper;
using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Xml.Linq;

namespace MyProject
{
    public partial class LeaderManage : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadLeaders();
            }
        }

        void LoadLeaders()
        {
            using (var con = new SqlConnection(cs))
            {
                var list = con.Query<leader>("SELECT * FROM Leader ORDER BY Id DESC").ToList();
                if (list.Count <= 0) 
                { 
                    pnlNoLeaders.Visible = true;
                }
                else
                {
                    pnlNoLeaders.Visible = false;
                }
                gvLeaders.DataSource = list;
                gvLeaders.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (var con = new SqlConnection(cs))
            {
                if (string.IsNullOrEmpty(txtName.Text) || string.IsNullOrEmpty(txtPhone.Text))
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "အချက်အလက်ပြည့်စုံစွာရေးပါ";
                    goto res;
                }
                else
                if (string.IsNullOrEmpty(hfId.Value))
                {
                    // Insert new Leader
                    string sql = "INSERT INTO Leader (Name, Phone_No) VALUES (@Name, @Phone_No)";
                    con.Execute(sql, new { Name = txtName.Text, Phone_No = txtPhone.Text });
                    pnlMessage.Visible = true;
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "✅ Leader အသစ်ထည့်ပြီးပါပြီ။";
                }
                else
                {
                    // Update existing Leader
                    string sql = "UPDATE Leader SET Name=@Name, Phone_No=@Phone_No WHERE Id=@Id";
                    con.Execute(sql, new { Name = txtName.Text, Phone_No = txtPhone.Text, Id = hfId.Value });
                    pnlMessage.Visible = true;
                    lblMessage.Text = "✏ Leader အချက်အလက်ပြင်ပြီးပါပြီ။";
                    btnSave.Text = "ထည့်မယ်";
                    btnCancel.Visible = false;
                    hfId.Value = "";
                }
            }

        res:
            txtName.Text = "";
            txtPhone.Text = "";
            LoadLeaders();
        }

        protected void gvLeaders_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "EditLeader")
            {
                using (var con = new SqlConnection(cs))
                {
                    var leader = con.QuerySingleOrDefault("SELECT * FROM Leader WHERE Id=@Id", new { Id = id });
                    if (leader != null)
                    {
                        hfId.Value = leader.Id.ToString();
                        txtName.Text = leader.Name;
                        txtPhone.Text = leader.Phone_No;
                        btnSave.Text = "ပြင်မယ်";
                        btnCancel.Visible = true;
                    }
                }
            }
            else if (e.CommandName == "DeleteLeader")
            {
                using (var con = new SqlConnection(cs))
                {
                    con.Execute("DELETE FROM Leader WHERE Id=@Id", new { Id = id });
                    pnlMessage.Visible = true;
                    lblMessage.Text = "🗑 Leader ဖျက်ပြီးပါပြီ။";
                }
                LoadLeaders();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            hfId.Value = "";
            txtName.Text = "";
            txtPhone.Text = "";
            btnSave.Text = "ထည့်မယ်";
            btnCancel.Visible = false;
        }
    }
}
