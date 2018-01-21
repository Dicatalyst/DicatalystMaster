<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="AddressBook.aspx.cs" Inherits="Dentist_AddressBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .nav-tabs-custom > .nav-tabs > li.active { border-top-color: #3ae3f5 !important; }
    
        .Buttons td {
            padding: 3px;
        }
    </style>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>
  
    
      <%-- For Validation--%>

    

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


<div class="col-lg-12 col-xs-12">



<!-- /.box-header -->
<div class="box-body" style="display: block;">


<div class="box box-primary" style="border-color: #3ae3f5">
<div class="box-header with-border">
    <h3 class="box-title">Address Book</h3>


</div>
<!-- /.box-header -->
<div class="box-body">
<div class="row">


<div class="col-lg-12">


<div class="nav-tabs-custom">
<ul class="nav nav-tabs">
    <li class="active">
        <a href="#Contacts" data-toggle="tab" aria-expanded="true">Contacts</a>
    </li>
    <li class="">
        <a href="#FrequentlyContacted" data-toggle="tab" aria-expanded="true">Frequently Contacted</a>
    </li>

</ul>
<div class="tab-content">
<div class="active tab-pane" id="Contacts">

<div class="box box-default" style="border-color: #3ae3f5">
<div class="box-header with-border">
    <h3 class="box-title">Contacts</h3>


</div>
<!-- /.box-header -->
<div class="box-body" style="display: block;">

<div class="row">
<div class="col-lg-12">

<div class="row">
    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">
              <b>Name :</b>


            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtFullName" runat="server" class="form-control" placeholder="Name"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="Group21" ErrorMessage="Enter Name" ControlToValidate="txtFullName" class="error-message"></asp:RequiredFieldValidator>

                </div>

            </div>
        </div>
    </div>


    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">
               <b>Occupation:</b>


            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtOccupation" runat="server" class="form-control" placeholder="Occupation"></asp:TextBox>


            </div>
        </div>
    </div>

</div>

<div class="row">


    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">
                <b>Date of Birth:</b>


            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtDateOfBirth" runat="server" class="form-control" placeholder="Date of Birth"></asp:TextBox>


            </div>
        </div>
    </div>


    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">
               <b>Organization :</b>


            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtOrganization" runat="server" class="form-control" placeholder="Organization"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="Group21" ErrorMessage="Enter Organization Details" ControlToValidate="txtOrganization" class="error-message"></asp:RequiredFieldValidator>

                </div>


            </div>
        </div>
    </div>

</div>

<div class="row">
    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">
                <b>Mobile No. :</b>

            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtMobile" runat="server" class="form-control" placeholder="Mobile No."></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="Group21" ErrorMessage="Enter Mobile No." ControlToValidate="txtMobile" class="error-message"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="Group21" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtMobile" class="error-message"></asp:RegularExpressionValidator>

                </div>

            </div>
        </div>
    </div>


    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">
                <b>Work Address:</b>


            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtWorkAddress" TextMode="multiline" runat="server" class="form-control" placeholder="Work Address"/>

            </div>
        </div>
    </div>
</div>


<div class="row">

    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">
               <b>Address(Res) :</b>

            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtAddress" TextMode="multiline" runat="server" class="form-control" placeholder="Address"/>
            </div>
        </div>


    </div>


    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">
               <b>Work Phone  :</b>

            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtWorkPhone" runat="server" class="form-control" placeholder="Work Phone"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Group21" runat="server" ErrorMessage="Enter Work Phone No." ControlToValidate="txtWorkPhone" class="error-message"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="Group21" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtWorkPhone" class="error-message"></asp:RegularExpressionValidator>

                </div>
            </div>
        </div>
    </div>

</div>


<div class="row">


    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">
               <b>Email :</b>

            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtEmailId" runat="server" class="form-control" placeholder="Email"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group21" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmailId" class="error-message"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationGroup="Group21" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtEmailId" class="error-message" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                </div>

            </div>
        </div>
    </div>


    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">
             <b>Work Email :</b>


            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtWorkEmail" runat="server" class="form-control" placeholder="Work Email"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="Group21" ErrorMessage="Enter Work Email" ControlToValidate="txtWorkEmail" class="error-message"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationGroup="Group21" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtWorkEmail" class="error-message" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                </div>


            </div>
        </div>
    </div>

</div>

<h4>
    <b>Social Links:</b>
</h4>

