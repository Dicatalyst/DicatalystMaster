<%@ Control Language="C#" AutoEventWireup="true" CodeFile="searchbox.ascx.cs" Inherits="userControls_searchbox" %>
<link href="../validation/css/scrupulous.css" rel="stylesheet" />
<style>
    .docprofile {
    max-width: 150px;
    width: 100%;
}
</style>
<div class="row">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="col-md-12" style="margin-bottom: 5px !important">
        <script type="text/javascript">
            function ClientItemSelected(sender, e) {
                $get("<%= hfCustomerId.ClientID %>").value = e.get_value();
            }
        </script>

        <div class="col-lg-3 no-padding">
            <asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">
                <asp:ListItem Text="Select City" Value="city" Selected="true"></asp:ListItem>
            </asp:DropDownList>
            <!-- /input-group -->

            <div class="form-group has-error">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" InitialValue="0" runat="server" ErrorMessage="Please Enter City" ControlToValidate="ddlCity" class="error-message" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            </div>

        </div>
        <div class="col-lg-3 no-padding">
            <asp:TextBox  CssClass="form-control error-message" runat="server" ID="txtLocality"></asp:TextBox>
            <asp:DropDownList ID="ddlLocality" runat="server" CssClass="form-control" Visible="false">
                <%-- OnSelectedIndexChanged="ddlLocality_SelectedIndexChanged"--%>
                <asp:ListItem Text="Select Locality" Value="locality" Selected="true"></asp:ListItem>
            </asp:DropDownList>
            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Locality" ControlToValidate="txtLocality" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>

                            </div>

        </div>
        <!-- /.col-lg-6 -->
        <div class="col-lg-6 no-padding">
            <div class="input-group">
                <asp:TextBox ID="txtspeciality" runat="server" type="text" class="form-control" placeholder="Specialization, Doctors, Hopitals, Clinics" name="srch-term"></asp:TextBox>
                <div class="form-group has-error">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Style="margin: 40px 0px 0px 160px;" ErrorMessage="Please Enter Speciality" ControlToValidate="txtSpeciality" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>
                            </div>
                <ajaxToolkit:AutoCompleteExtender
                    ServiceMethod="SearchCustomers" MinimumPrefixLength="1"
                    CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" FirstRowSelected="false" OnClientItemSelected="ClientItemSelected"
                    ID="txtSpeciality_AutoCompleteExtender" UseContextKey="True"
                    runat="server" DelimiterCharacters="" Enabled="True" ServicePath="~/SearchResult.aspx"
                    TargetControlID="txtSpeciality">
                </ajaxToolkit:AutoCompleteExtender>
                <asp:HiddenField ID="hfCustomerId" runat="server" />

                <div class="input-group-btn">

                    <asp:Button ID="btnsearch" runat="server" Text="Search" class="btn btn-warning" ValidationGroup="g1" OnClick="btnsearch_Click" />


                </div>
            </div>

            <!-- /input-group -->
        </div>
        <!-- /.col-lg-6 -->


    </div>

    </div>

<asp:DataList ID="DataList2" width="100%" runat="server" OnItemCommand="DataList2_ItemCommand" OnItemDataBound="DataList2_ItemDataBound">
    <ItemTemplate>


        <!-- Horizontal Form -->
        <div class="box box-success">

            <div class="box-body">
                <div class="row">
                    <div class="col-lg-3">

                        <asp:Image ID="imgDoctor" runat="server" ImageUrl='<%# Eval("picture") %>' CssClass="docprofile" />
                        <div class="row">
                            <div class="col-lg-12">

                                <table>
                                    <tr>
                                        <td>
                                            <h5><b>Rate Us: &nbsp; </b></h5>
                                        </td>
                                        <td>
                                            <ajaxToolkit:Rating ID="Rating1" runat="server" CurrentRating="2" MaxRating="5"
                                                                StarCssClass="ratingStar"
                                                                WaitingStarCssClass="savedRatingStar"
                                                                FilledStarCssClass="filledRatingStar"
                                                                EmptyStarCssClass="emptyRatingStar">
                                            </ajaxToolkit:Rating>
                                        </td>
                                    </tr>
                                </table>

                            </div>
                        </div>

                    </div>

                    <div class="col-lg-4">

                        <h4>
                            <b>
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("fullName") %>'></asp:Literal>
                            </b>
                        </h4>

                        <p>Lorem Ipsum is simply dummy text. </p>
                        <h5>
                            <b>Specialization:</b>
                            <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("speciality") %>'></asp:Literal>
                        </h5>
                        <h5>
                            <b>Experience:</b>
                            <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("yearOfExperience") %>'></asp:Literal>
                            Years
                        </h5>
                        <h5>
                            <b>Designation:</b>
                            <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("designation") %>'></asp:Literal>
                        </h5>


                    </div>
                    <div class="col-lg-5">


                        <ul class="doctorlist">

                            <li>
                                <i class="fa fa-map-marker"></i><b>Location: </b>
                                <br />
                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("address") %>'></asp:Label>

                            </li>


                            <li>
                                <i class="fa fa-phone"></i><b>Phone No.: </b>
                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("contactNumber") %>'></asp:Label>

                            </li>


                            <li>
                                <i class="fa fa-envelope"></i><b>Email: </b>
                                <asp:Label ID="Label19" runat="server" Text='<%# Eval("email") %>'></asp:Label>

                            </li>
                            <li>
                                <i class="fa fa-money"></i><b>Fee: </b>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("fee") %>'></asp:Label>

                            </li>

                            <li>

                                <i class="fa fa-clock-o"></i><b>Timings: </b>
                                <asp:Label ID="Label20" runat="server" Text="Mon-Sat"></asp:Label>
                            </li>


                        </ul>


                        <asp:HiddenField ID="hfdoctorid" runat="server" Value='<%# Eval("uniqueRandomId") %>' />

                        <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-info pull-right" CommandName="view" CommandArgument='<%# Eval("uniqueRandomId") %>' Style="margin-bottom: 20px; margin-left: -20px">View Details</asp:LinkButton>

                    </div>
                </div>
            </div>
            <!-- /.box-body -->
            <%-- <div class="box-footer">

                                       
                                    </div>--%>
            <!-- /.box-footer -->
            </form>
        </div>


    </ItemTemplate>
