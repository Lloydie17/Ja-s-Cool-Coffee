<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="jacoolcoffee.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NavContent" runat="server">
    <nav id="nav">
		<ul>
			<li class="current"><a href="Menu.aspx">Menu</a></li>
			<li><a href="#">Products</a></li>
			<li><a href="#">Franchising</a></li>
			<li><a href="#">Locations</a></li>
            <li><a href="#">About Us</a></li>
		</ul>
	</nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BannerContent" runat="server">
    <section id="banner">
		<header>
			<h2>In-store Menu</h2>
			<button>ORDER NOW</button>
		</header>
	</section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main">

        <section class="carousel">
		        <div class="reel">
			        <article>
				        <a href="#" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
				        <header>
					        <h3><a href="#">Pulvinar sagittis congue</a></h3>
				        </header>
				        <p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
			        </article>

			        <article>
				        <a href="#" class="image featured"><img src="images/pic02.jpg" alt="" /></a>
				        <header>
					        <h3><a href="#">Fermentum sagittis proin</a></h3>
				        </header>
				        <p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
			        </article>

			        <article>
				        <a href="#" class="image featured"><img src="images/pic03.jpg" alt="" /></a>
				        <header>
					        <h3><a href="#">Sed quis rhoncus placerat</a></h3>
				        </header>
				        <p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
			        </article>

			        <article>
				        <a href="#" class="image featured"><img src="images/pic04.jpg" alt="" /></a>
				        <header>
					        <h3><a href="#">Ultrices urna sit lobortis</a></h3>
				        </header>
				        <p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
			        </article>

			        <article>
				        <a href="#" class="image featured"><img src="images/pic05.jpg" alt="" /></a>
				        <header>
					        <h3><a href="#">Varius magnis sollicitudin</a></h3>
				        </header>
				        <p>Commodo id natoque malesuada sollicitudin elit suscipit magna.</p>
			        </article>
		    </div>
            <span class="forward"></span>
            <span class="backward"></span>
            </section>
	</section>
</asp:Content>