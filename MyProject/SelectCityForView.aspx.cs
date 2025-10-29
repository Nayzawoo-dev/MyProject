using System;
using System.Configuration;
using System.Data.SqlClient;
using Dapper;

namespace MyProject
{
    public partial class SelectCityForView : System.Web.UI.Page
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
}