<div class="row">

    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">
               <b>Facebook :</b>

            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtFacebook" runat="server" class="form-control" placeholder="Facebook"></asp:TextBox>


            </div>
        </div>
    </div>


    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">

                <b>Twitter :</b>

            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtTwitter" runat="server" class="form-control" placeholder="Twitter"></asp:TextBox>


            </div>
        </div>
    </div>

</div>


<div class="row">
    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">

                <b>YouTube :</b>

            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtYouTube" runat="server" class="form-control" placeholder="YouTube"></asp:TextBox>


            </div>
        </div>
    </div>


    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">

               <b>Google+ :</b>

            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtGoogle" runat="server" class="form-control" placeholder="Google+"></asp:TextBox>


            </div>
        </div>
    </div>

</div>


<%--LinkedIn--%>

<div class="row">
    <div class="col-lg-6">
        <div class="col-lg-4">
            <div class="form-group">

             <b>LinkedIn:</b>

            </div>
        </div>

        <div class="col-lg-8">
            <div class="form-group">
                <asp:TextBox ID="txtLinkedIn" runat="server" class="form-control" placeholder="LinkedIn"></asp:TextBox>


            </div>
        </div>
    </div>


    <div class="pull-right">
        <asp:Button ID="btnAddress"  runat="server" Text="Save" class="btn btn-info" OnClick="btnAddress_Click" />


    </div>

</div>






<div class="row">

    <div class="box-body  table-responsive">
        
        
        
        <table id="example1" class="table table-bordered table-striped ">
            <thead>
            <tr>
                <th>Name</th>
                <th>Date Of Birth</th>
                <th>Mobile No</th>
                <th>Address</th>
                <th>Email</th>
                <th>Occupation</th>
                
                <th>Organization</th>
                <th>Work Address</th>
                <th>Work Phone</th>
                <th>Work Email</th>
                <th>FaceBook</th>
                <th>YouTube</th>
                               
                <th>LinkedIn</th>
                <th>Twitter</th>
                <th>Google</th>
               
                               
                <th>Controls</th>
            </tr>
            </thead>
            <tbody>
                    
                        

            <asp:Repeater ID="DataList1" runat="server" >
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("name") %></td>
                        <td><%#Eval("dateOfBirth") %></td>
                        <td><%#Eval("mobileNo") %></td>
                        <td><%#Eval("address") %></td>
                        <td><%#Eval("email") %></td>
                        <td><%#Eval("occupation") %></td>
                        
                        <td><%#Eval("organization") %></td>
                        <td><%#Eval("workAddress") %></td>
                        <td><%#Eval("workPhone") %></td>
                        <td><%#Eval("workEmail") %></td>
                        <td><%#Eval("faceBook") %></td>
                        <td><%#Eval("youTube") %></td>
                        
                        <td><%#Eval("linkedIn") %></td>
                        <td><%#Eval("twitter") %></td>
                        <td><%#Eval("google") %></td>
                      
                                       

                        <td><table class="Buttons">
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
                <th>Date Of Birth</th>
                <th>Mobile No</th>
                <th>Address</th>
                <th>Email</th>
                <th>Occupation</th>
                
                <th>Organization</th>
                <th>Work Address</th>
                <th>Work Phone</th>
                <th>Work Email</th>
                <th>FaceBook</th>
                <th>YouTube</th>
                               
                <th>LinkedIn</th>
                <th>Twitter</th>
                <th>Google</th>
               
                               
                <th>Controls</th>
            </tr>
            </tfoot>
        </table>
        
        
        
        
        
        
        
        


        <%--<asp:GridView ID="gdAddress" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdAddress_RowCommand" >

            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                   
               
                <asp:BoundField DataField="name" HeaderText="Name"/>
                <asp:BoundField DataField="dateOfBirth" HeaderText="DOB"/>
                <asp:BoundField DataField="mobileNo" HeaderText="MobileNo"/>
                <asp:BoundField DataField="address" HeaderText="Address(Res)"/>
                <asp:BoundField DataField="email" HeaderText="Email"/>
                <asp:BoundField DataField="occupation" HeaderText="Occupation"/>
                <asp:BoundField DataField="organization" HeaderText="Organization"/>
                <asp:BoundField DataField="workAddress" HeaderText="WorkAddress"/>
                <asp:BoundField DataField="workPhone" HeaderText="WorkPhone"/>
                <asp:BoundField DataField="workEmail" HeaderText="WorkEmail"/>
                <asp:BoundField DataField="faceBook" HeaderText="Facebook"/>
               
                <asp:BoundField DataField="youTube" HeaderText="Youtube"/>
                <asp:BoundField DataField="linkedIn" HeaderText="LinkedIn"/>
                 <asp:BoundField DataField="twitter" HeaderText="Twitter"/>
                <asp:BoundField DataField="google" HeaderText="Google+"/>

                
                

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

