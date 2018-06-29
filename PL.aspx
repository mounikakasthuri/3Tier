<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PL.aspx.cs" Inherits="PL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>
                id :-
            </td>
            <td>
                <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                usermame :-
            </td>
            <td>
                <asp:TextBox ID="txtusermame" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                password :-
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr><td>
            Gender
            </td>
            <td>
                <asp:RadioButton ID="rdbtnF" runat="server" Text="F" />
            </td>
            <td>
                <asp:RadioButton ID="rdbtnM" runat="server" Text="M" />
            </td>
        </tr>
         <tr>
            <td>
                <asp:Button ID="btninsert" runat="server" Text="Insert" OnClick="btninsert_Click" />
            </td>
            <td>
                 <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
            </td>
             <td>
                  <asp:Button ID="btndelete" runat="server" Text="Deletet" OnClick="btndelete_Click" />
            </td>
        </tr>
    </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" />
                <asp:BoundField DataField="usermame" HeaderText="usermame" />
                <asp:BoundField DataField="password" HeaderText="password" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
