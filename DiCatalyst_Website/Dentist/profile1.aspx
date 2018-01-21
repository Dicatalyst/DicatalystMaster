<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="profile1.aspx.cs" Inherits="Dentist_profile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <%-- For Validation--%>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>

    <link href="../validation/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../validation/css/main.css" rel="stylesheet"/>
    <link href="../validation/css/scrupulous.css" rel="stylesheet"/>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section class="content">

<div class="row">
<div class="col-md-3">

    <!-- Profile Image -->
    <div class="box box-primary" style="border-color: #484444">
        <div class="box-body box-profile">
            <%--<img class="profile-user-img img-responsive img-circle" src="../images/Copy of DLCSNakedLogo.jpg" alt="User profile picture"/>--%>


            <%--<h3 class="profile-username text-center"> DLCS DIAGNOSTIC CENTRE </h3--%>

            <%--<p class="text-muted text-center">Hospital</p>--%>


        </div>

        <br/>

        <div class="box-body box-profile">
            <img class="profile-user-img img-responsive img-circle" src="../images/dummy.png" alt="User profile picture"/>


            <h3 class="profile-username text-center"> Logo </h3>

            <%--<p class="text-muted text-center">Hospital Name  </p>--%>


        </div>

        <!-- /.box-body -->
    </div>
    <!-- /.box -->


</div>
<!-- /.col -->

<div class=" col-md-9" style="background-color: #ffffff; border-color: #484444">
<div class="nav-tabs-custom">
<%--   <h3>  Profile </h3>--%>
<div class="tab-content">

<!-- /.tab-pane -->

<!-- /.tab-pane -->


<div class="row">
    <h3>Professional Details : </h3>

    <div class="col-lg-6">
        <div class="form-group has-feedback">
            <asp:TextBox ID="txtSpecialization" runat="server" class="form-control" placeholder="Specialization"></asp:TextBox>

            <span class="form-control-feedback"></span>

            <div class="form-group has-error">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="Group33" ErrorMessage="Enter Specialization" ControlToValidate="txtSpecialization" class="error-message"></asp:RequiredFieldValidator>

            </div>

        </div>

        <div class="form-group has-feedback">
            <asp:TextBox ID="txtExpertise" TextMode="multiline" Columns="40" Rows="2" runat="server" class="form-control" placeholder="Expertise"/>

            <span class="form-control-feedback"></span>

            <div class="form-group has-error">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Group33" ErrorMessage="Enter Expertise" ControlToValidate="txtExpertise" class="error-message"></asp:RequiredFieldValidator>

            </div>
        </div>


        <div class="form-group has-feedback">
            <asp:TextBox ID="txtMemberships" TextMode="multiline" runat="server" class="form-control" placeholder="Memberships"/>


            <span class="form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
            <asp:TextBox ID="txtRegistrations" TextMode="multiline" runat="server" class="form-control" placeholder="Registrations"/>


            <span class="form-control-feedback"></span>
        </div>


    </div>
    <div class="col-lg-6">
        <div class="form-group has-feedback">
            <asp:TextBox ID="txtExperience" runat="server" class="form-control" placeholder="Experience"/>


            <span class="form-control-feedback"></span>
            <div class="form-group has-error">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="Group33" ErrorMessage="Enter Experience" ControlToValidate="txtExperience" class="error-message"></asp:RequiredFieldValidator>

            </div>

        </div>

        <div class="form-group has-feedback">
            <asp:TextBox ID="txtEmail" runat="server" cssclass="form-control" placeholder="Email"></asp:TextBox>

            <div class="form-group has-error">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="Group33" ErrorMessage="Enter Email" ControlToValidate="txtEmail" class="error-message"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email" ValidationGroup="Group33" ControlToValidate="txtEmail" class="error-message" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>


        </div>


        <div class="form-group has-feedback">
            <asp:TextBox ID="txtAwards" runat="server" class="form-control" placeholder="Awards & Recognitions"></asp:TextBox>

            <span class="form-control-feedback"></span>
        </div>


        <div class="form-group has-feedback">
            <asp:TextBox ID="txtServices" TextMode="multiline" runat="server" class="form-control" placeholder="Services"/>


            <span class="form-control-feedback"></span>
        </div>


    </div>


</div>


