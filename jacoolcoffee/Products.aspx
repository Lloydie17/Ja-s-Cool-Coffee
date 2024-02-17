<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="jacoolcoffee.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NavContent" runat="server">
    <nav id="nav">
		<ul>
			<li><a href="Menu.aspx">Menu</a></li>
			<li class="current"><a href="Products.aspx">Products</a></li>
            <li><a href="AboutUs.aspx">About Us</a></li>
		</ul>
	</nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BannerContent" runat="server">
    <section id="banner">
		<header>
			<h2>Ja's brewed happiness in a cup!</h2>
		</header>
	</section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
