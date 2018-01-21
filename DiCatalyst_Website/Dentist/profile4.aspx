<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/Settings.master" AutoEventWireup="true" CodeFile="profile4.aspx.cs" Inherits="Dentist_profile4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css" />


    <%--For Time Picker--%>
    <link href="../design/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet" />
    <style>
        .modal-dialog {
            margin: 30px auto;
            width: 50%;
        }

        .patientViewButtons td {
            padding: 3px;
        }
    </style>
    
    
    <script src="../design/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script>
        $('#btUpload').click(function () {
            if (fileUpload.value.length == 0) {    // CHECK IF FILE(S) SELECTED.
                alert('No files selected.');        
                return false; 
            } 
        });
    </script>
    <link href="../validation/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../validation/css/main.css" rel="stylesheet" />
    <link href="../validation/css/scrupulous.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" Runat="Server">
      <section class="content">

        <div class="row">
          

            <div class=" col-md-12" style="background-color: #ffffff; border-color: #484444">
                <div class="nav-tabs-custom">
                    <%--   <h3>  Profile </h3>--%>
                    <div class="tab-content">

                        <!-- /.tab-pane -->

                        <!-- /.tab-pane -->


                        <div class="row">

                            <div class="col-lg-6">

                                <div class="box box-default" style="border-color: #ff2971">
                                    <div class="box-header with-border">
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body" style="display: block;">
                                       
                                  
                                       
                                        
                                        <div class="form-group">
                                            <asp:TextBox ID="txtAboutDoctor" runat="server" class="form-control"  ValidationGroup="p4" placeholder="About Me " TextMode="MultiLine"></asp:TextBox>

                                            <span class=" form-control-feedback"></span>

                                            <div class="form-group">

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter About Doctor" ControlToValidate="txtAboutDoctor"  ValidationGroup="p4" class="error-message"></asp:RequiredFieldValidator>

                                            </div>

                                        </div>
                                        <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <asp:TextBox ID="txtWebsite" runat="server" placeholder="Website"  ValidationGroup="p4" CssClass="form-control" />
                                                    </div>

                                                </div>
                                                <div class="col-lg-6">

                                                    <div class="form-group">
                                                        <asp:TextBox ID="txtPracticeName" runat="server" class="form-control"  ValidationGroup="p4" placeholder=" Practice Name"></asp:TextBox>

                                                        <span class="form-control-feedback"></span>


                                                        <div class="form-group">

                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Enter Practice Name" ControlToValidate="txtPracticeName" ValidationGroup="p4" class="error-message"></asp:RequiredFieldValidator>

                                                        </div>
                                                    </div>



                                                </div>



                                            </div>

                                        <div class="row">
                                            <div class="col-lg-3">

                                                <div class="form-group">
                                                    <asp:TextBox ID="txtExperience" runat="server"  ValidationGroup="p4" CssClass="form-control" placeholder="Years Of Experience"></asp:TextBox>

                                                    <div class="form-group">

                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Experience" ControlToValidate="txtExperience"  ValidationGroup="p4" class="error-message"></asp:RequiredFieldValidator>

                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid Experience not more than 2 Digits" ControlToValidate="txtExperience"  ValidationGroup="p4" class="error-message" ValidationExpression="[0-9]{1,2}"></asp:RegularExpressionValidator>

                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-lg-6">

                                                <div class="form-group">
                                                    <asp:TextBox ID="txtDesignation" runat="server" CssClass="form-control"  ValidationGroup="p4" placeholder="Designation"></asp:TextBox>

                                                    <div class="form-group">

                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Designation" ControlToValidate="txtDesignation"  ValidationGroup="p4" class="error-message"></asp:RequiredFieldValidator>

                                                    </div>

                                                </div>

                                            </div>

                                            <div class="col-lg-3">

                                                <div class="form-group">
                                                    <asp:TextBox ID="txtFee" runat="server" class="form-control"  ValidationGroup="p4" placeholder=" Fee"></asp:TextBox>

                                                    <span class="form-control-feedback"></span>

                                                    <div class="form-group">

                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server"  ValidationGroup="p4" ErrorMessage="Enter Fee" ControlToValidate="txtFee" class="error-message"></asp:RequiredFieldValidator>

                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4"  ValidationGroup="p4" runat="server" ErrorMessage="Enter Valid Fee" ControlToValidate="txtFee" class="error-message" ValidationExpression="[0-9]{0,6}"></asp:RegularExpressionValidator>

                                                    </div>
                                                </div>
                                            </div>

                                        </div>


                                        <div class="row">

                                            <div class="col-lg-6">

                                                <div class="form-group">
                                                    <asp:TextBox ID="txtEducation" TextMode="multiline" runat="server"  ValidationGroup="p4" placeholder="Education" CssClass="form-control"></asp:TextBox>


                                                </div>

                                            </div>

                                            <div class="col-lg-6">

                                                <div class="form-group">
                                                    <asp:TextBox ID="txtAwardsRecognitions" TextMode="multiline" runat="server"  ValidationGroup="p4" placeholder="Awards & Recognitions" CssClass="form-control"></asp:TextBox>

                                                </div>

                                            </div>

                                        </div>

                                        <div class="row">

                                            <div class="col-lg-6">

                                                <div class="form-group">
                                                    <asp:TextBox ID="txtMemberships" TextMode="multiline" runat="server"  ValidationGroup="p4" placeholder="Memberships" CssClass="form-control"></asp:TextBox>

                                                </div>

                                            </div>


                                            <div class="col-lg-6">

                                                <div class="form-group">
                                                    <asp:TextBox ID="txtRegistrations" TextMode="multiline" runat="server"  ValidationGroup="p4" placeholder="Registrations" CssClass="form-control"></asp:TextBox>


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
                                                   <%-- <asp:DropDownList ID="ddlSpeciality" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSpeciality_SelectedIndexChanged" ></asp:DropDownList>
                                                    <br />--%>
                                                    <asp:CheckBoxList ID="chkSpecialityServices" runat="server"  ValidationGroup="p4" RepeatColumns="2" CellPadding="5" CellSpacing="5"></asp:CheckBoxList>
                                                </ContentTemplate>


                                            </asp:UpdatePanel>


                                            <span class="form-control-feedback"></span>
                                            <div class="form-group">

                                                <%--<asp:CheckBox ID="chkPreDoctor" runat="server" Text="Preferred Doctor" />--%>
                                            </div>


                                            <div class="form-group">

