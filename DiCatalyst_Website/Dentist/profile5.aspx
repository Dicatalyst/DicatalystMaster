<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/Settings.master" AutoEventWireup="true" CodeFile="profile5.aspx.cs" Inherits="Dentist_profile5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
        

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
                                       

                                        <div class="geo-details">

                                            <div class="form-group">

                                                <%-- <input id="location" type="text" name="location" placeholder="Start Typing location" class="location form-control" value="<% =Location %>" />--%>

                                                <asp:TextBox ID="location" runat="server" name="location" placeholder="Start Typing location" CssClass="location form-control"></asp:TextBox>

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
                                                        <asp:TextBox ID="setting_country" class="form-control" placeholder="country" ReadOnly="True" data-geo="country" runat="server" />
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


     <%-- <script src="../validation/js/scrupulous.js"></script>

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
    </script>--%>
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

