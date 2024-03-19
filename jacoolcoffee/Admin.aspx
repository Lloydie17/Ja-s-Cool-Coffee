<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="jacoolcoffee.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NavContent" runat="server">
    <nav id="nav">
		<ul>
			<li><a href="Menu.aspx">Home</a></li>
			<li class="current"><a href="Products.aspx">Products</a></li>
		</ul>
	</nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BannerContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main">
        <div class="box3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="No." SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="contact_num" HeaderText="Contact Number" SortExpression="contact_num" />
                    <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location" />
                    <asp:BoundField DataField="size" HeaderText="Size" SortExpression="size" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                </Columns>
            </asp:GridView>
            <br />
            <div class="form-group horizontal-align">
                <asp:TextBox CssClass="admin-txt-id form-control" type="text" runat="server" name="getId" id="getId" placeholder="Enter No."></asp:TextBox>
                <asp:Button ID="btnGet" runat="server" Text="Get Data" class="btn btn-primary" OnClick="btnGet_Click"/>
            </div>
            <div class="form-master">
                <div class="form-group horizontal-align">
                    <asp:TextBox CssClass="form-control" type="text" runat="server" name="getId" id="TextBox1" placeholder="Name"></asp:TextBox>
                    <asp:TextBox CssClass="form-control" type="text" runat="server" name="getId" id="TextBox2" placeholder="Email"></asp:TextBox>
                    <asp:TextBox CssClass="form-control" type="text" runat="server" name="getId" id="TextBox3" placeholder="Contact Number"></asp:TextBox>
                </div>
                <div class="form-group horizontal-align">
                    <asp:TextBox CssClass="form-control" type="text" runat="server" name="getId" id="TextBox4" placeholder="Location"></asp:TextBox>
                    <asp:TextBox CssClass="form-control" type="text" runat="server" name="getId" id="TextBox5" placeholder="Size"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                        <asp:ListItem Text="Pending" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Processing" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Settled" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
    </section>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [name], [email], [contact_num], [location], [size], [status] FROM [FRANCHISE]"></asp:SqlDataSource>
</asp:Content>
