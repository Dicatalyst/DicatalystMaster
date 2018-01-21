<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="Investigations.aspx.cs" Inherits="patient_Investigations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="col-lg-12 col-xs-12">
      
        <div class="box box-primary" style="border-color: #3c8dbc">
            <div class="box-header with-border">
                <h3 class="box-title"> Investigations </h3>
              

            </div>
            <!-- /.box-header -->
           
    <div class="box-body">

       

        <div class="table-responsive no-padding">


            <asp:GridView ID="gdInvestigation" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdInvestigation_RowCommand">
                <Columns>
                    <asp:TemplateField Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="investigationName" HeaderText="Investigation Name" />
                    <asp:BoundField DataField="fullName" HeaderText="Recommended By (Doctor)" />
                    <asp:BoundField DataField="datetime" HeaderText="DateTime" />
                    <%--<asp:TemplateField>
                        <ItemTemplate>

                            <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                            <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" ValidationGroup="tpn" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                </Columns>


            </asp:GridView>

        </div>


      

        
    </div>
    
            
        </div>
    </div>

</asp:Content>

