using System;
using System.Configuration;
using System.Data.SqlClient;
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
                    var data = con.Query<suggestion>("SELECT Name, SuggestionText FROM Suggestion ORDER BY Id DESC");
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
    }
}
