    <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="jacoolcoffee.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NavContent" runat="server">
    <nav id="nav">
		<ul>
			<li><a href="Menu.aspx">Menu</a></li>
			<li><a href="Products.aspx">Products</a></li>
            <li class="current"><a href="AboutUs.aspx">About Us</a></li>
		</ul>
	</nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BannerContent" runat="server">
    <section id="banner">
		<header>
			<h2 style="width:500px;">Fuel your passion with our brews – become one of us and spread the aroma of success, one cup at a time!</h2>
		</header>
	</section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main">
        <div class="box2">
            <h3 style="text-align:center; font-size:50px; margin:20px;">Franchising Inquiry</h3>
            <br />
            <div class="form-franchise">
                <asp:Label ID="Label1" runat="server" Text="Name of Applicant" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox CssClass="franchise-form" type="text" runat="server" name="fname" class="form-style" placeholder="Name of Applicant" id="fname"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Email" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox CssClass="franchise-form" type="text" runat="server" name="femail" class="form-style" placeholder="Your Email" id="femail"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="Contact Number" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox CssClass="franchise-form" type="text" runat="server" name="fcontact" class="form-style" placeholder="Contact Number" id="fcontact"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Text="Proposed Location" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox CssClass="franchise-form" type="text" runat="server" name="flocation" class="form-style" placeholder="Proposed Location" id="flocation"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" Text="Size in sqm?" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:TextBox CssClass="franchise-form" type="text" runat="server" name="fsize" class="form-style" placeholder="Size in sqm" id="fsize"></asp:TextBox>
                <div class="center">
                    <asp:Button CssClass="fbtn center" ID="btnFranch" runat="server" Text="Submit" class="btn mt-4" OnClick="btnFranch_Click"/>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
