<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EntityFrameworkPractice1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family:Arial">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="EntityDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Name1" HeaderText="Name1" SortExpression="Name1" />
                    <asp:BoundField DataField="Location1" HeaderText="Location1" SortExpression="Location1" />
                    <asp:TemplateField HeaderText="EmployeeTables">
                        <ItemTemplate>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSource='<%# Eval("EmployeeTables") %>'>
                                <Columns>
                                    <asp:BoundField DataField="FirstName1" HeaderText="First Name1" />
                                    <asp:BoundField DataField="LastName1" HeaderText="Last Name1" />
                                    <asp:BoundField DataField="Gender1" HeaderText="Gender1" />
                                    <asp:BoundField DataField="Salary1" HeaderText="Salary1" />
                                </Columns>
                            </asp:GridView>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=EmployeeModel1Container" DefaultContainerName="EmployeeModel1Container" EnableFlattening="False" EntitySetName="DepartmenTables" Include="EmployeeTables"></asp:EntityDataSource>

        </div>
    </form>
</body>
</html>
