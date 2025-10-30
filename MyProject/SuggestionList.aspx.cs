using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using Dapper;

namespace MyProject
{
    public partial class SuggestionList : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (var con = new SqlConnection(cs))
                {
                    var data = con.Query<suggestion>("SELECT * FROM Suggestion ORDER BY Id DESC");
                    if (data.Count() == 0) 
                    {
                        pnlNoSuggestions.Visible = true;
                    }
                    rptSuggestions.DataSource = data;
                    rptSuggestions.DataBind();
                }
            }
        }
    }

    public class suggestion
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string SuggestionText { get; set; }

        public DateTime CreatedDate {  get; set; }
    }
}
