<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="GeoLocations.aspx.cs" Inherits="Admin.Admin_GeoLocations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <%-- For Validation--%>


    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>


    <link href="../validation/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../validation/css/main.css" rel="stylesheet"/>
    <link href="../validation/css/scrupulous.css" rel="stylesheet"/>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-12 col-xs-12">
      
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Geo-locations </h3>
                    <%--  <button type="button" class="btn pull-right" style="background-color:#3c8dbc;color:white">Dummy</button>--%>
                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="col-lg-6">
                                <div class="box box-primary">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">Add City</h3>
                                    </div>
                                    <!-- /.box-header -->
                                    <!-- form start -->

                                    <div class="box-body">
                                        <div class="row">
                                            <div class="col-lg-12">


                                                <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                                                    <asp:ListItem>Select Country</asp:ListItem>
                                                </asp:DropDownList>

                                                <div class="form-group has-error">

                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Country" ControlToValidate="ddlCountry" class="error-message"></asp:RequiredFieldValidator>


                                                </div>


                                                <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                                                    <asp:ListItem>Select State</asp:ListItem>
                                                </asp:DropDownList>

                                                <div class="form-group has-error">

                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select State" ControlToValidate="ddlState" class="error-message"></asp:RequiredFieldValidator>


                                                </div>


                                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="City"></asp:TextBox>

                                                <div class="form-group has-error">

                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter City" ControlToValidate="txtCity" class="error-message"></asp:RequiredFieldValidator>


                                                </div>


                                                <asp:Button ID="btnSaveCity" runat="server" Text="Add City" CssClass="btn btn-info" OnClick="btnSaveCity_Click"/>


                                            </div>
                                            <asp:GridView ID="gdvCitites" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" HeaderStyle-HorizontalAlign="Left">
                                                <Columns>
                                                    <asp:BoundField DataField="id" HeaderText="S.No." />
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:Literal ID="Literal1" Text='<%# Eval("cityName")%>' runat="server"></asp:Literal>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="City Name">
                                                        <ItemTemplate>
                                                            
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                    <!-- /.box-body -->


                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="col-lg-6">
                                <div class="box box-primary">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">Add Locality</h3>
                                    </div>
                                    <!-- /.box-header -->
                                    <!-- form start -->

                                    <div class="box-body">
                                        <div class="row">


                                            <div class="col-lg-12">

                                                <asp:DropDownList ID="ddlCountry1" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry1_SelectedIndexChanged">
                                                    <asp:ListItem>Select Country</asp:ListItem>
                                                </asp:DropDownList>

                                                <div class="form-group has-error">

                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select Country" ControlToValidate="ddlCountry1" class="error-message"></asp:RequiredFieldValidator>


                                                </div>

                                                <asp:DropDownList ID="ddlState1" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlState1_SelectedIndexChanged">
                                                    <asp:ListItem>Select State</asp:ListItem>
                                                </asp:DropDownList>

                                                <div class="form-group has-error">

                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select State" ControlToValidate="ddlState1" class="error-message"></asp:RequiredFieldValidator>


                                                </div>

                                                <asp:DropDownList ID="ddlcity1" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlcity1_SelectedIndexChanged" AutoPostBack="True">
                                                    <asp:ListItem>Select City</asp:ListItem>
                                                </asp:DropDownList>

                                                <div class="form-group has-error">

                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select City" ControlToValidate="ddlcity1" class="error-message"></asp:RequiredFieldValidator>

                                                </div>

                                                <asp:TextBox ID="txtLocality" runat="server" CssClass="form-control" placeholder="Locality"></asp:TextBox>

                                                <div class="form-group has-error">

                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Locality" ControlToValidate="txtLocality" class="error-message"></asp:RequiredFieldValidator>


                                                </div>
                                                <asp:Button ID="btnSaveLocality" runat="server" Text="Add Locality" CssClass="btn btn-info" OnClick="btnSaveLocality_Click"/>


                                            </div>
                                            <asp:GridView ID="gdvLocation" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" HeaderStyle-HorizontalAlign="Left">
                                                <Columns>
                                                    <asp:BoundField DataField="id" HeaderText="S.No." />
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:Literal ID="Literal1" Text='<%# Eval("locationName")%>' runat="server"></asp:Literal>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Location Name">
                                                        <ItemTemplate>
                                                            
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>

                                        </div>
                                    </div>
                                    <!-- /.box-body -->


                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>


        </div>


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