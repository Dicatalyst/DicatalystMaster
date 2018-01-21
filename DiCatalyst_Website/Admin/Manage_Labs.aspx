<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Labs.aspx.cs" Inherits="Admin.Admin_Manage_Labs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .modal-dialog {
            margin: 30px auto;
            width: 50%;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div class="col-lg-12 col-xs-12">
    
        <div class="box box-default" style="border-color: #1e282c;">
            <div class="box-header with-border">
                <h3 class="box-title">Manage Lab </h3>
                <button type="button" class="btn btn-info pull-right" onclick="open_container();" style="background-color: #3ae3f5; border-color: #3ae3f5;">Add Lab </button>
            </div>

            <!-- /.box-header -->
            <div class="box-body" style="display: block;">


                <div class="row ">
                    <div class="col-lg-12">
                        <h4>
                            <b> Upload Lab Data</b>
                        </h4>
                        <asp:FileUpload ID="FileUpload1" runat="server"/>
                        <asp:Button ID="Button1" runat="server" Text="Import" OnClick="Button1_Click" Style="margin-top: 5px;" CssClass="btn btn-info"/>

                    </div>
                </div>


                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:BoundField DataField="labName" HeaderText="labName"/>
                        <asp:BoundField DataField="email" HeaderText="email"/>
                        <asp:BoundField DataField="website" HeaderText="website"/>
                        <asp:BoundField DataField="mobileNo" HeaderText="mobileNo"/>
                        <asp:BoundField DataField="foundedYear" HeaderText="foundedYear"/>
                        <asp:BoundField DataField="registrationNo" HeaderText="registrationNo"/>

                        <asp:BoundField DataField="address" HeaderText="address"/>
                        <asp:BoundField DataField="city" HeaderText="city"/>
                        <asp:BoundField DataField="state" HeaderText="state"/>

                        <asp:BoundField DataField="country" HeaderText="country"/>
                        <asp:BoundField DataField="pincode" HeaderText="pincode"/>
                        <asp:BoundField DataField="specialities" HeaderText="specialities"/>
                        <asp:BoundField DataField="servicesFacilities" HeaderText="servicesFacilities"/>
                        <asp:BoundField DataField="keywords" HeaderText="keywords"/>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                                <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>


            </div>
        </div>
    </div>



<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            <div class="modal-body" id="modal-bodyku">


                <div class="box box-primary" style="border-color: #3ae3f5">
                    <div class="box-header with-border">
                        <h3 class="box-title">Add </h3>
                        <div class="pull-right">

                            <button type="submit" class="btn btn-info" style="background-color: #3ae3f5; border-color: #3ae3f5;">Save</button>
                        </div>


                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">


                        <div class="col-lg-12">

                            <div class="row">


                                <div class="col-lg-6">

                                    <div class="form-group has-feedback">
                                        <asp:TextBox ID="txtId" runat="server" class="form-control" placeholder="Id "></asp:TextBox>

                                        <span class=" form-control-feedback"></span>

                                    </div>
                                    <div class="form-group has-feedback">
                                        <asp:TextBox ID="txtLabName" runat="server" class="form-control" placeholder="Lab name"></asp:TextBox>


                                        <span class=" form-control-feedback"></span>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <asp:TextBox ID="txtEmail" runat="server" cssclass="form-control" placeholder="Email"></asp:TextBox>


                                    </div>
                                    <div class="form-group has-feedback">
                                        <asp:TextBox ID="txtWebsite" runat="server" cssclass="form-control" placeholder="Website"></asp:TextBox>


                                    </div>
                                    <div class="form-group has-feedback">
                                        <asp:TextBox ID="txtMobileNo" runat="server" class="form-control" placeholder="Mobile No"></asp:TextBox>


                                    </div>


                                    <div class="form-group">
                                        <asp:TextBox ID="txtFoundedInYear" runat="server" CssClass="form-control" placeholder="Founded InYear"></asp:TextBox>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <asp:TextBox ID="txtRegNo" runat="server" class="form-control" placeholder=" Reg No"/>


                                        <span class="form-control-feedback"></span>
                                    </div>


                                    <div class="form-group has-feedback">
                                        <asp:TextBox id="TxtAddress" TextMode="multiline" Columns="50" Rows="2" runat="server" placeholder="Address" CssClass="form-control"></asp:TextBox>


                                    </div>


                                </div>
                                <div class="col-lg-6">


                                    <div class="form-group has-feedback">

                                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                                            <asp:ListItem Text="Select City" Value="0"></asp:ListItem>
                                        </asp:DropDownList>


                                    </div>


                                    <div class="form-group has-feedback">
                                        <asp:DropDownList ID="DropDownList3" runat="server" cssclass="form-control">
                                            <asp:ListItem Text="Select State" Value="0"></asp:ListItem>

                                        </asp:DropDownList>


                                    </div>

                                    <div class="form-group has-feedback">
                                        <asp:DropDownList ID="DropDownList4" runat="server" class="form-control">
                                            <asp:ListItem Text="Select Country" Value="0"></asp:ListItem>
                                        </asp:DropDownList>


                                    </div>


                                    <div class="form-group has-feedback">
                                        <asp:TextBox ID="txtpincode" runat="server" cssclass="form-control" placeholder="Pincode"></asp:TextBox>


                                    </div>


                                    <div class="form-group has-feedback">
                                        <asp:TextBox ID="txtSpecialities" runat="server" class="form-control" placeholder="Specialities"></asp:TextBox>

                                        <span class="form-control-feedback"></span>
                                    </div>


                                    <div class="form-group has-feedback">
                                        <asp:TextBox id="txtservices" TextMode="multiline" Columns="50" Rows="2" runat="server" placeholder="Services&Facilities" CssClass="form-control"></asp:TextBox>


                                    </div>


                                    <div class="form-group has-feedback">
                                        <asp:TextBox ID="txtKeywords" runat="server" class="form-control" placeholder="Keywords "></asp:TextBox>


                                    </div>


                                </div>


                            </div>


                        </div>


                    </div>

                </div>


            </div>


        </div>

    </div>
    <!-- /. box -->
</div>

<script language="javascript">
    function open_container() {

        $('#myModal').modal('show');

    }


</script>
</asp:Content>