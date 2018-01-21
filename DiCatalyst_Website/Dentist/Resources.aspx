<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="Resources.aspx.cs" Inherits="Dentist_Resources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>

        .patientViewButtons td {
            padding: 3px;
        }
    </style>
    <%-- For Validation--%>
       <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>


    <link href="validation/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="validation/css/main.css" rel="stylesheet"/>
    <link href="validation/css/scrupulous.css" rel="stylesheet"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="col-lg-12 col-xs-12">

        <div class="box box-primary" style="border-color: #3c8dbc">
            <div class="box-header with-border">
                <h3 class="box-title">Resources </h3>


            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">

                <div class="row">

                    <div class="col-lg-12">

                        <div class="col-lg-4">
                            <div class="form-group">
                                <b>Specialization</b>

                                <asp:DropDownList ID="ddlSpecialization" runat="server" CssClass="form-control" ></asp:DropDownList>
                                
                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" InitialValue="0" ValidationGroup="rs" ErrorMessage="Enter Specialization" ControlToValidate="ddlSpecialization" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>
                            
                            <div class="form-group">
                                <b>Contact No</b>

                                <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox>
                                
                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="rs" ErrorMessage="Enter Contact No." ControlToValidate="txtContact" class="error-message"></asp:RequiredFieldValidator>
                                    
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationGroup="rs" ErrorMessage="Enter Valid Contact Number" ControlToValidate="txtContact" ValidationExpression="[0-9]{10}" class="error-message"></asp:RegularExpressionValidator>
                                </div>

                            </div>
                            
                            <div class="form-group">
                                <b>Reference Link</b>

                                <asp:TextBox ID="txtLink" runat="server" CssClass="form-control"></asp:TextBox>

                            </div>
                            

                        </div>

                        <div class="col-lg-4">
                            
                            <div class="form-group">
                              <b>Resource Title</b>

                                <asp:TextBox ID="txtRTitle" runat="server" CssClass="form-control"></asp:TextBox>
                                
                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="rs" ErrorMessage="Enter Resource Title" ControlToValidate="txtRTitle" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>
                            
                            
                            <div class="form-group">
                                <b>Author</b>

                                <asp:TextBox ID="txtAuthor" runat="server" CssClass="form-control"></asp:TextBox>
                                
                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="rs" ErrorMessage="Enter Author" ControlToValidate="txtAuthor" class="error-message"></asp:RequiredFieldValidator>

                                </div>

                            </div>
                            <div class="form-group">
                                <b>Description</b>

                                <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"></asp:TextBox>

                            </div>
                            

                        </div>

                        <div class="col-lg-4">
                            
                            <div class="form-group">
                                <b>Email</b>

                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                
                                <div class="form-group has-error">

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="rs" ErrorMessage="Enter Email" ControlToValidate="txtEmail" class="error-message"></asp:RequiredFieldValidator>
                                    
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="rs" ErrorMessage="Enter Valid Email" ControlToValidate="txtEmail" class="error-message" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                </div>

                            </div>
                            
                            <div class="form-group">
                                <b>File Upload</b>

                              <asp:FileUpload ID="fileUpload" runat="server" />

                            </div>
                            


                        </div>

                    </div>
                    
                    
                   
                </div>
                
                <div class="pull-right">
                    <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-info" OnClick="Button1_Click" ValidationGroup="rs" />
                </div>
                
                
                <br/><br/>
                

            
                
            <div class="box-body table-responsive ">
                    
                    
                    
                <table id="example1" class="table table-bordered table-striped ">
                    <thead>
                    <tr>
                        <th>Specialization</th>
                        <th>Resource Title</th>
                        <th>Email</th>
                        <th>Contact No</th>
                        <th>Author</th>
                        <th>FileUpload</th>
                        <th>Reference Link</th>

                        <th>DateTime</th>
                        <th>IsActive</th>
                        <th>Description</th>
                            
                               
                        <th>Controls</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                        

                    <asp:Repeater ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                <td id="special" runat="server"><%#Eval("specialization") %></td>
                                <td id="title" runat="server"><%#Eval("resourceTitle") %></td>
                                <td id="email" runat="server"><%#Eval("email") %></td>
                                <td id="contact" runat="server"><%#Eval("contactNo") %></td>
                                <td id="author" runat="server"><%#Eval("Author") %></td>
                                <td id="fup" runat="server"><%#Eval("fileUpload") %></td>
                                <td id="refLink" runat="server"><%#Eval("referenceLink") %></td>
                                <td id="dt" runat="server"><%#Eval("dateTime") %></td>
                                <td id="isActive" runat="server"><%#Eval("isActive") %></td>
                                <td id="desc" runat="server"><%#Eval("description") %></td>
                                <td id="uniqueId" runat="server" visible="false"><%#Eval("uniqueRandomId") %></td>
                             
                                <td><table class="Buttons">
                                    <tr>
                                       
                                        <td>
                                            <asp:LinkButton ID="lnkEdit" data-tooltip="Edit" runat="server" class="btn btnedit btn-warning" CommandName="update">
                                                <i class="fa fa-edit"></i></asp:LinkButton></td>
                                        <td>
                                            <asp:LinkButton ID="lnkDelete" runat="server" data-tooltip="Delete" class="btn btnedit btn-danger" CommandName="delete" OnClientClick="return confirm('Are you sure you want to delete this user?')">
                                                <i class="fa fa-trash-o"></asp:LinkButton></td>
                                    </tr>
                                </table></td>
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>
                    </tbody>
                   <%-- <tfoot>
                    <tr>
                        <th>Specialization</th>
                        <th>Resource Title</th>
                        <th>Email</th>
                        <th>Contact No</th>
                        <th>Author</th>
                        <th>FileUpload</th>
                        <th>Reference Link</th>

                        <th>DateTime</th>
                        <th>IsActive</th>
                        <th>Description</th>
                            
                               
                        <th>Controls</th>
                    </tr>
                    </tfoot>--%>
                </table>
                    

                    

                <%--<asp:GridView ID="gdBankAccount" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdBankAccount_RowCommand">

                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:BoundField DataField="bankName" HeaderText="Bank Name"/>
                            <asp:BoundField DataField="accountNo" HeaderText="Account No"/>

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
    
    <div class="PopUp" id="divPopUp" runat="server" clientidmode="Static" style="display:none;">
    <div class="popClick">
    </div>
    <div class="form" style="position: absolute; left: 50%; top: 50%; width: 32%;
        margin: -105px 0 0 -230px; z-index: 999999999999; background-color: #9c9a9a; padding: 30px;">
        <div runat="server" id="divAleRt">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </div>
        <br />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="btnOk" runat="server" Text="Ok" class="btn btn-info" OnClick="btnOk_Click" />
        <div class="clear">
        </div>
    </div>
</div>
<!-- popup end -->
    
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

