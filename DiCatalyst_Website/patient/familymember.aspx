<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="familymember.aspx.cs" Inherits="patient_familymember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>
    
    <style>
        
        .Buttons td {
            padding: 3px;

        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-lg-12 col-xs-12">
            <div class="box box-primary" style="border-color: #15c267">
                <div class="box-header with-border">
                    <h3 class="box-title">Family Member </h3>
                    <%--<button type="button" class="btn pull-right" style="background-color:#15c267;color:white">Dummy</button>--%>

                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                    <div class="row">
                        <div class="col-lg-12">

                            <div class="col-lg-2">
                                <div class="form-group" style="width: 70px">
                                 <b>Salutation</b>
                                    <asp:DropDownList ID="ddlsal" runat="server" CssClass="form-control">
                                        <asp:ListItem>Mr</asp:ListItem>
                                        <asp:ListItem>Mrs</asp:ListItem>
                                        <asp:ListItem>Baby</asp:ListItem>
                                        <asp:ListItem>Ms</asp:ListItem>

                                    </asp:DropDownList>

                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">

                                 <b>Patient Id</b>
                                    <asp:TextBox ID="txtPatientId1" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>

                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">

                                  <b>Patient Name</b>
                                    <asp:TextBox ID="txtPatientName" runat="server" CssClass="form-control"></asp:TextBox>

                                    <div class="form-group has-error">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter name" ControlToValidate="txtPatientName" class="error-message"></asp:RequiredFieldValidator>

                                    </div>

                                </div>

                            </div>

                        </div>


                    </div>

                    <div class="row">
                        <div class="col-lg-12">

                            <div class="col-lg-2">
                                <div class="form-group">

                               <b>Age</b>
                                    <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">

                                   <b>Marital Status</b>
                                    <br/>
                                    <asp:RadioButtonList ID="radmar" runat="server" RepeatDirection="Horizontal">

                                        <asp:ListItem>Single</asp:ListItem>
                                        <asp:ListItem>Married</asp:ListItem>
                                    </asp:RadioButtonList>


                                </div>

                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
<b>Gender</b>
                                    <br/>
                                    <asp:RadioButtonList ID="radgen" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList>


                                </div>

                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="col-lg-6">
                                <div class="form-group">

                                   <b>Mobile No.</b>
                                    <asp:TextBox ID="txtMobileNo" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>

                                <div class="form-group">

                                  <b>Email Id</b>
                                    <asp:TextBox ID="txtEmailId" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>
                                <div class="form-group">

                                  <b>Occupation</b>
                                    <asp:TextBox ID="txtOccupation" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">

                                  <b>Chief Complaint</b>
                                    <asp:TextBox ID="txtChiefComplaint" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>

                                <div class="form-group">

                                   <b>Consultation Fee</b>
                                    <asp:TextBox ID="txtConsultationFee" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>

                            </div>
                        </div>
                    </div>


                    <div class="pull-right">

                        <asp:Button ID="Button2" runat="server" Text="Save" class="btn btn-info" Style="background-color: #3ae3f5; border-color: #3ae3f5;"/>

                    </div>

                </div>
                
                
                
                
                
            <div class="box-body table-responsive">
        
        
                <table id="example1" class="table table-bordered table-striped ">
                    <thead>
                    <tr>
                        <th>Patient Id</th>
                        <th>Patient Name</th>
                        <th>Age</th>
                        <th>Marital Status </th>
                        <th>Gender</th>
                        <th>Mobile No</th>
                        <th>Chief Complaint</th>
                        <th>Email Id</th>
                            
                               
                        <th>Consultation Fee</th>
                        <th>Occupation</th>
                        <th>Controls</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                        

                    <asp:Repeater ID="DataList1" runat="server" >
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("patientId") %></td>
                                <td><%#Eval("patientName") %></td>
                                <td><%#Eval("age") %></td>
                                <td><%#Eval("maritalStatus") %></td>
                                <td><%#Eval("gender") %></td>
                                <td><%#Eval("mobileNo") %></td>
                                <td><%#Eval("chiefComplaint") %></td>
                                <td><%#Eval("emailId") %></td>
                                <td><%#Eval("consultationFee") %></td>
                                <td><%#Eval("occupation") %></td>
                                    
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
                        <th>Patient Id</th>
                        <th>Patient Name</th>
                        <th>Age</th>
                        <th>Marital Status </th>
                        <th>Gender</th>
                        <th>Mobile No</th>
                        <th>Chief Complaint</th>
                        <th>Email Id</th>
                            
                               
                        <th>Consultation Fee</th>
                        <th>Occupation</th>
                        <th>Controls</th>
                    </tr>
                    </tfoot>
                </table>
        




            </div>
                
                
                
                
                

                
                
                

            </div>
        </div>
   
    
    
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

    $(function () {
        $("#example3").DataTable();
    });

</script>

    
    

</asp:Content>