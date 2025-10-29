using System;
using System.Configuration;
using System.Data.SqlClient;
using Dapper;
using System.IO;

namespace MyProject
{
    public partial class UploadPost : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        int cityId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!int.TryParse(Request.QueryString["city"], out cityId))
            {
                Response.Redirect("SelectCity.aspx");
                return;
            }

            if (!IsPostBack)
            {
                using (var con = new SqlConnection(cs))
                {
                    var city = con.QuerySingleOrDefault("SELECT City_Name FROM City WHERE Id=@Id", new { Id = cityId });
                    if (city != null)
                        lblCityName.Text = city.City_Name.ToString();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int postId;
            using (var con = new SqlConnection(cs))
            {
                string insertPost = "INSERT INTO Post (Caption, city_id) VALUES (@Caption, @CityId); SELECT CAST(SCOPE_IDENTITY() as int);";
                postId = con.QuerySingle<int>(insertPost, new { Caption = txtCaption.Text, CityId = cityId });
            }

            if (fuImages.HasFiles)
            {
                foreach (var file in fuImages.PostedFiles)
                {
                    string filename = Path.GetFileName(file.FileName);
                    string path = Server.MapPath("~/uploads/images/" + filename);
                    file.SaveAs(path);

                    using (var con = new SqlConnection(cs))
                    {
                        con.Execute("INSERT INTO Image (Url, post_id) VALUES (@Url, @PostId)",
                            new { Url = "~/uploads/images/" + filename, PostId = postId });
                    }
                }
            }

            lblMessage.Text = "✅ Post တင်ခြင်းအောင်မြင်ပါသည်။";
            pnlMessage.Visible = true;
            txtCaption.Text = "";
        }
    }
}
