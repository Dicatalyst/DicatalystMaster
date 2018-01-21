<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Specialities.aspx.cs" Inherits="Admin.Admin_Specialities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .modal-dialog2 {
            margin: 30px auto;
            width: 50%;
        }

        .modal-dialog1 {
            margin: 30px auto;
            width: 50%;
        }

       
        .patientViewButtons td {
            padding: 3px;
        }
    </style>
  


    <%-- For Validation--%>


    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>


   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="col-lg-12 col-xs-12">
        
            <div class="box box-default" style="border-color: #1e282c;">
                <div class="box-header with-border">
                    <h3 class="box-title">Specialities</h3>

                    <button type="button" class="btn btn-info pull-right" onclick="open_container1();" style="background-color: #3ae3f5; border-color: #3ae3f5;">Add Speciality</button>
                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                    <div class="box-body table-responsive no-padding">
                        
                        
                        
                        
                        <table id="example1" class="table table-bordered table-striped ">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Description</th>
                                <th>Keywords</th>
                               
                                <th>Controls</th>
                            </tr>
                            </thead>
                            <tbody>
                    
                        

                            <asp:Repeater ID="DataList1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("name") %></td>
                                        <td><%#Eval("description") %></td>
                                        <td><%#Eval("keywords") %></td>
                                       
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
                                <th>Name</th>
                                <th>Description</th>
                                <th>Keywords</th>
                               
                                <th>Controls</th>
                            </tr>
                            </tfoot>
                        </table>
                        
                        
                        
                        
                        

                        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                                <asp:BoundField DataField="name" HeaderText="Name"/>
                                <asp:BoundField DataField="description" HeaderText="Description"/>
                                <asp:BoundField DataField="keywords" HeaderText="Keywords"/>

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

    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog2 ">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel"></h4>
                </div>
                <div class="modal-body" id="modal-bodyku">


                    <div class="box box-primary" style="border-color: #1e282c;">
                        <div class="box-header with-border">
                            <h3 class="box-title">Specialization</h3>


                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-lg-12">

                                    <div class="col-lg-6">
                                        <div class="form-group">

                                            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                            <asp:TextBox ID="txtName" Text="Oncologist" CssClass="form-control" runat="server"></asp:TextBox>

                                            <div class="form-group has-error">

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="txtName" class="error-message"></asp:RequiredFieldValidator>


                                            </div>


                                        </div>

                                        <div class="form-group">

                                            <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                                            <asp:TextBox ID="txtDescription" Text="Oncologists focus on the treatment and prevention of cancer in terminal and at-risk patients. They offer such treatments as examination and diagnosis of cancerous illnesses, chemotherapy and radiotherapy to destroy cancer cells in the body, and follow-up with survivors after treatment successes." Rows="2" cols="50" Style="width: 100%" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>

                                            <div class="form-group has-error">

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Description" ControlToValidate="txtDescription" class="error-message"></asp:RequiredFieldValidator>


                                            </div>


                                        </div>
                                        <div class="form-group">

                                            <asp:Label ID="Label3" runat="server" Text="Keywords"></asp:Label>
                                            <asp:TextBox ID="txtKeywords" Text="Keyword1" CssClass="form-control" runat="server"></asp:TextBox>

                                            <div class="form-group has-error">

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Keyword" ControlToValidate="txtKeywords" class="error-message"></asp:RequiredFieldValidator>


                                            </div>

                                        </div>


                                    </div>


                                </div>

                            </div>


                            <div class="pull-right">

                                <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-info" Style="background-color: #3ae3f5; border-color: #3ae3f5;" OnClick="Button1_Click"/>

                            </div>

                        </div>


                    </div>


                </div>

            </div>
            <!-- /. box -->
        </div>
        <!-- /.col -->


    </div>


    <script>
        function open_container1() {

            $('#myModal1').modal('show');

        }

    </script>


    <!-- For Validation -->


    <script src="../validation/js/scrupulous.js"></script>


    <script>
        $(function() {
            $('.validate-form').scrupulous();
            $('.callback-form').scrupulous({
                valid: function() {
                    alert('Valid Callback - Submit the Form');
                    return true;
                },
                invalid: function() {
                    alert('Invalid Callback -  Stop the Form');
                    return false;
                }
            });

            $('#toggle-disabled').on('change',
                function() {
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