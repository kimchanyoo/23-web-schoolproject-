using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_List_Board_A : System.Web.UI.Page
{
    protected string ShowDate(DateTime regDate)
    {
        return string.Format("{0:yyyy-MM-dd}", regDate);
    }
}
