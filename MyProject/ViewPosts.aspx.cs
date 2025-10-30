using System;
using System.Configuration;
using System.Data.SqlClient;
using Dapper;
using System.Collections.Generic;

namespace MyProject
{
    public partial class ViewPosts : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        int cityId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!int.TryParse(Request.QueryString["city"], out cityId))
            {
                Response.Redirect("SelectCityForView.aspx");
                return;
            }

            if (!IsPostBack)
            {
                using (var con = new SqlConnection(cs))
                {
                    var city = con.QuerySingleOrDefault<city>("SELECT City_Name FROM City WHERE Id=@Id", new { Id = cityId });
                    if (city != null)
                        lblCityName.Text = city.City_Name;

                    var posts = con.Query<Post>("SELECT * FROM Post WHERE city_id=@cityId order by Id DESC", new { cityId });
                    var postList = new List<dynamic>();

                    foreach (var p in posts)
                    {
                        var imgs = con.Query<Image>("SELECT Url FROM Image WHERE post_id=@postId", new { postId = p.Id });
                        postList.Add(new
                        {
                            Caption = p.Caption,
                            Images = imgs
                        });
                    }

                    if (postList.Count <= 0)
                    {
                        pnlNoPosts.Visible = true;
                    }

                    rptPosts.DataSource = postList;
                    rptPosts.DataBind();
                }
            }
        }
    }

    public class Post
    {
        public int Id { get; set; }
        public string Caption { get; set; }
        public int city_id { get; set; }
    }

    public class Image
    {
        public int Id { get; set; }
        public string Url { get; set; }
        public int post_id { get; set; }
    }
}
