<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="addMedicineType.aspx.cs" Inherits="Admin_addMedicineType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <%-- For Validation--%>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>

   <style>
       
       .patientViewButtons td {
           padding: 3px;
       }

   </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="col-lg-12 col-xs-12">
        
        <div class="box box-primary" style="border-color: #3c8dbc">
            <div class="box-header with-border">
                <h3 class="box-title"> Medicine Type </h3>

                <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-info pull-right" ValidationGroup="medicine" OnClick="Button1_Click" />
                 
            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">
              
                <div class="row">
                    
                    <div class="col-lg-3">
                        
                        <div class="form-group ">
                            
                            <b>Medicine Type </b>
                            
                            <asp:TextBox ID="txtMedicineType" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Medicine Type" ControlToValidate="txtMedicineType" ValidationGroup="medicine" class="error-message"></asp:RequiredFieldValidator>
                        </div>

                    </div>
                    
                    <div class="col-lg-3">
                        
                        <div class="form-group">
                            
                            <b>Dose</b>
                           
                            <asp:TextBox ID="txtDose" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Dose (MG/ML)" ControlToValidate="txtDose" ValidationGroup="medicine" class="error-message"></asp:RequiredFieldValidator>
                        </div>
                            

                    </div>

                    


                </div>
                
                <div class="table-responsive no-padding">
                    
                    
                    
                    
                    
                    
                    <table id="example1" class="table table-bordered table-striped ">
                        <thead>
                        <tr>
                            <th>Medicine Type Name</th>
                            <th>Dose</th>
                            
                            <th>Controls</th>
                        </tr>
                        </thead>
                        <tbody>
                    
                        

                        <asp:Repeater ID="DataList1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("medicineTypeName") %></td>
                                    <td><%#Eval("dose") %></td>
                                    
                                    <td><table class="patientViewButtons">
                                        <tr>
                                       
                                            <td>
                                                <asp:LinkButton ID="lnkEdit" data-tooltip="Edit" runat="server" class="btn btnedit btn-warning">
                                                    <i class="fa fa-edit"></i></asp:LinkButton></td>
                                            <td>
                                                <asp:LinkButton ID="lnkDelete" runat="server" data-tooltip="Delete" class="btn btnedit btn-danger">
                                                    <i class="fa fa-trash-o"></asp:LinkButton></td>
                                        </tr>
                                    </table></td>
                                </tr>
                            </ItemTemplate>

                        </asp:Repeater>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th>Medicine Type Name</th>
                            <th>Dose</th>
                            
                            <th>Controls</th>
                        </tr>
                        </tfoot>
                    </table>
                    
                    

                    <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand" >
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:BoundField DataField="medicineTypeName" HeaderText="MedicineType"/>
                            <asp:BoundField DataField="dose" HeaderText="Dose"/>

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>--%>

                </div>
                

            </div>
            
           


        </div>
    </div>
   
    
    <!-- For Validation -->


    <script src="../validation/js/scrupulous.js"></script>

    <script>
        $(function () {
            $('.validate-form').scrupulous();
            $('.callback-form').scrupulous({
                valid: function () {
                    alert('Valid Callback - Submit the Form');
                    return true;
                },
                invalid: function () {
                    alert('Invalid Callback -  Stop the Form');
                    return false;
                }
            });

            $('#toggle-disabled').on('change',
                function () {
                    if ($(this).is(':checked')) {
                        $('#disabled-input').removeAttr('disabled');
                    } else {
                        $('#disabled-input').attr('disabled', true);
                    }
                });

        });
    </script>
    <script src="../design/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <link href="../validation/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../validation/css/main.css" rel="stylesheet"/>
    <link href="../validation/css/scrupulous.css" rel="stylesheet"/>
    <link href="../design/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" />


    <script>

        $(function () {
            $("#example1").DataTable();
        });
    </script>

</asp:Content>

