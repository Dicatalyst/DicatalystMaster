<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Doctor_Freelisting.aspx.cs" Inherits="Doctor_Freelisting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%-- For Validation--%>


    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css" />


    <link href="validation/css/bootstrap.min.css" rel="stylesheet" />
    

    <link href="validation/css/main.css" rel="stylesheet" />
    <link href="validation/css/scrupulous.css" rel="stylesheet" />
    <%--For Time Picker--%>
    <link href="design/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet" />
    <style>
        .modal-dialog {
            margin: 30px auto;
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<div class="box">

<div class="box-header">

    <h3 class="box-title"> Doctors Free listing</h3>

    <div class="pull-right">
        <asp:Button ID="btnSaveAddedDoctorData" runat="server" Text="Save" class="btn btn-info" OnClick="btnSaveAddedDoctorData_Click" ValidationGroup="g1" />

    </div>

</div>

<div class="box-body">
<div class="row">

<div class="col-lg-6">
                   
<div class="box box-default" style="border-color: #ff2971">
<div class="box-header with-border">
</div>
<!-- /.box-header -->
<div class="box-body" style="display: block;">



<div class="form-group">
    <asp:TextBox ID="txtDoctorName" runat="server" class="form-control" placeholder="Doctor name"></asp:TextBox>


    <span class=" form-control-feedback"></span>

    <div class="form-group">

        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Doctor Name" ControlToValidate="txtDoctorName" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

    </div>


</div>
<div class="form-group">
    <asp:TextBox ID="txtAboutDoctor" runat="server" class="form-control" placeholder="About Me " TextMode="MultiLine"></asp:TextBox>

    <span class=" form-control-feedback"></span>

    <div class="form-group">

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter About Doctor" ControlToValidate="txtAboutDoctor" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

    </div>

</div>

<div class="row">
    <div class="col-lg-3">

        <div class="form-group">
            <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control" placeholder="Years Of Experience"></asp:TextBox>

            <div class="form-group">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Experience" ControlToValidate="txtExperience" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid Experience not more than 2 Digits" ControlToValidate="txtExperience" ValidationGroup="g1" class="error-message" ValidationExpression="[0-9]{1,2}"></asp:RegularExpressionValidator>

            </div>

        </div>
    </div>

    <div class="col-lg-6">

        <div class="form-group">
            <asp:TextBox ID="txtDesignation" runat="server" CssClass="form-control" placeholder="Designation"></asp:TextBox>

            <div class="form-group">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Designation" ControlToValidate="txtDesignation" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

            </div>

        </div>

    </div>

    <div class="col-lg-3">

        <div class="form-group">
            <asp:TextBox ID="txtFee" runat="server" class="form-control" placeholder=" Fee"></asp:TextBox>

            <span class="form-control-feedback"></span>

            <div class="form-group">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Enter Fee" ControlToValidate="txtFee" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Valid Fee" ControlToValidate="txtFee" ValidationGroup="g1" class="error-message" ValidationExpression="[0-9]{0,6}"></asp:RegularExpressionValidator>

            </div>
        </div>
    </div>



</div>





<div class="geo-details">

    <div class="form-group">

        <%-- <input id="location" type="text" name="location" placeholder="Start Typing location" class="location form-control" value="<% =Location %>" />--%>

        <asp:TextBox ID="location" runat="server" name="location" placeholder="Start Typing location" CssClass="location form-control" ></asp:TextBox>
                                        
        <div class="form-group">
                                            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Start Typing Location" ControlToValidate="location" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

        </div>

    </div>

    <div class="form-group">
        <asp:TextBox ID="route" runat="server" placeholder="Street Route/ Address" class="form-control" data-geo="route" />
    </div>

    <div class="form-group">
        <asp:TextBox ID="txtLocality" runat="server" placeholder="City" data-geo="locality" class="form-control" />
    </div>
    <div class="form-group">
        <asp:TextBox ID="setting_state" runat="server" data-geo="administrative_area_level_1" placeholder="State/ Province" class="form-control" />

    </div>
    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <asp:TextBox ID="setting_country" class="form-control" placeholder="country" data-geo="country" runat="server" />
            </div>
        </div>
        <div class="col-lg-4">
            <div class="form-group">
                <asp:TextBox ID="txtZipCode" runat="server" placeholder="Zip Code" CssClass="form-control" />
            </div>
        </div>
        <div class="col-lg-2">
            <div class="form-group">
                <asp:TextBox ID="ltlCountryCode" class="form-control" data-geo="country_short" runat="server" ReadOnly="True"></asp:TextBox>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <asp:TextBox ID="txtWebsite" runat="server" placeholder="Website" CssClass="form-control" />
            </div>
                                  
        </div>
        <div class="col-lg-6">

            <div class="form-group">
                <asp:TextBox ID="txtPracticeName" runat="server" class="form-control" placeholder=" Practice Name"></asp:TextBox>

                <span class="form-control-feedback"></span>


                <div class="form-group">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Enter Practice Name" ControlToValidate="txtPracticeName" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                </div>
            </div>



        </div>
                                
                               

    </div>
                                    
    <div class="row">
                                        
        <div class="col-lg-12">
                                        
            <p>
                The following lat-lng are retrieved approximately. You can enter exact values.
            </p>
                                            
        </div>

    </div>

    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <asp:TextBox ID="setting_latitude" runat="server" placeholder="Latitude" class="form-control" data-geo="lat" />
            </div>
        </div>
        <div class="col-lg-6">
            <div class="form-group">
                <asp:TextBox ID="setting_longitude" runat="server" placeholder="Longitude" class="form-control" data-geo="lng" />
            </div>
        </div>
    </div>
</div>



<%--    <div class="form-group">

                                    <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                                        <asp:ListItem></asp:ListItem>

                                    </asp:DropDownList>


                                    <div class="form-group">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Select Country" InitialValue="0" ControlToValidate="ddlCountry" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                                    </div>

                                </div>
                                <div class="form-group">

                                    <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                                        <asp:ListItem></asp:ListItem>

                                    </asp:DropDownList>


                                    <div class="form-group">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="Select State" InitialValue="0" ControlToValidate="ddlState" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                                    </div>

                                </div>

                                <div class="form-group">

                                    <asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control">
                                        <asp:ListItem></asp:ListItem>

                                    </asp:DropDownList>


                                    <div class="form-group">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select City" InitialValue="0" ControlToValidate="ddlCity" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                                    </div>

                                </div>


                                <div class="form-group">
                                    <asp:TextBox ID="txtAddress" TextMode="multiline" Columns="50" Rows="2" runat="server" placeholder="Address" CssClass="form-control"></asp:TextBox>
                                    <div class="form-group">

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Address" ControlToValidate="txtAddress" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                                    </div>

                                </div>--%>

<div class="row">

    <div class="col-lg-6">

        <div class="form-group">
            <asp:TextBox ID="txtMobileNo" runat="server" placeholder="Mobile No" CssClass="form-control"></asp:TextBox>

            <div class="form-group">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Mobile No." ControlToValidate="txtMobileNo" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="g1" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtMobileNo" class="error-message"></asp:RegularExpressionValidator>

            </div>
        </div>

    </div>
    <div class="col-lg-6">

        <div class="form-group">
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
            <div class="form-group">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmail" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtEmail" class="error-message" ValidationGroup="g1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            </div>

        </div>

    </div>

</div>


<div class="row">

    <div class="col-lg-6">

        <div class="form-group">
            <asp:TextBox ID="txtEducation" TextMode="multiline" runat="server" placeholder="Education" CssClass="form-control"></asp:TextBox>


        </div>

    </div>

    <div class="col-lg-6">

        <div class="form-group">
            <asp:TextBox ID="txtAwardsRecognitions" TextMode="multiline" runat="server" placeholder="Awards & Recognitions" CssClass="form-control"></asp:TextBox>

        </div>

    </div>

</div>

<div class="row">

    <div class="col-lg-6">

        <div class="form-group">
            <asp:TextBox ID="txtMemberships" TextMode="multiline" runat="server" placeholder="Memberships" CssClass="form-control"></asp:TextBox>

        </div>

    </div>


    <div class="col-lg-6">

        <div class="form-group">
            <asp:TextBox ID="txtRegistrations" TextMode="multiline" runat="server" placeholder="Registrations" CssClass="form-control"></asp:TextBox>


        </div>

    </div>

</div>




</div>

</div>
           
</div>
<div class="col-lg-6">
         
    <div class="box box-default" style="border-color: #ff2971">
        <div class="box-header with-border">
        </div>
        <!-- /.box-header -->
        <div class="box-body" style="display: block;">

            <div class="form-group">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddlSpeciality" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSpeciality_SelectedIndexChanged"></asp:DropDownList>
                        <br />
                        <asp:CheckBoxList ID="chkSpecialityServices" runat="server" RepeatColumns="2" CellPadding="5" CellSpacing="5"></asp:CheckBoxList>
                    </ContentTemplate>


                </asp:UpdatePanel>


                <span class="form-control-feedback"></span>


                <div class="form-group">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Select Speciality" InitialValue="0" ControlToValidate="ddlSpeciality" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                </div>
            </div>
            
            <div class="form-group">
                                
                <asp:CheckBox ID="chkPreDoctor" runat="server" Text="Preferred Doctor" />
            </div>

            <div class="form-group">


                <asp:GridView ID="gdTimings" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdTimings_OnRowCommand">

                    <Columns>


                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblId" runat="server" Visible="false" Text='<%#Eval("id") %>'></asp:Label>
                                <asp:CheckBox ID="chkDay" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="day" HeaderText="Day" />

                        <asp:TemplateField HeaderText="From ">
                            <ItemTemplate>

                                <div class="bootstrap-timepicker">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox ID="txtFFrom" runat="server" class="form-control timepicker input_edu_strDate" placeholder="From"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="To">
                            <ItemTemplate>

                                <div class="bootstrap-timepicker">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox ID="txtFTo" runat="server" class="form-control timepicker input_edu_strDate" placeholder="To"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>


                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="From">
                            <ItemTemplate>

                                <div class="bootstrap-timepicker">
                                    <div class="form-group">
                                        <div class="input-group">

                                            <asp:TextBox ID="txtsFrom" runat="server" class="form-control timepicker input_edu_strDate" placeholder="From"></asp:TextBox>

                                        </div>
                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="To">
                            <ItemTemplate>

                                <div class="bootstrap-timepicker">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox ID="txtsTo" runat="server" class="form-control timepicker input_edu_strDate" placeholder="To"></asp:TextBox>

                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>


            </div>
            <div class="row">

                <div class="col-lg-6">

                    <div class="form-group">

                        <b>Photo</b>
                        <asp:FileUpload ID="flPicture" runat="server" />


                       


                        <div class="form-group">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ValidationGroup="g1" runat="server" ErrorMessage="Upload Picture" ControlToValidate="flPicture" class="error-message"></asp:RequiredFieldValidator>

                        </div>
                    </div>

                </div>
                <div class="col-lg-6">

                    <div class="form-group">

                        <b>Practice Gallery</b>
                        <asp:FileUpload ID="flUploadGallery" runat="server" />


                       


                        <div class="form-group">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Upload Gallery" ControlToValidate="flUploadGallery" class="error-message"></asp:RequiredFieldValidator>

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
            



 

<script src="validation/js/scrupulous.js"></script>

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

<%--For Time Picker--%>

<script src="design/plugins/jQuery/jquery-2.2.3.min.js"></script>


<script src="design/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<script src="design/plugins/timepicker/bootstrap-timepicker.js"></script>
<script>
    $(function () {
        //Timepicker
        $(".timepicker").timepicker({
            showInputs: false,
            pickTime: false

        });
    });
</script>

<%--For Address--%>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAr8PJdluwfpHD9Hhkd4mB2Jr0xlR1ovME&libraries=places"></script>
<script src="js/jquery.geocomplete.min.js"></script>
<script>
    $(function () {
        $(".location").geocomplete({
            details: ".geo-details",
            detailsAttribute: "data-geo"
        });

    });
</script>

    

</asp:Content>