<%@ Page Title="" Language="C#" MasterPageFile="Settings.master" AutoEventWireup="true" CodeFile="profile3.aspx.cs" Inherits="Dentist_profile3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" runat="Server">



    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css" />
    <script src="../validation/js/scrupulous.js"></script>

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
    
    
    <%--<script src="../design/plugins/jQuery/jquery-2.2.3.min.js"></script>--%>
    <link href="../validation/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../validation/css/main.css" rel="stylesheet" />
    <link href="../validation/css/scrupulous.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" runat="Server">


    <section class="content">

        <div class="row">
          

            <div class=" col-md-12" style="background-color: #ffffff; border-color: #484444">
                <div class="nav-tabs-custom">
                    <%--   <h3>  Profile </h3>--%>
                    <div class="tab-content">

                        <!-- /.tab-pane -->

                        <!-- /.tab-pane -->


                        <div class="row">
                            <div class="col-lg-4">
                                        <div class="box box-default" style="border-color: #ff2971">
                                    <div class="box-header with-border">
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body" style="display: block;">
                                       
                                  
                                       
                                        <div class="form-group">
                                            <asp:Image ID="Image1" Width="150px" runat="server" />
                                            </div>
                                        <div class="form-group">
                                          <b> Upload Picture/Logo</b> 
                                            <asp:FileUpload ID="flPicture" runat="server" />
                                            </div>
                                        </div>
                                            </div>
                            </div>
                            <div class="col-lg-8">

                                <div class="box box-default" style="border-color: #ff2971">
                                    <div class="box-header with-border">
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body" style="display: block;">
                                       
                                  
                                       
                                        <div class="form-group">
                                            <asp:TextBox ID="txtDoctorName" runat="server" class="form-control" placeholder="Name"></asp:TextBox>


                                            <span class=" form-control-feedback"></span>

                                            <div class="form-group">

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Doctor Name" ControlToValidate="txtDoctorName" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                                            </div>


                                        </div>
                                       

                                        <div class="row">
                                          



                                        </div>





                                        




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
                                                    <asp:TextBox ID="txtEmail" Enabled="false" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
                                                    <div class="form-group">

                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmail" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="txtEmail" class="error-message" ValidationGroup="g1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>



                                    </div>

                                </div>

                            </div>
                          

                        </div>


                        <div class="row">
                            <div class="pull-right">

                                <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-info" OnClick="Button1_Click" />


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

    <%--<script src="../design/plugins/jQuery/jquery-2.2.3.min.js"></script>--%>


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

