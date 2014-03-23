<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewDetailviewRecipes.aspx.vb" Inherits="DetailviewRecipes" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        &nbsp;&nbsp;&nbsp;&nbsp;    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Recipes Table %>" DeleteCommand="DELETE FROM [Table] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [Table] ([recipeName], [submitby], [ing#1], [ing#2], [ing#3], [ing#4], [ing#5], [preparation], [notes]) VALUES (@recipeName, @submitby, @column1, @column2, @column3, @column4, @column5, @preparation, @notes)" SelectCommand="SELECT * FROM [Table] WHERE ([recipeID] = @recipeID)" UpdateCommand="UPDATE [Table] SET [recipeName] = @recipeName, [submitby] = @submitby, [ing#1] = @column1, [ing#2] = @column2, [ing#3] = @column3, [ing#4] = @column4, [ing#5] = @column5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submitby" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submitby" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" Height="50px" Width="301px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="recipeName" HeaderText="Recipe Name " SortExpression="recipeName">
                <FooterStyle HorizontalAlign="Right" />
                <HeaderStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="submitby" HeaderText="Submitted By" SortExpression="submitby">
                <HeaderStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="ing#1" HeaderText="Ingredient #1" SortExpression="ing#1">
                <FooterStyle HorizontalAlign="Right" />
                <HeaderStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="ing#2" HeaderText="Ingredient #2" SortExpression="ing#2">
                <HeaderStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="ing#3" HeaderText="Ingredient #3" SortExpression="ing#3">
                <HeaderStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="ing#4" HeaderText="Ingredient #4" SortExpression="ing#4">
                <FooterStyle HorizontalAlign="Right" />
                <HeaderStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="ing#5" HeaderText="Ingredient #5" SortExpression="ing#5">
                <HeaderStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="preparation" HeaderText="Preparation " SortExpression="preparation">
                <HeaderStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="notes" HeaderText="Notes " SortExpression="notes">
                <HeaderStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:CommandField ButtonType="Button" ShowInsertButton="True">
                <FooterStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Fields>
        </asp:DetailsView>
    
  </asp:Content>
    