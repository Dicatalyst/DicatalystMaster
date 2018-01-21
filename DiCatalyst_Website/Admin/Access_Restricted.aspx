<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Access_Restricted.aspx.cs" Inherits="Admin_Access_Restricted" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="row">


        <div class="col-lg-12">

            <!-- Main content -->



            <h2 class="headline text-red"><i class="fa fa-warning text-red"></i>Sorry! You Dont Have Access To This Page</h2>

            <div class="error-content">
              

           
                    <div class="input-group">
                     <h3> You have access to the following pages and features only.  If you need any other access please <asp:LinkButton ID="lnkContactAdmin" runat="server">click here</asp:LinkButton>  to contact administrator.
</h3> 
                    </div>
                    <!-- /.input-group -->
                <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover" runat="server"></asp:GridView>
            
            </div>

            <!-- /.error-page -->
        </div>

        <!-- /.content -->

    </div>



</asp:Content>