<div class="row">
    <h3>Education Details : </h3>

    <div class="col-lg-6">
        <div class="form-group has-feedback">
            <asp:TextBox ID="txtUGInstituteStudied" runat="server" class="form-control" placeholder="UG Institute Studied"></asp:TextBox>

            <span class=" form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <asp:TextBox ID="txtOtherEducation" runat="server" class="form-control" placeholder="Other Education"></asp:TextBox>

            <span class="form-control-feedback"></span>

            <div class="form-group has-error">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="Group33" ErrorMessage="Enter Other Education Details" ControlToValidate="txtOtherEducation" class="error-message"></asp:RequiredFieldValidator>

            </div>

        </div>

        <div class="form-group has-feedback">
            <asp:TextBox ID="txtUGDegree" runat="server" class="form-control" placeholder="UG Degree"></asp:TextBox>

            <span class="form-control-feedback"></span>

            <div class="form-group has-error">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="Group33" ErrorMessage="Enter UG Degree" ControlToValidate="txtUGDegree" class="error-message"></asp:RequiredFieldValidator>

            </div>

        </div>
        <div class="form-group has-feedback">
            <asp:TextBox ID="txtPGDegree" runat="server" class="form-control" placeholder="PG Degree"></asp:TextBox>

            <span class="form-control-feedback"></span>

            <div class="form-group has-error">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="Group33" ErrorMessage="Enter PG Degree" ControlToValidate="txtPGDegree" class="error-message"></asp:RequiredFieldValidator>

            </div>
        </div>


    </div>


    <div class="col-lg-6">
        <div class="form-group has-feedback">
            <asp:TextBox ID="txtPGInstituteStudied" runat="server" class="form-control" placeholder="PG Institute Studied"></asp:TextBox>

            <span class="form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
            Practice Type :
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem Text="Doctor (Clinician)" Value="0"></asp:ListItem>
                <asp:ListItem Text="Doctor (Non-Clinician)" Value="0"></asp:ListItem>
                <asp:ListItem Text="Medical Student" Value="0"></asp:ListItem>
            </asp:DropDownList>

            <div class="form-group has-error">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ValidationGroup="Group33" ErrorMessage="Select Practice Type" ControlToValidate="DropDownList1" class="error-message"></asp:RequiredFieldValidator>

            </div>

            <span class="form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <asp:TextBox ID="txtConsultationFee" runat="server" class="form-control" placeholder="Consultation Fee"></asp:TextBox>

            <span class="form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <asp:TextBox ID="txtLanguageSpoken" runat="server" class="form-control" placeholder="Language Spoken"></asp:TextBox>

            <span class="form-control-feedback"></span>
        </div>


    </div>
</div>


<div class="row">
    <h3>Address</h3>

    <div class="col-lg-6">
        <div class="form-group has-feedback">
            <asp:TextBox id="TxtAddress" TextMode="multiline" Columns="50" Rows="2" runat="server" placeholder="Address" CssClass="form-control"></asp:TextBox>

            <div class="form-group has-error">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="Group33" ErrorMessage="Enter Address" ControlToValidate="TxtAddress" class="error-message"></asp:RequiredFieldValidator>

            </div>
        </div>


        <div class="form-group has-feedback">
            <asp:DropDownList ID="DropDownList3" runat="server" cssclass="form-control">

                <asp:ListItem></asp:ListItem>
                <asp:ListItem Text="Select State" Value="0"></asp:ListItem>

            </asp:DropDownList>


            <%-- <span class="glyphicon glyphicon-pencil form-control-feedback"></span>--%>
        </div>
        <div class="form-group has-feedback">
            <asp:TextBox ID="txtZipCode" runat="server" cssclass="form-control" placeholder="ZipCode"></asp:TextBox>


            <%-- <span class="glyphicon glyphicon-pencil form-control-feedback"></span>--%>
        </div>


    </div>

    <div class="col-lg-6">
        <div class="form-group has-feedback">

            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">

                <asp:ListItem></asp:ListItem>
                <asp:ListItem Text="Select City" Value="0"></asp:ListItem>
            </asp:DropDownList>

            <%--<span class="glyphicon glyphicon-pencil form-control-feedback"></span>--%>
        </div>


        <div class="form-group has-feedback">
            <asp:DropDownList ID="DropDownList4" runat="server" class="form-control">

                <asp:ListItem></asp:ListItem>
                <asp:ListItem Text="Select Country" Value="0"></asp:ListItem>
            </asp:DropDownList>


        </div>
        <div class="form-group has-feedback">
            <asp:TextBox ID="txtMobileNo" runat="server" class="form-control" placeholder="Mobile No"></asp:TextBox>


            <div class="form-group has-error">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="Group33" ErrorMessage="Enter Mobile No" ControlToValidate="txtMobileNo" class="error-message"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="Group33" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtMobileNo" class="error-message"></asp:RegularExpressionValidator>

            </div>

        </div>


    </div>
</div>
<div class="row">
    <div class="col-lg-6">
        <div class="form-group">
            <h4>Upload Photo</h4>
            <asp:FileUpload ID="FileUpload2" runat="server" name="photo"/>

            <div class="form-group has-error">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ValidationGroup="Group33" ErrorMessage="Select Photo" ControlToValidate="FileUpload2" class="error-message"></asp:RequiredFieldValidator>

            </div>

        </div>
        <div class="form-group">

            <h4>Upload Gallery</h4>
            <asp:FileUpload ID="FileUpload1" runat="server" name="picture"/>
            <div class="form-group has-error">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ValidationGroup="Group33" ErrorMessage="Select Gallery" ControlToValidate="FileUpload1" class="error-message"></asp:RequiredFieldValidator>

            </div>

        </div>


    </div>
</div>


<div class="row">
    <div class="pull-right">

        <asp:Button ID="Button1" runat="server" Text="Save" ValidationGroup="Group33" class="btn btn-info"/>

        <%--<button type="reset" class="btn btn-default">Cancel</button>--%>
    </div>

</div>

</div>


<!-- /.col -->
</div>

</div>
<!-- /.nav-tabs-custom -->
</div>

<!-- /.col -->

</section>


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


</asp:Content>