<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="jacoolcoffee.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NavContent" runat="server">
    <nav id="nav">
		<ul>
			<li class="current"><a href="Menu.aspx">Menu</a></li>
			<li><a href="Products.aspx">Products</a></li>
            <li><a href="AboutUs.aspx">Franchising</a></li>
		</ul>
	</nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BannerContent" runat="server">
    <section id="banner">
		<header>
			<h2>In-store Menu</h2>
            <h2>Rise and grind, it's coffee time!</h2>
		</header>
	</section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main">
        <h1 class="best-sellers">BEST SELLERS!</h1>
        <section class="carousel">
		        <div class="reel">
			        <article>
				        <a href="Products.aspx" class="image featured"><img src="Images/Froccino-cookies.jpg" alt="" /></a>
				        <header>
					        <h3><a href="Products.aspx">Froccino Cookies n' Cream</a></h3>
				        </header>
				        <p>Blended Coffee with Oreo Cookies and Whipped Cream</p>
                        <asp:Button ID="feedback" CssClass="fback-button" runat="server" Text="Give Feedback"/>
                        <p class="star-rate star-size">★★★★★</p>
			        </article>

			        <article>
				        <a href="#" class="image featured"><img src="Images/froccino-mocha.jpg" alt="" /></a>
				        <header>
					        <h3><a href="#">Froccino Mocha</a></h3>
				        </header>
				        <p>Blended Coffee with Chocolate Sauce and Whipped Cream</p>
                        <asp:Button ID="Button1" CssClass="fback-button" runat="server" Text="Give Feedback"/>
                        <p class="star-rate star-size">★★★★</p>
			        </article>

			        <article>
				        <a href="#" class="image featured"><img src="Images/hot-caramel-latte.jpg" alt="" /></a>
				        <header>
					        <h3><a href="#">Hot Caramel Latte</a></h3>
				        </header>
				        <p>Hot espresso with caramel sauce and milk</p>
                        <asp:Button ID="Button2" CssClass="fback-button" runat="server" Text="Give Feedback"/>
                        <p class="star-rate star-size">★★★★</p>
			        </article>

			        <article>
				        <a href="#" class="image featured"><img src="Images/hot-coffee-mocha.jpg" alt="" /></a>
				        <header>
					        <h3><a href="#">Hot Caffee Mocha</a></h3>
				        </header>
				        <p>Espresso with chocolate powder and milk with whipped cream</p>
                        <asp:Button ID="Button3" CssClass="fback-button" runat="server" Text="Give Feedback"/>
                        <p class="star-rate star-size">★★★★★</p>
			        </article>

			        <article>
				        <a class="image featured"><img src="Images/ice-caramel-latte.jpg" alt="" /></a>
				        <header>
					        <h3><a href="#">Ice Caramel Latte</a></h3>
				        </header>   
				        <p>Espresso with ice, caramel sauce and milk</p>
                        <asp:Button ID="Button4" CssClass="fback-button" runat="server" Text="Give Feedback"/>
                        <p class="star-rate star-size">★★★★★</p>
			        </article>
		    </div>
            <span class="forward"></span>
            <span class="backward"></span>
            </section>
	</section>
</asp:Content>