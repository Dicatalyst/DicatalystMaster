namespace BAL
{
    public class Notify
    {
        // public noty()
        //{
        //
        // TODO: Add constructor logic here
        //
        //}
        //generate('alert');
        //generate('information');
        //generate('error');
        //generate('warning');
        //generate('notification');
        //generate('success');

        public void Information_topRight(string msg, System.Web.UI.Page page)
        {
            var str = "<script>generate_topRight('" + msg + "', 'information');</script>";
            page.ClientScript.RegisterStartupScript(page.GetType(), "Script", str, false);
        }

        public void Success_Display(string msg, System.Web.UI.Page page)
        {
            var str = "<script>generate('" + msg + "', 'success');</script>";
            page.ClientScript.RegisterStartupScript(page.GetType(), "Script", str, false);
        }

        public void Notification_Display(string msg, System.Web.UI.Page page)
        {
            var str = "<script>generate('" + msg + "', 'notification');</script>";
            page.ClientScript.RegisterStartupScript(page.GetType(), "Script", str, false);
        }

        public void Warning_Display(string msg, System.Web.UI.Page page)
        {
            var str = "<script>generate('" + msg + "', 'warning');</script>";
            page.ClientScript.RegisterStartupScript(page.GetType(), "Script", str, false);
        }

        public void Information_Display(string msg, System.Web.UI.Page page)
        {
            var str = "<script>generate('" + msg + "', 'information');</script>";
            page.ClientScript.RegisterStartupScript(page.GetType(), "Script", str, false);
        }

        public void Alert_Display(string msg, System.Web.UI.Page page)
        {
            var str = "<script>generate('" + msg + "', 'alert');</script>";
            page.ClientScript.RegisterStartupScript(page.GetType(), "Script", str, false);
        }

        public void Error_Display(string msg, System.Web.UI.Page page1)
        {
            var str = "<script>generate('" + msg + "', 'error');</script>";
            page1.ClientScript.RegisterStartupScript(page1.GetType(), "Script", str, false);
        }

        public void show_Bulk_Messages(string msg, System.Web.UI.Page page1)
        {
            var st = msg.Split(new char[] { '#' });
            var s2 = "";

            for (int i = 0; i < st.Length; i++)
            {
                if (!st[i].Equals(""))
                {
                    var mtype = st[i].Split(new char[] { ':' })[1];
                    var s1 = st[i].Split(new char[] { ':' })[0];

                    switch (mtype)
                    {
                        case "a":
                            s2 = s2 + "generate('" + s1 + "','alert');";
                            break;

                        case "i":
                            s2 = s2 + "generate('" + s1 + "','information');";
                            break;

                        case "e":
                            s2 = s2 + "generate('" + s1 + "','error');";
                            break;

                        case "w":
                            s2 = s2 + "generate('" + s1 + "','warning');";
                            break;

                        case "n":
                            s2 = s2 + "generate('" + s1 + "','notification');";
                            break;

                        case "s":
                            s2 = s2 + "generate('" + s1 + "','success');";
                            break;
                    }
                }
            }

            var str = "<script>" + s2 + "</script>";
            page1.ClientScript.RegisterStartupScript(page1.GetType(), "Script", str, false);
        }
    }
}