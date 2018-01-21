<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="odontogram.aspx.cs" Inherits="Admin_odontogram" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div class="col-lg-12">
   
    <div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title">Odontogram
          
        </h3>
    </div>
    <!-- /.box-header -->
    <!-- form start -->

    <div class="box-body">
    <div class="row">
    <div class="col-lg-6">

        <b>  Dental Examination</b>
        
        
        <asp:TextBox ID="txtDentalExamName" runat="server" CssClass="form-control" placeholder="Enter Dental Exam Name"></asp:TextBox>

    

    <div class="form-group has-error">

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Dental Exam Name" ControlToValidate="txtDentalExamName" class="error-message" ValidationGroup="od"></asp:RequiredFieldValidator>


    </div>
        
        
        
        <asp:Button ID="btnDentalExamName" runat="server" Text="Save" CssClass="btn btn-info pull-right" OnClick="btnDentalExamName_Click" ValidationGroup="od"/>
        
        

        <asp:GridView ID="gdDentalExaminationName" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdDentalExaminationName_RowCommand">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:BoundField DataField="dentalExaminationName" HeaderText="Dental Examination Name"/>
                
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>

        
        </div>
        
        
        <div class="col-lg-6">

        <b>Dental Examination Elements </b>

    <asp:DropDownList ID="ddlDentalExamName" runat="server" CssClass="form-control" AutoPostBack="True" >
        <asp:ListItem>Select Dental Exam Element</asp:ListItem>
    </asp:DropDownList>

    <div class="form-group has-error">

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select Dental Exam Name" ControlToValidate="ddlDentalExamName" class="error-message" ValidationGroup="de"></asp:RequiredFieldValidator>


    </div>
         
        <asp:TextBox ID="txtDentalExamElement" runat="server" CssClass="form-control" placeholder="Enter Dental Exam Element"></asp:TextBox>

    

        <div class="form-group has-error">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Dental Exam Element" ControlToValidate="txtDentalExamElement" class="error-message" ValidationGroup="de"></asp:RequiredFieldValidator>


        </div>
        <asp:Button ID="btnSaveDentalElement" runat="server" Text="Save" CssClass="btn btn-info pull-right" OnClick="btnSaveDentalElement_Click" ValidationGroup="de"/>


        <asp:GridView ID="gdDentalExamElement" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdDentalExamElement_RowCommand">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                        

                    </ItemTemplate>
                </asp:TemplateField>


                <asp:BoundField DataField="dentalExaminationName" HeaderText="Dental Exam Name"/>

                <asp:BoundField DataField="dentalExamElement" HeaderText="Dental Exam Element "/>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>" >Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>

      
        </div>
        </div>
        </div>
        </div>
        </div>
        
       

    
</asp:Content>

