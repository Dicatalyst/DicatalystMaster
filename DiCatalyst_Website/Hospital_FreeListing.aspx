<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Hospital_FreeListing.aspx.cs" Inherits="Hospital_FreeListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .input_edu_strDate { margin: 5px; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div class="content-wrapper">
<div class="container">
<!-- Content Header (Page header) -->


<!-- Main content -->
<section class="content">
<div class="row">
<div class="box box-default">
<div class="box-body">

<div class="register-box-body">
<div class="box-header bg-navy">
    <h3 class="box-title">Register for Free Listing - Hospital</h3>


    <!-- /.box-tools -->
</div>

<div class="row">
<div class="col-lg-4">
    <img src="images/dummy.png" style="margin-top: 50px; width: 100%;"/>


</div>


<div class="col-lg-8">

<div class="row">
    <h3>Hospital Details</h3>
    <div class="col-lg-6">


        <div class="form-group has-feedback">
            <asp:TextBox ID="txtHospitalName" CssClass="form-control" placeholder="Hospital name" runat="server"></asp:TextBox>

            <span class="form-control-feedback"></span>
        </div>


        <div class="form-group has-feedback">
            <asp:TextBox ID="txtSpecialities" CssClass="form-control" placeholder=" Specialities" runat="server"></asp:TextBox>
            <span class="form-control-feedback"></span>
        </div>


        <div class="form-group has-feedback">
            <asp:TextBox ID="txtWebsites" CssClass="form-control" placeholder="Websites" runat="server"></asp:TextBox>

            <span class="control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <asp:TextBox ID="txttitle" CssClass="form-control" placeholder="Title" runat="server"></asp:TextBox>

            <span class="control-feedback"></span>
        </div>


    </div>
    <div class="col-lg-6">

        <div class="form-group has-feedback">
            <asp:TextBox ID="txtemail" CssClass="form-control" placeholder=" Email" runat="server"></asp:TextBox>
            <span class="form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
            <asp:TextBox ID="txtreg" CssClass="form-control" placeholder="Hopital Reg.No." runat="server"></asp:TextBox>
            <span class="form-control-feedback"></span>
        </div>


        <div class="form-group has-feedback">
            <asp:TextBox ID="txtBranches" CssClass="form-control" placeholder="Branches" runat="server"></asp:TextBox>
            <span class="form-control-feedback"></span>
        </div>


        <div class="form-group has-feedback">
            <asp:TextBox ID="txtAboutUs" CssClass="form-control" placeholder="About Us" runat="server"></asp:TextBox>
            <span class="form-control-feedback"></span>
        </div>


    </div>
</div>


<div class="row">
    <h3>Doctor</h3>

    <div class="col-lg-6">

        <div class="form-group has-feedback">
            <asp:TextBox ID="txtDoctorName" CssClass="form-control" placeholder="Doctor Name" runat="server"></asp:TextBox>
            <span class="form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
            <asp:TextBox ID="txtQualification" CssClass="form-control" placeholder="Qualification" runat="server"></asp:TextBox>
            <span class="form-control-feedback"></span>
        </div>


        <div class="form-group has-feedback">
            <asp:TextBox ID="txtSpecialization" CssClass="form-control" placeholder="Specialization" runat="server"></asp:TextBox>
        </div>


        <div class="form-group has-feedback">
            <asp:Label ID="Label2" runat="server" Text="Doctor Photo"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server"/>

        </div>


    </div>

    <div class="col-lg-6">

        <div class="form-group has-feedback">
            <asp:TextBox ID="txtExperience" CssClass="form-control" placeholder="Experience" runat="server"></asp:TextBox>
            <span class="form-control-feedback"></span>
        </div>


        <div class="form-group has-feedback">
            <asp:TextBox ID="txtConsultationType" CssClass="form-control" placeholder="Consultation Type" runat="server"></asp:TextBox>
            <span class="form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <asp:TextBox ID="txtTimings" CssClass="form-control" placeholder="Timings" runat="server"></asp:TextBox>
            <span class="form-control-feedback"></span>
        </div>
        <br/>


        <div class="pull-right">
            <asp:Button ID="Button1" runat="server" Text="submit" class="btn btn-info" style="background-color: #3ae3f5; border-color: #3ae3f5"/>


        </div>
        <br/>
        <br/>


    </div>


</div>


<div class="row">
    <div class="box-body">
        <table class="table table-hover">
            <tbody>
            <tr>
                <th>S.No.</th>
                <th>Doctor Name</th>
                <th>Qualification</th>
                <th>Specialization</th>
                <th>Experience</th>
                <th>Consultion Type</th>
                <th>Timings</th>
                <th>Doctor Photo</th>


                <th>Edit</th>
                <th>Delete</th>

            </tr>
            <tr>
                <td>1</td>
                <td>Subhashini</td>
                <td>BDS</td>
                <td>Periodontics</td>
                <td>12</td>
                <td>free</td>
                <td>10:00am-12:00pm</td>
                <td>
                    <img src="images/dummy.png" style="width: 100%"/>
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

<div class="row">
    <h3>Contact Details</h3>
    <div class="col-lg-6">

        <div class="form-group has-feedback">
            <asp:TextBox id="txtAddress" TextMode="multiline" Columns="50" Rows="2" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>


            <span class="form-control-feedback"></span>
        </div>


        <div class="form-group has-feedback">
            <asp:TextBox id="txtpincode" runat="server" placeholder="Pincode" CssClass="form-control"></asp:TextBox>


            <span class="form-control-feedback"></span>
        </div>

    </div>
    <div class="col-lg-6">

        <div class="form-group has-feedback">
            <asp:TextBox id="txttelephone" runat="server" placeholder="Telephone No." CssClass="form-control"></asp:TextBox>


            <span class="form-control-feedback"></span>
        </div>


    </div>


</div>


<div class="row">

    <h3>Working Hours</h3>

    <div class="col-md-6">
        <asp:Table ID="Table1" runat="server">
            <asp:TableHeaderRow>

                <asp:TableHeaderCell>
                    <p class="form-control input_edu_strDate">Day</p>
                </asp:TableHeaderCell>
                <asp:TableHeaderCell colspan="2">
                    <p class="form-control input_edu_strDate">First Half</p>
                </asp:TableHeaderCell>
                <asp:TableHeaderCell colspan="2">
                    <p class="form-control input_edu_strDate">Second Half</p>
                </asp:TableHeaderCell>

            </asp:TableHeaderRow>
            <asp:TableRow>

                <asp:TableCell>
                    <p class="form-control input_edu_strDate">Monday</p>
                    <p class="form-control input_edu_strDate">Tuesday</p>
                    <p class="form-control input_edu_strDate">Wednesday</p>
                    <p class="form-control input_edu_strDate">Thursday</p>
                    <p class="form-control input_edu_strDate">Friday</p>
                    <p class="form-control input_edu_strDate">Saturday</p>
                    <p class="form-control input_edu_strDate">Sunday</p>
                </asp:TableCell>
                <asp:TableCell>


                    <asp:TextBox runat="server" id="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID2_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID3_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID4_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID5_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID6_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                    <asp:TextBox runat="server" id="ID7_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                </asp:TableCell>

                <asp:TableCell>

                    <asp:TextBox runat="server" id="ID8_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID9_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID10_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID11_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID12_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID13_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                    <asp:TextBox runat="server" id="ID14_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                </asp:TableCell>
                <asp:TableCell>

                    <asp:TextBox runat="server" id="ID15_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID16_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID17_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID18_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID19_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID20_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                    <asp:TextBox runat="server" id="ID21_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                </asp:TableCell>

                <asp:TableCell>

                    <asp:TextBox runat="server" id="ID22_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID23_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID24_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID25_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID26_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" id="ID27_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                    <asp:TextBox runat="server" id="ID28_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                </asp:TableCell>


            </asp:TableRow>
        </asp:Table>

    </div>
    <div class="col-lg-6">
        <div class="form-group">
            <h4>Upload Photo</h4>
            <asp:FileUpload ID="FileUpload2" runat="server" name="photo"/>


        </div>
        <div class="form-group">

            <h4>Upload Gallery</h4>
            <asp:FileUpload ID="FileUpload3" runat="server" name="picture"/>


        </div>


    </div>


</div>


<div class="col-lg-6">
</div>


</div>
</div>


<div>
</div>

</div>


<div class="row">
    <div class="col-lg-4">
    </div>
    <div class="col-lg-8">


        <div class="checkbox">
            <asp:Label ID="Label1" runat="server">

                <asp:CheckBox runat="server" class="required" value="true" id="termsagree" name="termsagree" required=""/>

                I agree to DiCatalyst <a class="popup" href="#">Terms of Service</a> and <a href="#" class="popup">Privacy Policy</a>.
            </asp:Label>
        </div>

        <div class="col-xs-4">
            <asp:Button ID="Button2" runat="server" Text="submit" class="btn btn-primary btn-block btn-flat" OnClick="Button2_Click"/>

        </div>


    </div>
</div>


</div>
</div>
</div>
</div>

</section>
</div>

</div>

</asp:Content>