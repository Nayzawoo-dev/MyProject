using Dapper;
using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace MyProject
{
    public partial class SuggestionAdd : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txtName.Text) || string.IsNullOrEmpty(txtSuggestion.Text))
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "ပေးထားသောအချက်အလက်များပြည့်စုံစွာဖြည့်ပါ။";
                    return;
                }
                using (var con = new SqlConnection(cs))
                {
                    string sql = "INSERT INTO Suggestion (Name, SuggestionText) VALUES (@Name, @SuggestionText)";
                    con.Execute(sql, new { Name = txtName.Text, SuggestionText = txtSuggestion.Text });
                }

                // အောင်မြင်ပြီးနောက်
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "✅ အကြံပြုစာအောင်မြင်စွာတင်ပြီးပါပြီ။";
                Response.AddHeader("REFRESH", "1;URL=SuggestionList.aspx"); // 1 sec delay then redirect
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "❌ Error: " + ex.Message;
            }
        }
    }
}
