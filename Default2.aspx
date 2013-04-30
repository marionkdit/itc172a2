<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Time to double check!</h2>
    <p>We just want to make sure that your info is correct.  Please read it carefully and then click confirm.</p>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblBirthday" runat="server" Text="Birthday:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>
            </td>
            <td>
                <!--required field validator assigned to txtBirthday input-->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtBirthday" runat="server" ErrorMessage="Birthday is a required field!"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                 <!--required field validator assigned to txtEmail input-->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtEmail" runat="server" ErrorMessage="Email is a required field!"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3">
                <!--submit button-->
                <asp:Button ID="btnSumbit" runat="server" Text="Confirm" OnClick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

