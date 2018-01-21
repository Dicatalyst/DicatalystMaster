<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="Patient.aspx.cs" Inherits="Dentist_Patient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet">
    <style>
        .modal-dialog {
            margin: 30px auto;
            width: 90%;
        }

        .btnedit { padding: 5px !important; }
    </style>
    <style>
        .modal-dialog1 {
            margin: 30px auto;
            width: 50%;
        }

        .modal-dialog2 {
            margin: 30px auto;
            width: 90%;
        }

        .modal-dialog3 {
            margin: 30px auto;
            width: 50%;
        }

        .btnedit { padding: 5px !important; }

        .table1 th {
            border: 1px solid #535353;
            font-size: 14px;
            padding: 2px;
        }

        .table1 td {
            border: 1px solid #535353;
            font-size: 12px;
            padding: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="col-lg-12 col-xs-12">
    <!-- small box -->
    
        <div class="box box-default" style="border-color: #3ae3f5">
            <div class="box-header with-border">
                <h3 class="box-title">Patients</h3>
                <button type="button" class="btn btn-info pull-right" onclick="open_container3();" style="background-color: #3ae3f5; border-color: #3ae3f5;">Recall Appointment</button>
                <button type="button" class="btn btn-info pull-right" onclick="open_container2();" style="background-color: #3ae3f5; border-color: #3ae3f5; margin-right: 5px">Revisit Patient</button>
                <button type="button" class="btn btn-info pull-right" onclick="open_container1();" style="background-color: #3ae3f5; border-color: #3ae3f5; margin-right: 5px">Add New Patient</button>


            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>S.No.</th>
                            <th>Salutation</th>
                            <th>Patient Id</th>
                            <th>Patient Name</th>
                            <th>Age</th>
                            <th>Gender</th>
                            <th>Mobile No.</th>
                            <th>Email</th>
                            <th>Occupation</th>
                            <th>Patient Status</th>
                            <th>Diagnosis</th>

                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Mr/MS</td>
                            <td>p_1</td>
                            <td>ram</td>
                            <td>30</td>
                            <td>male</td>
                            <td>+91 0000 0000 00</td>
                            <td>Test1@gmail.com</td>
                            <td>Test</td>
                            <td>Revisit Patient</td>
                            <td>
                                <a href="Diagnosisadfsaf.aspx">
                                    <button type="button" class="btn btnedit btn-info" onclick="open_container();">
                                        <i class="fa fa-file-text"></i>
                                    </button>
                                </a>
                            </td>
                            <td>
                                <button type="button" class="btn btnedit btn-warning">
                                    <i class="fa fa-edit"></i>
                                </button>
                            </td>

                            <td>
                                <button type="button" class="btn btnedit btn-danger">
                                    <i class="fa fa-trash-o"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Mr/MS</td>
                            <td>p_2</td>
                            <td>raj</td>
                            <td>30</td>
                            <td>male</td>
                            <td>+91 0000 0000 00</td>
                            <td>Test2@gmail.com</td>
                            <td>Test</td>
                            <td>New Patient</td>
                            <td>
                                <a href="Diagnosisadfsaf.aspx">
                                    <button type="button" class="btn btnedit btn-info" onclick="open_container();">
                                        <i class="fa fa-file-text"></i>
                                    </button>
                                </a>
                            </td>
                            <td>
                                <button type="button" class="btn btnedit btn-warning">
                                    <i class="fa fa-edit"></i>
                                </button>
                            </td>

                            <td>
                                <button type="button" class="btn btnedit btn-danger">
                                    <i class="fa fa-trash-o"></i>
                                </button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


<div class="modal fade" id="addnewpatient" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog1 ">
        <div class="modal-content" <%--style="width:50%"--%>>
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            <div class="modal-body" id="modal-bodyku">
                <div class="box box-primary" style="border-color: #3ae3f5">
                    <div class="box-header with-border">
                        <h3 class="box-title">Add New Patient</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">

                                                <asp:Label ID="Label1" runat="server" Text="Patient ID"></asp:Label>

                                                <div class="input-group input-group-sm">
                                                    <asp:TextBox ID="txtPatientID" runat="server" CssClass="form-control"></asp:TextBox>
                                                    <span class="input-group-btn">

                                                        <asp:Button ID="Button1" runat="server" Text="Find" class="btn btn-info btn-flat" Style="background-color: #3ae3f5; border-color: #3ae3f5"/>

                                                    </span>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-3">
                                                    <div class="form-group" style="width: 70px">
                                                        <asp:Label ID="Label2" runat="server" Text="Salutation"></asp:Label>
                                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                                            <asp:ListItem></asp:ListItem>
                                                            <asp:ListItem>Mr</asp:ListItem>
                                                            <asp:ListItem>Mrs</asp:ListItem>
                                                            <asp:ListItem>Baby</asp:ListItem>
                                                            <asp:ListItem>Ms</asp:ListItem>

                                                        </asp:DropDownList>

                                                    </div>
                                                </div>
                                                <div class="col-lg-9">
                                                    <div class="form-group">

                                                        <asp:Label ID="Label3" runat="server" Text="Patient Id"></asp:Label>
                                                        <asp:TextBox ID="txtPatientId1" runat="server" CssClass="form-control"></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <asp:Label ID="Label4" runat="server" Text="Patient Name"></asp:Label>
                                                <asp:TextBox ID="txtPatientName" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>
                                            <div class="row">
                                                <div class="col-lg-2">
                                                    <div class="form-group">

                                                        <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label>
                                                        <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>

                                                    </div>
                                                </div>
                                                <div class="col-lg-5">
                                                    <div class="form-group">

                                                        <asp:Label ID="Label6" runat="server" Text="Marital Status"></asp:Label>
                                                        <br/>

                                                        <asp:RadioButton ID="MaritalStatus1" runat="server" GroupName="radio1"/>Single
                                                        <asp:RadioButton ID="MaritalStatus2" runat="server" GroupName="radio1"/>Married

                                                    </div>

                                                </div>

                                                <div class="col-lg-5">
                                                    <div class="form-group">

                                                        <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
                                                        <br/>

                                                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="radio2"/>
                                                        Male
                                                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="radio2"/>
                                                        Female

                                                    </div>

                                                </div>

                                            </div>

                                            <div class="form-group">

                                                <asp:Label ID="Label8" runat="server" Text="Mobile No."></asp:Label>
                                                <asp:TextBox ID="txtMobileNo" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>

                                            <div class="form-group">

                                                <asp:Label ID="Label9" runat="server" Text="Email Id"></asp:Label>
                                                <asp:TextBox ID="txtEmailId" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>

                                            <div class="form-group">

                                                <asp:Label ID="Label10" runat="server" Text="Occupation"></asp:Label>
                                                <asp:TextBox ID="txtOccupation" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>

                                            <div class="form-group">

                                                <asp:Label ID="Label11" runat="server" Text="Chief Complaint"></asp:Label>
                                                <asp:TextBox ID="txtChiefComplaint" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>

                                            <div class="form-group">

                                                <asp:Label ID="Label12" runat="server" Text="Consultation Fee"></asp:Label>
                                                <asp:TextBox ID="txtConsultationFee" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="pull-right">

                                        <asp:Button ID="Button2" runat="server" Text="Save" class="btn btn-info" Style="background-color: #3ae3f5; border-color: #3ae3f5;"/>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="checkbox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog1 ">
        <div class="modal-content" <%--style="width:50%"--%>>
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            <div class="modal-body" id="modal-bodyku">
                <div class="box box-primary" style="border-color: #3ae3f5">
                    <div class="box-header with-border">
                        <h3 class="box-title">Odontogram </h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                    </div>
                </div>
            </div>
        </div>
        <!-- /. box -->
    </div>
    <!-- /.col -->
</div>


<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog2 ">
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
    <h3 class="box-title">Revisit Patient</h3>
    <div class="pull-right">

        <button type="submit" class="btn btn-info" style="background-color: #3ae3f5; border-color: #3ae3f5;">Save</button>
    </div>


</div>
<!-- /.box-header -->
<div class="box-body">
<div class="row">
<div class="col-lg-4">
    <div class="form-group">


        <asp:Label ID="Label13" runat="server" Text="Patient ID"></asp:Label>

        <div class="input-group input-group-sm">
            <asp:TextBox ID="txtPatientID3" runat="server" CssClass="form-control"></asp:TextBox>

            <span class="input-group-btn">

                <asp:Button ID="Button3" runat="server" Text="Find" class="btn btn-info btn-flat" Style="background-color: #3ae3f5; border-color: #3ae3f5"/>
            </span>

        </div>
    </div>

    <div class="row">
        <div class="col-lg-3">
            <div class="form-group" style="width: 70px">

                <asp:Label ID="Label14" runat="server" Text="Salutation"></asp:Label>

                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs </asp:ListItem>
                    <asp:ListItem>Baby </asp:ListItem>
                    <asp:ListItem> Ms</asp:ListItem>

                </asp:DropDownList>

            </div>
        </div>
        <div class="col-lg-9">

            <div class="form-group">
                <asp:Label ID="Label15" runat="server" Text="Patient Id"></asp:Label>

                <asp:TextBox ID="txtPatientId4" runat="server" Text="P_DLCS_54091" Enabled="false" CssClass="form-control"></asp:TextBox>


            </div>
        </div>

    </div>


    <div class="form-group">

        <asp:Label ID="Label16" runat="server" Text="Patient Name"></asp:Label>
        <asp:TextBox ID="txtPatientName1" runat="server" Text="Joe" Enabled="false" CssClass="form-control"></asp:TextBox>

    </div>
    <div class="row">
        <div class="col-lg-2">
            <div class="form-group">

                <asp:Label ID="Label17" runat="server" Text="Age"></asp:Label>
                <asp:TextBox ID="txtAge1" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>

            </div>
        </div>
        <div class="col-lg-5">
            <div class="form-group">

                <asp:Label ID="Label18" runat="server" Text="Marital Status"></asp:Label><br/>
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="radio3"/>
                Single
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="radio3"/>
                Married

            </div>
        </div>
        <div class="col-lg-5">
            <div class="form-group">

                <asp:Label ID="Label19" runat="server" Text="Gender"></asp:Label><br/>

                <asp:RadioButton ID="RadioButton5" runat="server" GroupName="radio4"/>
                Male
                <asp:RadioButton ID="RadioButton6" runat="server" GroupName="radio4"/>
                Female

            </div>

        </div>

    </div>

    <div class="form-group">

        <asp:Label ID="Label20" runat="server" Text="Mobile No."></asp:Label>
        <asp:TextBox ID="txtMobileNo1" runat="server" Text="9568954091" Enabled="false" CssClass="form-control"></asp:TextBox>

    </div>


    <div class="form-group">

        <asp:Label ID="Label21" runat="server" Text="Email Id"></asp:Label>

        <asp:TextBox ID="txtEmailId1" runat="server" Text="P_DLCS_54091@gmail.com" Enabled="false" CssClass="form-control"></asp:TextBox>

    </div>

    <div class="form-group">

        <asp:Label ID="Label22" runat="server" Text="Occupation"></asp:Label>
        <asp:TextBox ID="txtOccupation1" runat="server" Text="Plumber" Enabled="false" CssClass="form-control"></asp:TextBox>

    </div>

    <div class="form-group">

        <asp:Label ID="Label23" runat="server" Text="Chief Complaint"></asp:Label>
        <asp:TextBox ID="txtChiefComplaint1" runat="server" Text="Complaint1" Enabled="false" CssClass="form-control"></asp:TextBox>

    </div>
    <div class="form-group">

        <asp:Label ID="Label24" runat="server" Text="Consultation Fee"></asp:Label>
        <asp:TextBox ID="txtConsultationFee1" runat="server" Text="1000" Enabled="false" CssClass="form-control"></asp:TextBox>

    </div>


</div>


<div class="col-lg-8">
<div class="nav-tabs-custom">
<ul class="nav nav-tabs">
    <li class="active">
        <a href="#MedicalHistory1" data-toggle="tab" aria-expanded="true">Medical History</a>
    </li>
    <li class="">
        <a href="#clinical1" data-toggle="tab" aria-expanded="true">Clinical History</a>
    </li>
    <li class="">
        <a href="#Investigations1" data-toggle="tab" aria-expanded="false">Investigations</a>
    </li>
    <%--<li class=""><a href="#Odontogram1" data-toggle="tab" aria-expanded="true">Odontogram</a></li>--%>
    <li class="">
        <a href="#X-Rays1" data-toggle="tab" aria-expanded="true">X-Rays</a>
    </li>
    <li class="">
        <a href="#Diagnosis1" data-toggle="tab" aria-expanded="false">Diagnosis</a>
    </li>
    <li class="">
        <a href="#Treatment1" data-toggle="tab" aria-expanded="false">Treatment Plan </a>
    </li>
    <li class="">
        <a href="#Notes1" data-toggle="tab" aria-expanded="true">TP Notes</a>
    </li>
    <li class="">
        <a href="#Prescription1" data-toggle="tab" aria-expanded="false">Prescription</a>
    </li>
    <li class="">
        <a href="#Media1" data-toggle="tab" aria-expanded="true">Media</a>
    </li>
</ul>
<div class="tab-content">

<div class="active tab-pane" id="MedicalHistory1">

<div class="box box-default" style="border-color: #3ae3f5">
<div class="box-header with-border">
    <h3 class="box-title">Medical History</h3>
</div>
<!-- /.box-header -->
<div class="box-body" style="display: block;">
<div class="row">
<div class="col-lg-12">
<div class="row">
    <div class="col-lg-6">
        <div class="form-group">
            <asp:Label ID="Label25" runat="server" Text="Weight"></asp:Label>
            <asp:TextBox ID="txtWeight" runat="server" class="form-control"></asp:TextBox>

        </div>
    </div>
    <div class="col-lg-6">
        <div class="form-group">
            <asp:Label ID="Label26" runat="server" Text="BP"></asp:Label>
            <asp:TextBox ID="txtBP" runat="server" class="form-control"></asp:TextBox>

        </div>


    </div>

    <div class="col-lg-4">
        <asp:Label ID="Label27" runat="server" Text="Are you under Physician's care now?"></asp:Label>


        <br/>

        <asp:RadioButton ID="RadioButton61" runat="server" GroupName="radio1" Text=" Yes "/>
        <asp:RadioButton ID="RadioButton62" runat="server" GroupName="radio1" Text=" No"/>

    </div>

    <div class="col-lg-8">
        <div class="form-group">
            <asp:Label ID="Label28" runat="server" Text="If Yes please explain:"></asp:Label>
            <asp:TextBox ID="txtIfYespleaseexplain" runat="server" class="form-control"></asp:TextBox>

        </div>
    </div>
</div>


<div class="row">

    <div class="col-lg-4">
        <asp:Label ID="Label29" runat="server" Text="Have you ever been hospitalized or had a major operations?"></asp:Label>


        <br/>

        <asp:RadioButton ID="RadioButton7" runat="server" GroupName="radio1" Text=" Yes "/>
        <asp:RadioButton ID="RadioButton8" runat="server" GroupName="radio1" Text=" No"/>


    </div>

    <div class="col-lg-8">
        <div class="form-group">
            <asp:Label ID="Label30" runat="server" Text="If Yes please explain:"></asp:Label>
            <asp:TextBox ID="txtIfYespleaseexplain1" runat="server" class="form-control"></asp:TextBox>


        </div>

    </div>


</div>


<div class="row">


    <div class="col-lg-4">
        <asp:Label ID="Label31" runat="server" Text="Have you ever had a serious head or neck injury ?"></asp:Label>


        <br/>

        <asp:RadioButton ID="RadioButton9" runat="server" GroupName="radio1" Text=" Yes "/>
        <asp:RadioButton ID="RadioButton10" runat="server" GroupName="radio1" Text=" No"/>


    </div>

    <div class="col-lg-8">
        <div class="form-group">
            <asp:Label ID="Label32" runat="server" Text="If Yes please explain:"></asp:Label>
            <asp:TextBox ID="txtIfYespleaseexplain2" runat="server" class="form-control"></asp:TextBox>

        </div>

    </div>


</div>


<div class="row">

    <div class="col-lg-4">
        <asp:Label ID="Label33" runat="server" Text="Are you taking any medicines,pills, or drugs ?"></asp:Label>


        <br/>

        <asp:RadioButton ID="RadioButton11" runat="server" GroupName="radio1" Text=" Yes "/>
        <asp:RadioButton ID="RadioButton12" runat="server" GroupName="radio1" Text=" No"/>

    </div>

    <div class="col-lg-8">

        <div class="form-group">
            <asp:Label ID="Label34" runat="server" Text="Are you allergic to food or drugs ?"></asp:Label>


            <br/>

            <asp:RadioButton ID="RadioButton13" runat="server" GroupName="radio1" Text=" Yes "/>
            <asp:RadioButton ID="RadioButton14" runat="server" GroupName="radio1" Text=" No"/>


        </div>


    </div>


</div>


<div class="row">

    <div class="col-lg-4">
        <asp:Label ID="Label35" runat="server" Text="Do you take, or have you taken ,phen-Fen or Redux ?"></asp:Label>


        <br/>

        <asp:RadioButton ID="RadioButton15" runat="server" GroupName="radio1" Text=" Yes "/>
        <asp:RadioButton ID="RadioButton16" runat="server" GroupName="radio1" Text=" No"/>

    </div>

    <div class="col-lg-8">
        <div class="form-group">
            <asp:Label ID="Label36" runat="server" Text="If yes, please explain:"></asp:Label>

            <asp:TextBox id="txtIfYespleaseexplain3" TextMode="multiline" style="width: 100%" runat="server" CssClass="form-control"/>

        </div>
    </div>


</div>


<div class="row">

    <%-- <div class="col-lg-4">
                                                                    <label>Have you ever taken Fosamax,Boniva,Actonel or any other Medications containing bisphosphonates ?</label>
                                                                    <div class="radio">
                                                                        <label>
                                                                            <input type="radio" name="optionsRadios11" id="optionsRadios17" value="option1">
                                                                            Yes
                                                        <label>
                                                            <input type="radio" name="optionsRadios11" id="optionsRadios18" value="option2" />
                                                            No
                                                        </label>
                                                                        </label>
                                                                    </div>

                                                                </div>--%>

    <%-- <div class="col-lg-8">

                                                                    <div class="form-group">
                                                                        <label>Do you have,or have you had,any of the following ? </label>

                                                                    </div>
                                                                    <div class="form-group col-lg-4">

                                                                        <input type="checkbox" />
                                                                        Chest Pains<br />
                                                                        <input type="checkbox" />
                                                                        Diabetes<br />
                                                                        <input type="checkbox" />
                                                                        Asthma<br />
                                                                    </div>

                                                                    <div class="form-group col-lg-4">
                                                                        <input type="checkbox" />
                                                                        Cancer<br />
                                                                        <input type="checkbox" />
                                                                        others<br />
                                                                    </div>



                                                                </div>--%>
</div>


<div class="row">

    <div class="col-lg-4">
        <asp:Label ID="Label37" runat="server" Text="Are you on a special diet ?"></asp:Label>


        <br/>

        <asp:RadioButton ID="RadioButton17" runat="server" GroupName="radio1" Text=" Yes "/>
        <asp:RadioButton ID="RadioButton18" runat="server" GroupName="radio1" Text=" No"/>

    </div>

    <div class="col-lg-8">
    </div>


</div>


<div class="row">

    <div class="col-lg-4">
        <asp:Label ID="Label38" runat="server" Text="Do you use tobacco ?"></asp:Label>


        <br/>

        <asp:RadioButton ID="RadioButton19" runat="server" GroupName="radio1" Text=" Yes "/>
        <asp:RadioButton ID="RadioButton20" runat="server" GroupName="radio1" Text=" No"/>


    </div>

    <div class="col-lg-8">
    </div>


</div>


<div class="row">

    <div class="col-lg-4">
        <asp:Label ID="Label39" runat="server" Text="Do you use controlled substances ?"></asp:Label>


        <br/>

        <asp:RadioButton ID="RadioButton21" runat="server" GroupName="radio1" Text=" Yes "/>
        <asp:RadioButton ID="RadioButton22" runat="server" GroupName="radio1" Text=" No"/>

    </div>

    <div class="col-lg-8">
    </div>


</div>


</div>
</div>


<div class="row">
</div>
<div class="row">
    <div class="form-group">
        <asp:Label ID="Label40" runat="server" Text="Comments:"></asp:Label>
        <asp:TextBox id="txtComments" TextMode="multiline" style="width: 100%" runat="server" CssClass="form-control"/>

    </div>
</div>


</div>
</div>
</div>



<!-- /.tab-pane -->

<div class=" tab-pane" id="clinical1">

<div class="box box-default" style="border-color: #3ae3f5">
<div class="box-header with-border">
    <h3 class="box-title">Clinical</h3>


</div>
<!-- /.box-header -->
<div class="box-body" style="display: block;">

<div class="row">

<div class="col-lg-12">

<div class="col-lg-6">


<div class="row">

    <div class="col-lg-6">
        <div class="form-group">
            <asp:Label ID="Label41" runat="server" Text="Blood Pressure"></asp:Label>

        </div>

    </div>

    <div class="col-lg-6">
        <div class="form-group">
            <asp:TextBox ID="txtBloodPressure" runat="server" class="form-control"></asp:TextBox>

        </div>

    </div>
</div>

<div class="row">

    <div class="col-lg-6">
        <div class="form-group">
            <asp:Label ID="Label42" runat="server" Text="Pulse"></asp:Label>

        </div>

    </div>

    <div class="col-lg-6">
        <div class="form-group">
            <asp:TextBox ID="txtPulse" runat="server" class="form-control"></asp:TextBox>
        </div>

    </div>
</div>


<div class="row">

    <div class="col-lg-6">
        <div class="form-group">
            <asp:Label ID="Label43" runat="server" Text="Oral Habits"></asp:Label>
            <label> </label>
        </div>

    </div>

    <div class="col-lg-6">
        <div class="form-group">
            <asp:TextBox ID="txtOralHabits" runat="server" class="form-control"></asp:TextBox>
        </div>

    </div>
</div>


<div class="row">

    <div class="col-lg-6">
        <div class="form-group">
            <asp:Label ID="Label44" runat="server" Text="Existing Illness Current Drugs"></asp:Label>

        </div>

    </div>

    <div class="col-lg-6">
        <div class="form-group">
            <asp:TextBox ID="txtExistingIllnessCurrentDrugs" runat="server" class="form-control"></asp:TextBox>
        </div>

    </div>
</div>

<div class="row">

    <div class="col-lg-6">
        <div class="form-group">
            <asp:Label ID="Label45" runat="server" Text="Allergies"></asp:Label>

        </div>

    </div>

    <div class="col-lg-6">
        <div class="form-group">
            <asp:TextBox ID="txtAllergies" runat="server" class="form-control"></asp:TextBox>
        </div>

    </div>
</div>

<h4>
    <b>Intra Oral Examination </b>
</h4>

<div class="row">
    <div class="col-lg-12">
        <h4>
            <b>Existing Prosthesis </b>
        </h4>
    </div>
    <div class="col-lg-4">
        <div class="form-group">
            <asp:Label ID="Label46" runat="server" Text="Maxillary"></asp:Label>

        </div>

    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <asp:Label ID="Label47" runat="server" Text="Since"></asp:Label>

        </div>

    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <asp:Label ID="Label48" runat="server" Text="condition"></asp:Label>

        </div>

    </div>
</div>


<div class="row">

    <div class="col-lg-4">
        <div class="form-group">
            <asp:TextBox ID="txtMaxillary" runat="server" class="form-control"></asp:TextBox>


        </div>

    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <asp:TextBox ID="txtSince" runat="server" class="form-control"></asp:TextBox>
        </div>

    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <asp:TextBox ID="txtcondition" runat="server" class="form-control"></asp:TextBox>
        </div>

    </div>
</div>

<div class="row">

    <div class="col-lg-4">
        <div class="form-group">
            <asp:Label ID="Label49" runat="server" Text="Mandibular"></asp:Label>

        </div>

    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <asp:Label ID="Label50" runat="server" Text="Since"></asp:Label>

        </div>

    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <asp:Label ID="Label51" runat="server" Text="condition"></asp:Label>

        </div>

    </div>
</div>


<div class="row">

    <div class="col-lg-4">
        <div class="form-group">
            <asp:TextBox ID="txtMandibular" runat="server" class="form-control"></asp:TextBox>
        </div>

    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <asp:TextBox ID="txtSince1" runat="server" class="form-control"></asp:TextBox>
        </div>

    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <asp:TextBox ID="txtcondition1" runat="server" class="form-control"></asp:TextBox>
        </div>

    </div>
</div>


<div class="row">
    <div class="col-lg-12">

        <h4>
            <b>Soft Tissue Examination</b>
        </h4>
    </div>

    <div class="col-lg-12">
        <div class="form-group">


            <table class="table table-hover">
                <tbody>
                <tr>
                    <th>Area</th>
                    <th>Description Of Any Problem</th>

                </tr>
                <tr>
                    <td>Pharynx</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Tonsils</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Soft Palate</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Hard Palate</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Tongue</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Floor Of Mouth</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Buccal Mucosa</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Lips Skin</td>
                    <td></td>
                </tr>


                </tbody>
            </table>


        </div>

    </div>


</div>


<div class="row">
    <div class="col-lg-12">
        <h4>
            <b>Lymph Nodes Examination</b>
        </h4>

        <div class="col-lg-3">
            <asp:Label ID="Label52" runat="server" Text="Palpable"></asp:Label>

        </div>

        <asp:RadioButton ID="RadioButton23" runat="server" text="Yes"/>&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton24" runat="server" text="No"/>

        <div class="col-lg-9">
            <div class="form-group">
                <asp:Label ID="Label53" runat="server" Text="If Yes please Explain"></asp:Label>


            </div>

            <div class="form-group">

                <asp:TextBox id="txtIfYespleaseExplain5" TextMode="multiline" style="width: 100%" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
        </div>

    </div>
</div>

<div class="row">
    <div class="col-lg-12">

        <h4>
            <b>TMJ Evaluation</b>
        </h4>
    </div>

    <div class="col-lg-6">
        <div class="form-group">
            <asp:Label ID="Label54" runat="server" Text="Right"></asp:Label>

        </div>

    </div>

    <div class="col-lg-6">
        <div class="form-group">
            <asp:CheckBox ID="CheckBox1" runat="server"/> Crupitus
            <asp:CheckBox ID="CheckBox2" runat="server"/> Snapping/Popping

        </div>

    </div>
</div>


<div class="row">

    <div class="col-lg-6">
        <div class="form-group">
            <asp:Label ID="Label55" runat="server" Text="Left"></asp:Label>

        </div>

    </div>

    <div class="col-lg-6">
        <div class="form-group">
            <asp:CheckBox ID="CheckBox3" runat="server"/> Crupitus
            <asp:CheckBox ID="CheckBox4" runat="server"/> Snapping/Popping
        </div>

    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <h4>
            <b>Tenderness to Palpation :</b>
        </h4>
    </div>
    <div class="col-lg-6">

        <div class="form-group">
            <asp:Label ID="Label56" runat="server" Text="TMJ"></asp:Label>

        </div>

    </div>

    <div class="col-lg-6">
        <div class="form-group">
            <asp:CheckBox ID="CheckBox5" runat="server"/> Left
            <asp:CheckBox ID="CheckBox6" runat="server"/> Right
        </div>

    </div>
</div>

<div class="row">

    <div class="col-lg-6">
        <div class="form-group">
            <asp:Label ID="Label57" runat="server" Text="Muscles"></asp:Label>

        </div>

    </div>

    <div class="col-lg-6">
        <div class="form-group">
            <asp:TextBox ID="txtMuscles" runat="server" class="form-control"></asp:TextBox>

        </div>

    </div>
</div>

<div class="row">

    <div class="col-lg-6">
        <div class="form-group">
            <asp:Label ID="Label58" runat="server" Text="Deviation on Closing"></asp:Label>

        </div>

    </div>

    <div class="col-lg-6">
        <div class="form-group">
            <asp:CheckBox ID="CheckBox7" runat="server"/> RMM
            <asp:CheckBox ID="CheckBox8" runat="server"/> LMM
        </div>

    </div>
</div>

<%-- <div class="row">

                                                                    <div class="col-lg-6">
                                                                        <div class="form-group">
                                                                            <label>Needs Further TMJ Evaluation </label>
                                                                        </div>

                                                                    </div>

                                                                    <div class="col-lg-6">
                                                                        <div class="form-group">
                                                                            <input type="checkbox" />
                                                                            Yes &nbsp;&nbsp;&nbsp;
                                                                                    <input type="checkbox" />
                                                                            No
                                                                            <br />
                                                                            <label>If Yes, Use TMJ Evaluation Form </label>

                                                                        </div>

                                                                    </div>
                                                                </div>--%>
<div class="row">
    <div class="col-lg-12">
        <h4>
            <b>Crown & Bridge </b>
        </h4>
    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <asp:Label ID="Label59" runat="server" Text="Tooth #"></asp:Label>

        </div>

    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <asp:Label ID="Label60" runat="server" Text="Date Placed"></asp:Label>

        </div>

    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <asp:Label ID="Label61" runat="server" Text="condition"></asp:Label>

        </div>

    </div>

</div>


<div class="row">

    <div class="col-lg-4">
        <div class="form-group">
            <asp:TextBox ID="txtTooth" runat="server" class="form-control"></asp:TextBox>

        </div>

    </div>

    <div class="col-lg-4">
        <div class="form-group">

            <asp:TextBox ID="txtDatePlaced" runat="server" class="form-control"></asp:TextBox>
        </div>

    </div>

    <div class="col-lg-4">
        <div class="form-group">
            <asp:TextBox ID="txtcondition3" runat="server" class="form-control"></asp:TextBox>
        </div>

    </div>
</div>


</div>

<div class="col-lg-6">

    <div class="row">
        <div class="col-lg-3">
            <asp:Label ID="Label62" runat="server" Text="Oral Hygiene "></asp:Label>


        </div>

        <div class="col-lg-8">

            <asp:CheckBox ID="CheckBox9" runat="server"/> Excellent &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox10" runat="server"/> Good &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox11" runat="server"/> Fair &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox12" runat="server"/>Poor &nbsp;&nbsp;



        </div>
    </div>

    <div class="row">
        <div class="col-lg-3">
            <asp:Label ID="Label63" runat="server" Text="Calculus"></asp:Label>


        </div>

        <div class="col-lg-8">
            <asp:CheckBox ID="CheckBox13" runat="server"/> None &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox14" runat="server"/> Little &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox15" runat="server"/> Moderate &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox16" runat="server"/>Heavy &nbsp;&nbsp;



        </div>
    </div>

    <div class="row">
        <div class="col-lg-3">
            <asp:Label ID="Label64" runat="server" Text="Plaque"></asp:Label>


        </div>

        <div class="col-lg-8">
            <asp:CheckBox ID="CheckBox17" runat="server"/> None &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox18" runat="server"/> Little &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox19" runat="server"/> Moderate &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox20" runat="server"/>Heavy &nbsp;&nbsp;


        </div>
    </div>


    <div class="row">
        <div class="col-lg-4">
            <asp:Label ID="Label65" runat="server" Text="Cervical Bleeding"></asp:Label>


        </div>

        <div class="col-lg-8">

            <asp:CheckBox ID="CheckBox21" runat="server"/> Localized &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox22" runat="server"/> General &nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox23" runat="server"/> None &nbsp;&nbsp;



        </div>
    </div>


    <div class="row">
        <div class="col-lg-3">
            <asp:Label ID="Label66" runat="server" Text="Perio Exam"></asp:Label>


        </div>
        <asp:RadioButton ID="RadioButton25" runat="server" text="Yes"/>&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton26" runat="server" text="No"/>

    </div>


    <div class="row">
        <div class="col-lg-4">
            <asp:Label ID="Label67" runat="server" Text="Bleeding On Probing"></asp:Label>

        </div>

        <div class="col-lg-4">


            <asp:RadioButton ID="RadioButton27" runat="server" text="Yes"/>&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton28" runat="server" text="No"/>

        </div>

        <div class="col-lg-4">

            <div class="form-group">
                <asp:Label ID="Label68" runat="server" Text="Tooth #"></asp:Label>

            </div>

        </div>
    </div>


    <%--  <div class="row">
                                                                    <div class="col-lg-12">
                                                                        <h4><b>Extractions </b></h4>
                                                                    </div>
                                                                    <div class="col-lg-4">
                                                                        <div class="form-group">
                                                                            <label>Tooth # </label>
                                                                        </div>

                                                                    </div>

                                                                    <div class="col-lg-4">
                                                                        <div class="form-group">
                                                                            <label>Date Placed </label>
                                                                        </div>

                                                                    </div>

                                                                </div>--%>
</div>

</div>


</div>

</div>
</div>
</div>



<div class=" tab-pane" id="X-Rays1">
   
        <div class="box box-default" style="border-color: #3ae3f5">
            <div class="box-header with-border">
                <h3 class="box-title">X-Rays</h3>


            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">


                <div class="row">


                    <div class="col-lg-3">
                        <div class="form-group">
                            <asp:Label ID="Label69" runat="server" Text="Purpose"></asp:Label>

                        </div>

                    </div>

                    <div class="col-lg-3">
                        <div class="form-group">

                            <asp:TextBox ID="txtPurpose" runat="server" class="form-control"></asp:TextBox>


                        </div>

                    </div>


                    <div class="col-lg-3">
                        <div class="form-group">
                            <asp:Label ID="Label70" runat="server" Text="X-Ray Date"></asp:Label>

                        </div>

                    </div>

                    <div class="col-lg-3">
                        <div class="form-group">

                            <asp:TextBox ID="txtXRayDate" runat="server" class="form-control"></asp:TextBox>

                        </div>

                    </div>

                </div>


                <div class="row">


                    <h4>
                        <b>Doctor Details</b>
                    </h4>

                    <div class="col-lg-3">
                        <div class="form-group">
                            <asp:Label ID="Label71" runat="server" Text="Doctor Name"></asp:Label>

                        </div>

                    </div>

                    <div class="col-lg-3">
                        <div class="form-group">

                            <asp:TextBox ID="txtDoctorName" runat="server" class="form-control"></asp:TextBox>

                        </div>

                    </div>


                    <div class="col-lg-3">
                        <div class="form-group">
                            <asp:Label ID="Label72" runat="server" Text="Mobile No."></asp:Label>

                        </div>

                    </div>

                    <div class="col-lg-3">
                        <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>


                        </div>

                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <asp:Label ID="Label73" runat="server" Text="X-Ray Type"></asp:Label>

                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Text="OPG" Value="0"></asp:ListItem>
                                <asp:ListItem Text="IOPA" Value="0"></asp:ListItem>
                                <asp:ListItem Text="CT -Scan" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Bitewing" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Occlusal" Value="0"></asp:ListItem>

                            </asp:DropDownList>


                        </div>

                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <asp:Label ID="Label74" runat="server" Text="Upload File"></asp:Label>

                        </div>

                    </div>
                    <div class="col-lg-3">
                        <div class="form-group">
                            <asp:FileUpload ID="FileUpload1" runat="server"/>

                        </div>

                    </div>


                </div>


            </div>
        </div>
    </div>



<div class=" tab-pane" id="Notes1">

    <!-- /.box-header -->


    
        <div class="box box-default" style="border-color: #3ae3f5">
            <div class="box-header with-border">
                <h3 class="box-title">Treatment Progress Notes</h3>


            </div>
            <!-- /.box-header -->

            <div class="box-body" style="display: block;">
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>S.No.</th>
                            <th>Date</th>
                            <th>Tooth No.</th>
                            <th>Description</th>
                            <th>Status</th>


                        </tr>

                        <tr>
                            <td>1</td>


                            <td>
                                <input class="form-control"/>
                            </td>
                            <td>
                                <input class="form-control"/>
                            </td>
                            <td>
                                <input class="form-control"/>
                            </td>
                            <td>
                                <input class="form-control"/>
                            </td>

                        </tr>


                        </tbody>
                    </table>
                </div>
            </div>


            <br/>
            <br/>


        </div>
    </div>
    <div class="pull-right">

        <asp:Button ID="Button4" runat="server" Text="Save" class="btn btn-info" style="background-color: #3ae3f5; border-color: #3ae3f5"/>
    </div>
    <br/>
    <br/>
    <br/>

    <div class="box-body" style="display: block;">
        <div class="box-body table-responsive no-padding">
            <table class="table table-hover">
                <tbody>
                <tr>
                    <th>S.No.</th>
                    <th>Date</th>
                    <th>Tooth No.</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th>Delete</th>


                </tr>
                <tr>
                    <td>1</td>
                    <td>
                        <input class="form-control" type="text" style="width: 100%"/>
                    </td>
                    <td>
                        <input class="form-control"/>
                    </td>
                    <td>
                        <input class="form-control"/>
                    </td>
                    <td>
                        <input class="form-control"/>
                    </td>


                    <td>
                        <button type="button" class="btn btnedit btn-danger">
                            <i class="fa fa-trash-o"></i>
                        </button>
                    </td>


                </tr>


                </tbody>
            </table>
        </div>
    </div>





<div class=" tab-pane" id="Media1">
    
        <div class="box box-default" style="border-color: #3ae3f5">
            <div class="box-header with-border">
                <h3 class="box-title">Media</h3>

                <%--<button type="button" class="btn btn-info pull-right" onclick="open_container2();" style="background-color: #3ae3f5; border-color: #3ae3f5; margin-right: 5px">Add</button>--%>
            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">


                <div class="row">

                    <div class="col-lg-6">

                        <div class="form-group">
                            <asp:Label ID="Label75" runat="server" Text="Date"></asp:Label>
                            <asp:TextBox ID="txtDate" runat="server" class="form-control"></asp:TextBox>

                        </div>


                    </div>


                </div>

                <div class="row">
                    <div class="col-lg-12">

                        <div class="form-group">
                            <div class="form-group">
                                <asp:Label ID="Label76" runat="server" Text="Description"></asp:Label>
                                <asp:TextBox id="txtDescription" TextMode="multiline" style="width: 100%" runat="server" CssClass="form-control"/>

                            </div>

                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-lg-12">

                        <div class="form-group">
                            <div class="form-group">
                                <asp:Label ID="Label77" runat="server" Text="Upload Files"></asp:Label>
                                <asp:FileUpload ID="FileUpload2" runat="server"/>


                            </div>

                        </div>
                    </div>
                </div>


                <div class="row">

                    <div class="pull-right">
                        <asp:Button ID="Button5" runat="server" Text="Save" class="btn btn-info" style="background-color: #3ae3f5; border-color: #3ae3f5"/>


                    </div>
                </div>

                <br/>
                <br/>

                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>SNo.</th>
                            <th>Date</th>
                            <th>Description </th>

                            <th>Upload File </th>

                            <th>Delete</th>

                        </tr>
                        <tr>
                            <td>1</td>
                            <td>18/03/2013</td>
                            <td>
                                Lorem ipsum represents a long-held tradition for designers, typographers and the like
                                . Some people hate it and argue for its demis.
                            </td>

                            <td>file1</td>
                            <td>
                                <button type="button" class="btn btnedit btn-danger">
                                    <i class="fa fa-trash-o"></i>
                                </button>
                            </td>
                        </tr>


                        </tbody>
                    </table>
                </div>


            </div>
        </div>
    
</div>


<div class="tab-pane" id="Investigations1">
    <!-- The timeline -->
    
        <div class="box box-default" style="border-color: #3ae3f5">
            <div class="box-header with-border">
                <h3 class="box-title">Investigation</h3>


            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">

                <div class="row">

                    <div class="col-lg-6">
                        <div class="form-group">
                            <asp:Label ID="Label78" runat="server" Text="Investgation code"></asp:Label>

                            <asp:TextBox ID="txtInvestgationcode" runat="server" class="form-control"></asp:TextBox>
                        </div>

                    </div>
                    <div class="col-lg-6">
                        <asp:Label ID="Label79" runat="server" Text="Investigation"></asp:Label>


                        <div class="input-group input-group-sm">
                            <asp:DropDownList ID="DropDownList4" runat="server" class="form-control">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem Text="FREE T3" Value="0"></asp:ListItem>
                                <asp:ListItem Text="FREE T4" Value="0"></asp:ListItem>
                                <asp:ListItem Text="THYROID STIMULATE HORMONE(TSH)an" Value="0"></asp:ListItem>


                            </asp:DropDownList>


                            <span class="input-group-btn">
                                <asp:Button ID="Button6" runat="server" Text="Add" class="btn btn-info" style="background-color: #3ae3f5; border-color: #3ae3f5;"/>

                            </span>
                        </div>
                    </div>


                </div>

            </div>

            <%--<div class="box-footer">
                                                                    <div class="pull-right">

                                                                        <button type="submit" class="btn btn-info">Add</button>
                                                                    </div>

                                                                </div>--%>
            <div class="box-body" style="display: block;">
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>S.No.</th>
                            <th>Investigation Code</th>
                            <th>Investigation Name</th>

                            <th>Remove</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>FREE T3</td>
                            <td>FREE T3</td>

                            <td>
                                <button type="button" class="btn btnedit btn-danger">
                                    <i class="fa fa-close"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>FREE T4</td>
                            <td>FREE T3</td>

                            <td>
                                <button type="button" class="btn btnedit btn-danger">
                                    <i class="fa fa-close"></i>
                                </button>
                            </td>
                        </tr>


                        </tbody>
                    </table>
                </div>
            </div>
            <h4>Previous Investigation List</h4>

            <div class="box-body" style="display: block;">
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>S.No.</th>
                            <th>Investigation Code</th>
                            <th>Investigation Name</th>


                        </tr>
                        <tr>
                            <td>1</td>
                            <td>FREE T3</td>
                            <td>FREE T3</td>

                        </tr>
                        <tr>
                            <td>2</td>
                            <td>FREE T4</td>

                            <td>FREE T3</td>
                        </tr>


                        </tbody>
                    </table>
                </div>
            </div>


        </div>
    </div>

<!-- /.tab-pane -->

<div class="tab-pane" id="Diagnosis1">


    
        <div class="box box-default" style="border-color: #3ae3f5">
            <div class="box-header with-border">
                <h3 class="box-title">Diagnosis</h3>


            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">


                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>S.No.</th>
                            <th>Tooth No.</th>
                            <th>Description</th>
                            <th>Date & Time</th>

                        </tr>
                        <tr>
                            <td>1</td>
                            <td>
                                <input class="form-control"/>
                            </td>
                            <td>
                                <input class="form-control"/>
                            </td>
                            <td>
                                <input class="form-control"/>
                            </td>

                        </tr>


                        </tbody>
                    </table>
                </div>


                <br/><br/>

                <div class="row">

                    <div class="col-lg-6">


                        <div class="form-group">
                            <asp:Label ID="Label80" runat="server" Text="Additional Notes"></asp:Label>

                            <asp:TextBox ID="txtAdditionalNotes" TextMode="MultiLine" Columns="40" Rows="2" Width="100%" runat="server" CssClass="form-control"></asp:TextBox>


                        </div>

                    </div>


                </div>


            </div>


            <div class="pull-right">
                <asp:Button ID="Button7" runat="server" Text="Save" class="btn btn-info" style="background-color: #3ae3f5; border-color: #3ae3f5"/>

            </div>
            <br/><br/>

            <div class="box-body" style="display: block;">
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>S.No.</th>

                            <th>Tooth No.</th>
                            <th>Description</th>
                            <th>Date & Time</th>
                            <th>Additional Notes</th>
                            <th>Edit</th>
                            <th>Delete</th>

                        </tr>
                        <tr>
                            <td>1</td>
                            <td>12</td>
                            <td>A Lorem hgquetg eujfryi weify9efykjehf uydefg. </td>
                            <td>13/3/2017</td>
                            <td>A Lorem hgquetg eujfryi weify9efykjehf uydefg. </td>
                            <td>
                                <button type="button" class="btn btnedit btn-warning">
                                    <i class="fa fa-edit"></i>
                                </button>
                            </td>

                            <td>
                                <button type="button" class="btn btnedit btn-danger">
                                    <i class="fa fa-trash-o"></i>
                                </button>
                            </td>

                        </tr>


                        </tbody>
                    </table>
                </div>
            </div>


        </div>
    
</div>


<div class="tab-pane" id="Treatment1">


    
        <div class="box box-default" style="border-color: #3ae3f5">
            <div class="box-header with-border">
                <h3 class="box-title">Treatment Plan</h3>


            </div>
            <!-- /.box-header -->

            <div class="box-body" style="display: block;">
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>S.No.</th>
                            <th>Tooth No.</th>
                            <th>Description</th>
                            <th>Treatment Advice</th>
                            <th>Estimated Cost</th>
                            <th>Duration(in days)</th>


                        </tr>
                        <tr>
                            <td>1</td>
                            <td>
                                <input class="form-control"/>
                            </td>
                            <td>
                                <input class="form-control"/>
                            </td>
                            <td>
                                <input class="form-control"/>
                            </td>
                            <td>
                                <input class="form-control"/>
                            </td>
                            <td>
                                <input class="form-control"/>
                            </td>
                            <%-- <td>
                                                                                    <button type="button" class="btn btnedit btn-warning"><i class="fa fa-edit"></i></button>
                                                                                </td>--%>
                        </tr>


                        </tbody>
                    </table>
                </div>


            </div>


            <br/>
            <br/>


        </div>
    </div>
    <div class="pull-right">
        <asp:Button ID="Button8" runat="server" Text="Save" class="btn btn-info" style="background-color: #3ae3f5; border-color: #3ae3f5"/>

    </div>
    <br/>
    <br/>
    <br/>

    <div class="box-body table-responsive no-padding">
        <table class="table table-hover">
            <tbody>
            <tr>
                <th>S.No.</th>
                <th>Tooth No.</th>
                <th>Description</th>
                <th>Treatment Advice</th>
                <th>Estimated Cost</th>
                <th>Duration(in days)</th>
                <th>Delete</th>


            </tr>
            <tr>
                <td>1</td>
                <td>32 </td>

                <td>Lorem IPsum </td>

                <td>Cementation</td>

                <td>2000</td>

                <td>1</td>

                <td>
                    <button type="button" class="btn btnedit btn-danger">
                        <i class="fa fa-trash-o"></i>
                    </button>
                </td>


            </tr>


            </tbody>
        </table>
    </div>





<div class="tab-pane" id="Prescription1">


    
        <div class="box box-default" style="border-color: #3ae3f5">
            <div class="box-header with-border">
                <h3 class="box-title">Prescription</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">

                <div class="row">

                    <div class="col-lg-6">
                        <div class="form-group">
                            <asp:Label ID="Label81" runat="server" Text="Weight"></asp:Label>
                            <asp:TextBox ID="txtWeight1" runat="server" class="form-control"></asp:TextBox>

                        </div>

                    </div>
                    <div class="col-lg-6">


                        <div class="form-group">
                            <asp:Label ID="Label82" runat="server" Text="BP"></asp:Label>

                            <asp:TextBox ID="txtBP1" runat="server" class="form-control"></asp:TextBox>

                        </div>


                    </div>


                    <div class="field_wrapper">

                        <div class="col-lg-12">

                            <h4>Medicines</h4>
                            <div class="form-group ">

                                <div class="col-md-3">
                                    <input type="hidden" class="mdcn_value" name="medicine_id[]" value="">
                                    <input type="text" class="mdcn_name form-control" name="md_name[]" autocomplete="off" placeholder="Medicine Name"/>
                                    <div id="suggesstion-box"></div>
                                </div>

                                <div class="col-md-2">
                                    <input type="text" class="form-control" placeholder="MG/ML" name="mg[]">
                                </div>
                                <div class="col-md-2">
                                    <input type="text" class="form-control" placeholder="Dose" name="dose[]">
                                </div>
                                <div class="col-md-2">
                                    <input type="text" class="form-control" placeholder="Day" name="day[]">
                                </div>
                                <div class="col-md-3">
                                    <input type="text" class="form-control" placeholder="Comments" name="comments[]">
                                </div>

                            </div>


                        </div>

                    </div>


                </div>


            </div>

            <div class="box-footer">
                <div class="pull-right">

                    <asp:Button ID="Button9" runat="server" Text="Add" class="btn btn-info" style="background-color: #3ae3f5; border-color: #3ae3f5"/>


                </div>

            </div>
            <h4 style="margin-left: 10px">Medicine List:</h4>

            <div class="box-body" style="display: block;">
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>S.No.</th>
                            <th>Medicine Name</th>
                            <th>MG/ML</th>
                            <th>Dose</th>
                            <th>Days</th>
                            <th>Comments</th>

                            <th>Edit</th>
                            <th>Detete</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>medicine name1</td>
                            <td></td>
                            <td>5ml</td>
                            <td>2</td>
                            <td>Text</td>


                            <td>
                                <button type="button" class="btn btnedit btn-warning">
                                    <i class="fa fa-edit"></i>
                                </button>
                            </td>

                            <td>
                                <button type="button" class="btn btnedit btn-danger">
                                    <i class="fa fa-trash-o"></i>
                                </button>
                            </td>

                        </tr>


                        </tbody>
                    </table>
                </div>
            </div>
            <h4 style="margin-left: 10px">Investigations List</h4>
            <div class="box-body" style="display: block;">
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>S.No.</th>
                            <th>Investigation Code</th>
                            <th>Investigation Name</th>

                            <th>Remove</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>FREE T3</td>
                            <td>FREE T3</td>

                            <td>
                                <button type="button" class="btn btnedit btn-danger">
                                    <i class="fa fa-close"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>FREE T4</td>
                            <td>FREE T3</td>

                            <td>
                                <button type="button" class="btn btnedit btn-danger">
                                    <i class="fa fa-close"></i>
                                </button>
                            </td>
                        </tr>


                        </tbody>
                    </table>
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
<!-- /. box -->
</div>
<!-- /.col -->


</div>


<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog3 ">
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
                        <h3 class="box-title">Recall Appointment</h3>


                        <div class="form-group pull-right">

                            <asp:TextBox ID="txtDate1" runat="server" CssClass="form-control" placeholder="Date"></asp:TextBox>
                        </div>


                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-lg-6">

                                    <div class="form-group">
                                        <asp:Label ID="Label84" runat="server" Text="Patient Id"></asp:Label>
                                        <asp:TextBox ID="txtPatientid2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-6">

                                                <asp:TextBox ID="txtTime" runat="server" CssClass="form-control" placeholder="Start Time" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-lg-6">
                                                <asp:TextBox ID="txtTime2" runat="server" CssClass="form-control" Placeholder="End Time" Width="100%"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label ID="Label87" runat="server" Text="Treatment Purpose"></asp:Label>
                                        <asp:TextBox ID="txtTreatment" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label89" runat="server" Text="Assigned Practitioner"></asp:Label>
                                        <asp:TextBox ID="txtAssigned" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>


                                </div>
                                <div class="col-lg-6">


                                    <div class="form-group">
                                        <asp:Label ID="Label85" runat="server" Text="Patient Name"></asp:Label>
                                        <asp:TextBox ID="txtPatientName3" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>


                                    <div class="form-group">
                                        <asp:Label ID="Label86" runat="server" Text="Chair/Room No./Cabin"></asp:Label>
                                        <asp:TextBox ID="txtRoom" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="Label88" runat="server" Text="Description"></asp:Label>
                                        <asp:TextBox ID="txtDescription1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>


                                </div>
                            </div>

                            <div class="pull-right">

                                <button type="submit" class="btn btn-info" style="background-color: #3ae3f5; border-color: #3ae3f5;">Save</button>
                            </div>
                        </div>


                    </div>


                </div>


            </div>

        </div>
        <!-- /. box -->
    </div>
    <!-- /.col -->


</div>


<script language="javascript">
    function open_container() {

        $('#myModal').modal('show');


    }

    function open_container1() {

        $('#addnewpatient').modal('show');


    }

    function open_container2() {

        $('#myModal2').modal('show');

    }

    function open_container3() {

        $('#myModal3').modal('show');

    }
</script>
<script src="jquery-ui-1.12.1/external/jquery/jquery.js"></script>
<script src="jquery-ui-1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
    $("#radioset").buttonset();
</script>

</asp:Content>