</asp:DataList>
                        <asp:DataList ID="DataList1" width="100%" runat="server" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
                            <ItemTemplate>


                                <!-- Horizontal Form -->
                                <div class="box box-info">

                                    <div class="box-body">
                                        <div class="row">
                                            <div class="col-lg-3">

                                                <asp:Image ID="imgDoctor" runat="server" ImageUrl='<%# Eval("picture") %>' CssClass="docprofile" />
                                                <div class="row">
                                                    <div class="col-lg-12">

                                                        <table>
                                                            <tr>
                                                                <td>
                                                                    <h5><b>Rate Us: &nbsp; </b></h5>
                                                                </td>
                                                                <td>
                                                                    <ajaxToolkit:Rating ID="Rating1" runat="server" CurrentRating="2" MaxRating="5"
                                                                        StarCssClass="ratingStar"
                                                                        WaitingStarCssClass="savedRatingStar"
                                                                        FilledStarCssClass="filledRatingStar"
                                                                        EmptyStarCssClass="emptyRatingStar">
                                                                    </ajaxToolkit:Rating>
                                                                </td>
                                                            </tr>
                                                        </table>

                                                    </div>
                                                </div>

                                            </div>

                                            <div class="col-lg-4">

                                                <h4>
                                                    <b>
                                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("fullName") %>'></asp:Literal>
                                                    </b>
                                                </h4>

                                                <p>Lorem Ipsum is simply dummy text. </p>
                                                <h5>
                                                    <b>Specialization:</b>
                                                    <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("speciality") %>'></asp:Literal>
                                                </h5>
                                                <h5>
                                                    <b>Experience:</b>
                                                    <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("yearOfExperience") %>'></asp:Literal>
                                                    Years
                                                </h5>
                                                <h5>
                                                    <b>Designation:</b>
                                                    <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("designation") %>'></asp:Literal>
                                                </h5>


                                            </div>
                                            <div class="col-lg-5">


                                                <ul class="doctorlist">

                                                    <li>
                                                        <i class="fa fa-map-marker"></i><b>Location: </b>
                                                        <br />
                                                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("address") %>'></asp:Label>

                                                    </li>


                                                    <li>
                                                        <i class="fa fa-phone"></i><b>Phone No.: </b>
                                                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("contactNumber") %>'></asp:Label>

                                                    </li>


                                                    <li>
                                                        <i class="fa fa-envelope"></i><b>Email: </b>
                                                        <asp:Label ID="Label19" runat="server" Text='<%# Eval("email") %>'></asp:Label>

                                                    </li>
                                                    <li>
                                                        <i class="fa fa-money"></i><b>Fee: </b>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("fee") %>'></asp:Label>

                                                    </li>

                                                    <li>

                                                        <i class="fa fa-clock-o"></i><b>Timings: </b>
                                                        <asp:Label ID="Label20" runat="server" Text="Mon-Sat"></asp:Label>
                                                    </li>


                                                </ul>


                                                <asp:HiddenField ID="hfdoctorid" runat="server" Value='<%# Eval("uniqueRandomId") %>' />

                                                <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-info pull-right" CommandName="view" CommandArgument='<%# Eval("uniqueRandomId") %>' Style="margin-bottom: 20px; margin-left: -20px">View Details</asp:LinkButton>

                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.box-body -->
                                    <%-- <div class="box-footer">

                                       
                                    </div>--%>
                                    <!-- /.box-footer -->
                                    </form>
                                </div>


                            </ItemTemplate>
                        </asp:DataList>
<div style="height: 0px; width: 0px; overflow: hidden">
<asp:TextBox ID="TextBox1" CssClass="hfdLat" runat="server"></asp:TextBox>
<asp:TextBox ID="TextBox2" CssClass="hfdLong" runat="server"></asp:TextBox>
    </div>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAr8PJdluwfpHD9Hhkd4mB2Jr0xlR1ovME&libraries=places"></script>
<script src="../js/jquery.geocomplete.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $(function geolocate() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {
                    var geolocation = new google.maps.LatLng(
                        position.coords.latitude,
                        position.coords.longitude);
                    var lat = position.coords.latitude;
                    var longi = position.coords.longitude;
                    $('.hfdLat').val(lat);
                    $(".hfdLong").val(longi);
                });
            }
        });
    })
</script>


