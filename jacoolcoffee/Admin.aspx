<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="jacoolcoffee.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NavContent" runat="server">
    <nav id="nav">
		<ul>
			<li class="current"><a href="Menu.aspx">Home</a></li>
			<li><a id="logoutLink" runat="server" href="#" OnServerClick="logout">Logout</a></li>
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
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" Text='<%# GetStatusText(Eval("status")) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="box3">
            <br />
            <div class="form-group horizontal-align">
                <asp:TextBox CssClass="admin-txt-id form-control" type="text" runat="server" name="getId" id="getId" placeholder="Enter No."></asp:TextBox>
                <asp:Button ID="btnGet" runat="server" Text="Get Data" class="btn btn-primary" OnClick="btnGet_Click"/>
            </div>
            <div class="form-master">
                <div class="form-group horizontal-align">
                    <asp:TextBox CssClass="form-control" type="text" runat="server" name="dataname" id="dataname" placeholder="Name" Enabled="False"></asp:TextBox>
                    <asp:TextBox CssClass="form-control" type="text" runat="server" name="dataemail" id="dataemail" placeholder="Email" Enabled="False"></asp:TextBox>
                    <asp:TextBox CssClass="form-control" type="text" runat="server" name="datacontactnum" id="datacontactnum" placeholder="Contact Number" Enabled="False"></asp:TextBox>
                </div>
                <div class="form-group horizontal-align">
                    <asp:TextBox CssClass="form-control" type="text" runat="server" name="datalocation" id="datalocation" placeholder="Location" Enabled="False"></asp:TextBox>
                    <asp:TextBox CssClass="form-control" type="text" runat="server" name="datasize" id="datasize" placeholder="Size" Enabled="False"></asp:TextBox>
                    <asp:DropDownList ID="StatusList" CssClass="form-control" runat="server">
                        <asp:ListItem Text="Pending" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Processing" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Settled" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn btn-primary" OnClick="btnUpdate_Click"/>
                </div>
            </div>
        </div>
    </section>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [name], [email], [contact_num], [location], [size], [status] FROM [FRANCHISE]"></asp:SqlDataSource>
</asp:Content>
