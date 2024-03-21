<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="jacoolcoffee.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NavContent" runat="server">
    <nav id="nav">
		<ul>
			<li><a href="Menu.aspx">Menu</a></li>
			<li class="current"><a href="Products.aspx">Products</a></li>
            <li><a href="AboutUs.aspx">Franchising</a></li>
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
    <section id="main">
        <div class="box">
			<img class="prod-image" src="Images/Froccino-cookies.jpg" alt="" /> 
			<header>
				<h3><a href="Products.aspx">Froccino Cookies n' Cream</a></h3>
			</header>
			<p>Blended Coffee with Oreo Cookies and Whipped Cream</p>
            <div class="fback-section">
                <ul>
                    <li><asp:TextBox CssClass="fback-name uppercase" type="text" runat="server" name="fbackName" class="form-style" placeholder="Your Name (Optional)" id="fbackName"></asp:TextBox></li>
                    <li><asp:TextBox CssClass="fback-text uppercase" type="text" runat="server" name="fback" class="form-style" placeholder="Give me feedback!" id="fback"></asp:TextBox></li>
                    <li><asp:DropDownList ID="fbackrate" class="fback-rate" runat="server">
                        <asp:ListItem Selected="True">RATE ME!</asp:ListItem>
                        <asp:ListItem class="star-rate" Value="★"></asp:ListItem>
                        <asp:ListItem class="star-rate" Value="★★"></asp:ListItem>
                        <asp:ListItem class="star-rate" Value="★★★"></asp:ListItem>
                        <asp:ListItem class="star-rate" Value="★★★★"></asp:ListItem>
                        <asp:ListItem class="star-rate" Value="★★★★★"></asp:ListItem>
                        </asp:DropDownList>
                    </li>
                    <li><asp:Button CssClass="fback-btn" ID="btnFback" runat="server" Text="Submit" class="btn mt-4" OnClick="btnFback_Click"/></li>
                </ul>
                <br /><br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="FBACKID" SortExpression="FBACKID" InsertVisible="False" ReadOnly="True" HeaderText="FBACKID" />
                        <asp:BoundField DataField="FBACKCOMMENT" HeaderText="FBACKCOMMENT" SortExpression="FBACKCOMMENT" />
                        <asp:BoundField DataField="FBACKRATE" HeaderText="FBACKRATE" SortExpression="FBACKRATE" >
                        <ItemStyle ForeColor="#FFCC00" />
                        </asp:BoundField>
                        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FBACKID], [FBACKCOMMENT], [FBACKRATE], [NAME] FROM [FEEDBACK]"></asp:SqlDataSource>
            </div>
        </div>
    </section>
</asp:Content>
