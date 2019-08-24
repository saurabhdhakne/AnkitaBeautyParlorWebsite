<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        Jadhavwadi Jalna Road<br />
        Harsul, Aurangabad<br />
        <abbr title="Phone">Mobile Number:</abbr><br />
        Kavita Jaybhaye (Owner) : +91 70210818715<br />
        Ravindra Jaybhay : +91 8600596105<br />
        Saurabh Dhakne (Web designer) : +91 7769955625
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:timesofsrb@gmail.com">timesofsrb@gmail.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:timesofsrb@gmail.com">timesofsrb@gmail.com</a>
    </address>

    </div>                          
    <div class="container">
        <h1>Location:</h1>
        <div class="mapouter"><div class="gmap_canvas"><iframe width="712" height="560" id="gmap_canvas" src="https://maps.google.com/maps?q=19.907071883755584%2C%2075.35818165917196&t=&z=17&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.pureblack.de">werbeagentur</a></div><style>.mapouter{text-align:right;height:560px;width:712px;}.gmap_canvas {overflow:hidden;background:none!important;height:560px;width:712px;}</style></div>

    </div>

</asp:Content>
