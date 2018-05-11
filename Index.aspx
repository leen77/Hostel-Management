<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ProjectHMS.Index1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Styles/Style4.css" rel="stylesheet" type="text/css" />

   

    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
              <img src="DDU.jpg"/>
                
               <h1> DDU BOY'S HOSTEL</h1>
                  <%-- <%--&nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                   <a href="" >Login</a>--%>
                   <button type='button' id="btn1">LOGIN</button>
                   <button type='button' id="btn2">SIGN UP</button>
          
                 <%--  <button type='button'>SIGN UP</button>--%>
              
                
                
                    
           </div>
            <hr /> 

    <div style="width:696px; height:39px; margin-left:0px;">
        <img alt="" class="corner" id="slide" src="Upload/1.jpg" style="height:700px; width:1366px;" />
     <script type="text/javascript">
        var imageslider = new Array();
        imageslider[0] = new Image();
        imageslider[0].src = "Upload/1.jpg";

        imageslider[1] = new Image();
        imageslider[1].src = "Upload/2.jpg";
        imageslider[2] = new Image();
        imageslider[2].src = "Upload/3.jpg";
        imageslider[3] = new Image();
        imageslider[3].src = "Upload/4.jpg";
      //  imageslider[4] = new Image();
        //imageslider[4].src = "Upload/44.jpg";
      
        var step = 0;
        function slideIt() {
            if (!document.images)
                return

          
            document.getElementById('slide').src = imageslider[step].src;

            if (step < 3)
                step++

            else
                step = 0

            setTimeout("slideIt()", 3000)

        }
        slideIt()

    </script>
        </div> 
            <%--<div class="footer">
                <h2> @Copyright(C) DDU 1990-2017</h2>
            </div>--%>
    </div>

    </form>
</body>
</html>
