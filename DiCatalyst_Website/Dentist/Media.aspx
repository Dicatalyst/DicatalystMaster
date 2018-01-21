<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="Media.aspx.cs" Inherits="Dentist_Media" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style>
        .patientViewButtons td {

            padding: 3px;
        }

    </style>
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-lg-12 col-xs-12">
        <!-- small box -->


        
            <div class="box box-default" style="border-color: #e08e0b">
                <div class="box-header with-border">
                    <h3 class="box-title">Media & Medical Reports</h3>

                </div>
                
                

                <div class="box-body" >

                    <div class="row">

                        <div class="col-lg-12">

                            <div class="col-lg-4">
                                <div class="form-group">
                                    <b>Title</b>

                                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>
                                    
                                    <div class="form-group has-error">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="md" ErrorMessage="Enter Title" ControlToValidate="txtTitle" class="error-message"></asp:RequiredFieldValidator>

                                    </div>

                                </div>
                            
                                <div class="form-group">
                                    <b>Reference Link </b>

                                    <asp:TextBox ID="txtReferenceLink" runat="server" CssClass="form-control"></asp:TextBox>
                                    
                                    <div class="form-group has-error">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="md" ErrorMessage="Enter Reference Link" ControlToValidate="txtReferenceLink" class="error-message"></asp:RequiredFieldValidator>

                                    </div>

                                </div>
                            
                                <div class="form-group">
                                    <b>Published On</b>

                                    <asp:TextBox ID="txtPublishedOn" runat="server" CssClass="form-control"></asp:TextBox>
                                    
                                    <div class="form-group has-error">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="md" ErrorMessage="Enter Published On(Date)" ControlToValidate="txtPublishedOn" class="error-message"></asp:RequiredFieldValidator>

                                    </div>

                                </div>
                            

                            </div>

                            <div class="col-lg-4">
                            
                                
                                <div class="form-group">
                                    <b>Description</b>

                                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>
                                
                                
                                <div class="form-group">
                                    <b>Author</b>

                                    <asp:TextBox ID="txtAuthor" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>
                                
                                <div class="form-group">
                                    <b>Published In</b>

                                    <asp:TextBox ID="txtPublishedIn" runat="server" CssClass="form-control"></asp:TextBox>
                                    
                                    <div class="form-group has-error">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="md" ErrorMessage="Enter Published In" ControlToValidate="txtPublishedIn" class="error-message"></asp:RequiredFieldValidator>

                                    </div>

                                </div>
                            

                            </div>

                            <div class="col-lg-4">
                            
                                <div class="form-group">
                                    <b>Upload Video (Link)</b>

                                    <asp:TextBox ID="txtVideo" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>
                            
                                <div class="form-group">
                                    <b>File Upload </b>

                                    <asp:FileUpload ID="uploadFile" runat="server" />

                                </div>

                                
                                
                               
                            
                            


                            </div>

                        </div>
                    
                    
                   
                    </div>
                
                    <div class="pull-right">
                        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-info" OnClick="Button1_Click" ValidationGroup="md" />
                    </div>




                </div>
                
            <div class="box-body" >

                <div class="table-responsive">
                    
                    
                    <table id="example1" class="table table-bordered table-striped ">
                        <thead>
                        <tr>
                            <th>Title</th>
                            <th>Upload File </th>
                            <th>Video</th>
                            <th>Reference </th>
                            <th>Description</th>
                            <th>Author</th>
                            <th>PublishOn </th>
                            <th>PublishIn </th>
                            <th>Date Time</th>
                            <th>Is Active</th>
                            <th>Controls</th>
                        </tr>
                        </thead>
                        <tbody>
                    
                        

                        <asp:Repeater ID="DataList1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("title") %></td>
                                    <td><%#Eval("uploadFile") %></td>
                                    <td><%#Eval("video") %></td>
                                    <td><%#Eval("reference") %></td>
                                    <td><%#Eval("description") %></td>
                                    <td><%#Eval("author") %></td>
                                    <td><%#Eval("publishOn") %></td>
                                    <td><%#Eval("publishIn") %></td>
                                    <td><%#Eval("dateTime") %></td>
                                    <td><%#Eval("isActive") %></td>

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
                            <th>Title</th>
                            <th>Upload File </th>
                            <th>Video</th>
                            <th>Reference </th>
                            <th>Description</th>
                            <th>Author</th>
                            <th>PublishOn </th>
                            <th>PublishIn </th>
                            <th>Date Time</th>
                            <th>Is Active</th>
                            <th>Controls</th>
                        </tr>
                        </tfoot>
                    </table>
                    

                    
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