<%--                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Select Services" ControlToValidate="chkSpecialityServices"  ValidationGroup="p4" class="error-message"></asp:RequiredFieldValidator>--%>

                                            </div>
                                        </div>
                                        
                                        <div class="row">

                                            <div class="col-lg-6">

                                                <div class="form-group">

                                                    <b>Practice Gallery</b>
                                                    <p><asp:FileUpload ID="FileUpload1" multiple="true" runat="server" /></p>
                                                    <p><asp:Button ID="btUpload" runat="server" Text ="Upload Files" class="btn btn-info" OnClick="Upload_Files" /></p>

                                                    <%--<asp:FileUpload ID="FileUpload2" runat="server" />
                                                    <asp:FileUpload ID="FileUpload3" runat="server" />
                                                    <asp:FileUpload ID="flUploadGallery" runat="server" />--%>
                                                    <p><asp:Label ID="lblFileList" runat="server"></asp:Label></p>
                                                    <p><asp:Label ID="lblUploadStatus" runat="server"></asp:Label></p>
                                                    <p><asp:Label ID="lblFailedStatus" runat="server"></asp:Label></p>
                                                </div>

                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>

                        </div>


                        <div class="row">
                            <div class="pull-right">

                                <asp:Button ID="Button1" runat="server" Text="Save" ValidationGroup="p4" class="btn btn-info" OnClick="Button1_Click" />


                            </div>

                        </div>
                        
                        
                        <br/><br/>
                        
                        
                    

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

    <script src="../design/plugins/jQuery/jquery-2.2.3.min.js"></script>


    <script src="../design/plugins/timepicker/bootstrap-timepicker.min.js"></script>
    <script src="../design/plugins/timepicker/bootstrap-timepicker.js"></script>
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
    <script src="../js/jquery.geocomplete.min.js"></script>
    <script>
        $(function () {
            $(".location").geocomplete({
                details: ".geo-details",
                detailsAttribute: "data-geo"
            });

        });
    </script>

</asp:Content>

