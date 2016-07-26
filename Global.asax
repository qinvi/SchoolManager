<%@ Application Language="C#" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
        {
            Path = "~/scripts/jquery-1.7.2.min.js",
            DebugPath = "~/scripts/jquery-1.7.2.js",
            CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.min.js",
            CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.js"
        });

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
    }

</script>
