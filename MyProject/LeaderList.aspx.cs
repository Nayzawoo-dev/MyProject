using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using Dapper;

namespace MyProject
{
    public partial class LeaderList : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (var con = new SqlConnection(cs))
                {
                    var data = con.Query<leader>("SELECT Name, Phone_No FROM Leader ORDER BY Id DESC");
                    if(data.Count() <= 0)
                    {
                        pnlNoLeaders.Visible = true;
                    }
                    else
                    {
                        pnlNoLeaders.Visible=false;
                    }
                    rptLeaders.DataSource = data;
                    rptLeaders.DataBind();
                }
            }
        }
    }

    public class leader
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Phone_No { get; set; }
    }
}
