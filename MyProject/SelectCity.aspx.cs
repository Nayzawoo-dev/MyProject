using System;
using System.Configuration;
using System.Data.SqlClient;
using Dapper;

namespace MyProject
{
    public partial class SelectCity : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (var con = new SqlConnection(cs))
                {
                    var cities = con.Query<city>("SELECT * FROM City");
                    rptCities.DataSource = cities;
                    rptCities.DataBind();
                }
            }
        }
    }

    public class city
    {
        public string Id { get; set; }
        public string City_Name { get; set; }
    }
}