</div>
</div>
</div>

<!-- /.tab-pane -->

<div class=" tab-pane" id="FrequentlyContacted">
    
        <div class="box box-default" style="border-color: #3ae3f5">
            <div class="box-header with-border">

                <h3 class="box-title">Frequently Contacted</h3>


            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">
                <div class="row">

                    


                    <div class="box-body  table-responsive">
                        
                        
                        <table id="example2" class="table table-bordered table-striped ">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Date Of Birth</th>
                                <th>Mobile No</th>
                                <th>Address</th>
                                <th>Email</th>
                                <th>Occupation</th>
                
                                <th>Organization</th>
                                <th>Work Address</th>
                                <th>Work Phone</th>
                                <th>Work Email</th>
                                <th>FaceBook</th>
                                <th>YouTube</th>
                               
                                <th>LinkedIn</th>
                                <th>Twitter</th>
                                <th>Google</th>
               
                               
                                <th>Controls</th>
                            </tr>
                            </thead>
                            <tbody>
                    
                        

                            <asp:Repeater ID="DataList2" runat="server" >
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("name") %></td>
                                        <td><%#Eval("dateOfBirth") %></td>
                                        <td><%#Eval("mobileNo") %></td>
                                        <td><%#Eval("address") %></td>
                                        <td><%#Eval("email") %></td>
                                        <td><%#Eval("occupation") %></td>
                        
                                        <td><%#Eval("organization") %></td>
                                        <td><%#Eval("workAddress") %></td>
                                        <td><%#Eval("workPhone") %></td>
                                        <td><%#Eval("workEmail") %></td>
                                        <td><%#Eval("faceBook") %></td>
                                        <td><%#Eval("youTube") %></td>
                        
                                        <td><%#Eval("linkedIn") %></td>
                                        <td><%#Eval("twitter") %></td>
                                        <td><%#Eval("google") %></td>
                      
                                       

                                        <td><table class="Buttons">
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
                                <th>Date Of Birth</th>
                                <th>Mobile No</th>
                                <th>Address</th>
                                <th>Email</th>
                                <th>Occupation</th>
                
                                <th>Organization</th>
                                <th>Work Address</th>
                                <th>Work Phone</th>
                                <th>Work Email</th>
                                <th>FaceBook</th>
                                <th>YouTube</th>
                               
                                <th>LinkedIn</th>
                                <th>Twitter</th>
                                <th>Google</th>
               
                               
                                <th>Controls</th>
                            </tr>
                            </tfoot>
                        </table>   
                        


        <%--<asp:GridView ID="gdContact" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdContact_RowCommand"  >

            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                   
               
                <asp:BoundField DataField="name" HeaderText="Name"/>
                <asp:BoundField DataField="dateOfBirth" HeaderText="DOB"/>
                <asp:BoundField DataField="mobileNo" HeaderText="MobileNo"/>
                <asp:BoundField DataField="address" HeaderText="Address(Res)"/>
                <asp:BoundField DataField="email" HeaderText="Email"/>
                <asp:BoundField DataField="occupation" HeaderText="Occupation"/>
                <asp:BoundField DataField="organization" HeaderText="Organization"/>
                <asp:BoundField DataField="workAddress" HeaderText="WorkAddress"/>
                <asp:BoundField DataField="workPhone" HeaderText="WorkPhone"/>
                <asp:BoundField DataField="workEmail" HeaderText="WorkEmail"/>
                <asp:BoundField DataField="faceBook" HeaderText="Facebook"/>
               
                <asp:BoundField DataField="youTube" HeaderText="Youtube"/>
                <asp:BoundField DataField="linkedIn" HeaderText="LinkedIn"/>
                 <asp:BoundField DataField="twitter" HeaderText="Twitter"/>
                <asp:BoundField DataField="google" HeaderText="Google+"/>

                
                

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
    </div>


<!-- /.tab-pane -->
</div>
<!-- /.tab-content -->
</div>


</div>


</div>

</div>


</div>


</div>
</div>




<script language="javascript">
    function open_container() {

        $('#myModal').modal('show');

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

    $(function () {
        $("#example2").DataTable();
    });
</script>


</asp:Content>