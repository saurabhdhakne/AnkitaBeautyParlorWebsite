<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="">
        <div id="myCarousel" class="carousel"  data-ride="carousel">
    <h1><i><b>Ankita<br />
        Beauty<br />
        Parlor</b></i>
    </h1>                
                          <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                          </ol>

                          <div class="carousel-inner">
                            <div class="item active">
                              <img src="images/parlor1.jpg"  >
                            </div>

                            <div class="item">
                              <img src="images/parlor2.jpg"  >
                            </div>


                            <div class="item">
                              <img src="images/parlor3.jpeg"  >
                            </div>
                          </div>

                          <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                          </a>
              
                     </div>
    
  </div>
   

    <div class="container mycontainer">
    <marquee>
        <h2 class="cl-md-12 col-lg-12 col-sm-12 col-xs-12"><i>Diwali Special Offer Check Out Our Rates!!! Big Discount On Every Service !!! Visit at Once !!! Ankia Beauty Parlor is The place that beautifies your face !!!The salon that gives you style.</i></h2>
    </marquee>
    
        <br />
        <h1 class="col-md-12 col-lg-12 col-sm-12 col-xs-12 text-center" >
            <i>Services</i>
        </h1>        
        <div class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
            <h2>Skin Care</h2>

            <p>
            <ul>
                <li><b>Facial :</b><br /><i>Shehanaj Gold & Diamond Facial,<br /> VLCC Facial,Fruit Facial &<br /> many more.</i></li>
                <li><b>Bleach :</b> <br /><i>24 Caret Gold,Olivo, Oxy </i></li>
                <li><b>Body Waxing</b></li> 
            </ul>
            </p>
            <p>
                <a class="btn btn-default" href="ServiceSkinCare.aspx">Check The Rates & <br />Request Apponment &raquo;</a>
            </p>
        </div>
        <div class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
            <h2>Hair</h2>
            <p>
                <ul>
                    <li>Hair Cuts</li>
                    <li>Hair Colour</li>
                    <li>Hair Mehandi Colour</li>
                    <li>Curling</li>
                    <li>Straightning</li>
                    <li>Hair Highlight</li>
                    <li>Hair Spa</li>       
                </ul>
            </p>
            <p>
                <a class="btn btn-default" href="ServiceHairs">Check The Rates & <br />Request Apponment &raquo;</a>
            </p>
        </div>
        <div class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
            <h2>Nails</h2>
            <p>
                <ul>
                    <li>Manicures</li>
                    <li>Pedicures</li>
                </ul>
            </p>
            <p>
                <a class="btn btn-default" href="ServiceNails">Check The Rates & <br />Request Apponment &raquo;</a>
            </p>
        </div>
    </div>
    <hr />
    <br />
    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12" >
     
         <div class="container">
             <h1 class="text-center">Get Our Location</h1>
             <h2>Address: Plot No. 24,Jadhavwadi Harsul Aurangabd 431001</h2>

        <div class="mapouter"><div class="gmap_canvas"><iframe width="712" height="560" id="gmap_canvas" src="https://maps.google.com/maps?q=19.907071883755584%2C%2075.35818165917196&t=&z=17&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.pureblack.de">werbeagentur</a></div><style>.mapouter{text-align:right;height:560px;width:712px;}.gmap_canvas {overflow:hidden;background:none!important;height:560px;width:712px;}</style>

        </div>
    </div>

    </div>
    
</asp:Content>
