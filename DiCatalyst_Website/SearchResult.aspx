<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" validateRequest="false" AutoEventWireup="true" CodeFile="SearchResult.aspx.cs" Inherits="SearchResult" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">




	<link href="jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" />

	<link href="css/ajaxcss.css" rel="stylesheet" />
 <link href="../validation/css/scrupulous.css" rel="stylesheet" />

	<style>
		.login-box {
			margin-top: 20px !important;
		}

		.listmargin li {
			margin-bottom: 10px !important;
			padding: 2px !important;
		}

		.btn {
			padding: 5px !important;
		}
	   .radiolist {

		   margin-left: -20px !important;
		   padding: 5px !important;

	   }
		.ratingIcon {

			margin-left: 7px !important;
			
		}

		.CheckboxList {

			margin-left: -20px !important;
			padding: 5px !important;

		}
	   

		
	</style>

	<style>
		a:hover, a:focus {
			color: #0094ff;
			text-decoration: none;
		}

		a:active, a:hover {
			outline: 0;
		}

		.doctorlist {
			margin: 0px;
			padding: 0px;
		}

			.doctorlist li {
				list-style: none;
				margin-bottom: 10px;
			}

		.leftsearchpanels {
			font-size: 14px !important;
		}

			.leftsearchpanels .box-title {
				font-size: 14px !important;
			}

			.leftsearchpanels .box-header {
				padding: 5px !important;
			}

			.leftsearchpanels .box {
				margin-bottom: 10px !important;
			}

		.docprofile {
			width: 100%;
			max-width: 150px;
		}
		.doctorlist i{ padding-right: 5px;}


		.checkbox label, .radio label {
			min-height: 20px;
			padding-left: 0px;
			margin-bottom: 0;
			font-weight: 400;
			cursor: pointer;
		}

	</style>


	<link href="css/tooltip.css" rel="stylesheet" />
	<script type="text/javascript">
		function viewDetails(id) {
			window.location = "~/ViewDetails.aspx?did=" + id;
		}
	</script>

	<script type="text/javascript">
		function ClientItemSelected(sender, e) {
			$get("<%= hfCustomerId.ClientID %>").value = e.get_value();
		}
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

	<div class="content-wrapper">
		<div class="container">
			<!-- Content Header (Page header) -->


			<!-- Main content -->
			<section class="content">
				<div class="row">


					<div class="col-lg-2 leftsearchpanels">


						<div class="box box-info  box-solid collapsed-box">
							<div class="box-header  with-border">
								<h3 class="box-title">Location</h3>

								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-plus"></i>
									</button>
								</div>
								<!-- /.box-tools -->
							</div>
							<!-- /.box-header -->
							<div class="box-body" style="display: none;">
								<div class="form-group" style="margin-left: 30px">
									
									<asp:CheckBoxList ID="chkLocations" runat="server" CssClass="checkbox"  OnSelectedIndexChanged="chkLocations_SelectedIndexChanged" AutoPostBack="True">
									   </asp:CheckBoxList>
								</div>
							</div>
							<!-- /.box-body -->
						</div>

						
					<div class="box box-info  box-solid collapsed-box">
						<div class="box-header  with-border">
							<h3 class="box-title">Gender</h3>

							<div class="box-tools pull-right">
								<button type="button" class="btn btn-box-tool" data-widget="collapse">
									<i class="fa fa-plus"></i>
								</button>
							</div>
							<!-- /.box-tools -->
						</div>
						<!-- /.box-header -->
						<div class="box-body" style="display: none;">
							<div class="form-group" style="margin-left: 30px">

								<div class="checkbox">
									<asp:CheckBox ID="CheckBox6" runat="server" />
									<asp:Label ID="Label7" runat="server" Text="Male Doctor"></asp:Label>

								</div>
								<div class="checkbox">
									<asp:CheckBox ID="CheckBox7" runat="server" />
									<asp:Label ID="Label8" runat="server" Text="Female Doctor"></asp:Label>


								</div>
							 
							</div>
						</div>
						<!-- /.box-body -->
					</div>
						
						

						<%--<div class="box box-info box-solid collapsed-box">
	<div class="box-header with-border">
		<h3 class="box-title">Specialization</h3>

		<div class="box-tools pull-right">
			<button type="button" class="btn btn-box-tool" data-widget="collapse">
				<i class="fa fa-plus"></i>
			</button>
		</div>
		<!-- /.box-tools -->
	</div>
	<!-- /.box-header -->
	<div class="box-body" style="display: none;">
		<div class="form-group" style="margin-left: 30px">
			<div class="checkbox">
				<asp:CheckBox ID="CheckBox16" runat="server"/>
				<asp:Label ID="Label22" runat="server" Text="Dentist"></asp:Label>

			</div>
			<div class="checkbox">
				<asp:CheckBox ID="CheckBox17" runat="server"/>
				<asp:Label ID="Label23" runat="server" Text="General Physician"></asp:Label>

			</div>
			<div class="checkbox">
				<asp:CheckBox ID="CheckBox18" runat="server"/>
				<asp:Label ID="Label24" runat="server" Text="Dermotalogist"></asp:Label>

			</div>
			<div class="checkbox">
				<asp:CheckBox ID="CheckBox19" runat="server"/>
				<asp:Label ID="Label25" runat="server" Text="Gynecologist"></asp:Label>

			</div>
			<div class="checkbox">
				<asp:CheckBox ID="CheckBox20" runat="server"/>
				<asp:Label ID="Label26" runat="server" Text="ENT Specialist"></asp:Label>

			</div>
		</div>
	</div>
	<!-- /.box-body -->
</div>


<div class="box box-info box-solid collapsed-box">
	<div class="box-header with-border">
		<h3 class="box-title">Availability</h3>

		<div class="box-tools pull-right">
			<button type="button" class="btn btn-box-tool" data-widget="collapse">
				<i class="fa fa-plus"></i>
			</button>
		</div>
		<!-- /.box-tools -->
	</div>
	<!-- /.box-header -->
	<div class="box-body" style="display: none;">
		<div class="form-group" style="margin-left: 30px">

			<div class="checkbox">
				<asp:CheckBox ID="CheckBox21" runat="server"/>
				<asp:Label ID="Label27" runat="server" Text="07:00 AM - 10:00 AM"></asp:Label>

			</div>
			<div class="checkbox">
				<asp:CheckBox ID="CheckBox22" runat="server"/>
				<asp:Label ID="Label28" runat="server" Text="10:00 AM - 01:00 PM"></asp:Label>

			</div>
			<div class="checkbox">
				<asp:CheckBox ID="CheckBox23" runat="server"/>
				<asp:Label ID="Label29" runat="server" Text="01:00 PM - 04:00 PM"></asp:Label>

			</div>
			<div class="checkbox">
				<asp:CheckBox ID="CheckBox24" runat="server"/>
				<asp:Label ID="Label30" runat="server" Text="04:00 PM - 07:00 PM"></asp:Label>

			</div>
			<div class="checkbox">
				<asp:CheckBox ID="CheckBox25" runat="server"/>
				<asp:Label ID="Label31" runat="server" Text="07:00 PM - 11:00 PM"></asp:Label>

			</div>
		</div>
	</div>
	<!-- /.box-body -->
</div>


<div class="box box-info box-solid collapsed-box">
	<div class="box-header with-border">
		<h3 class="box-title">Fee</h3>

		<div class="box-tools pull-right">
			<button type="button" class="btn btn-box-tool" data-widget="collapse">
				<i class="fa fa-plus"></i>
			</button>
		</div>
		<!-- /.box-tools -->
	</div>
	<!-- /.box-header -->
	<div class="box-body" style="display: none;">
		<div class="form-group" style="margin-left: 10px; margin-right: 10px;">

			<input min="0" max="5" data-rangeslider="" type="range">
		</div>
	</div>

	<!-- /.box-body -->
</div>--%>

						<div class="box box-info box-solid collapsed-box">
							<div class="box-header with-border">
								<h3 class="box-title">Rating</h3>

								<div class="box-tools pull-right">
									<button type="button" class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-plus"></i>
									</button>
								</div>
								<!-- /.box-tools -->
							</div>
							<!-- /.box-header -->
							<div class="box-body" style="display: none;">
								<div class="form-group" style="margin-left: 30px">
									
									
									<asp:RadioButtonList ID="today5" runat="server" CssClass="radiolist">
										
										<asp:ListItem> <i class="fa fa-star ratingIcon"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> </asp:ListItem>
										<asp:ListItem> <i class="fa fa-star ratingIcon"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i>  </asp:ListItem>
										<asp:ListItem> <i class="fa fa-star ratingIcon"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>  </asp:ListItem>
										<asp:ListItem><i class="fa fa-star ratingIcon"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i> </asp:ListItem>
										<asp:ListItem>  <i class="fa fa-star ratingIcon"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>  </asp:ListItem>

									</asp:RadioButtonList>
									

								  <%--  <div class="checkbox">
										<input id="today5" type="checkbox">

										<asp:RadioButton ID="today5" runat="server" />
										<label for="today5">
											
										</label>
									</div>
									<div class="checkbox">
										<input id="today6" checked="" type="checkbox">

										<asp:RadioButton ID="today6" runat="server" />
										<label for="today6">
											
										</label>
									</div>
									<div class="checkbox">
										<input id="today7" type="checkbox">
										
										<asp:RadioButton ID="today7" runat="server" /><label for="today7">
											
										</label>
									</div>
									<div class="checkbox">
										<input id="today8" type="checkbox">
										<asp:RadioButton ID="today8" runat="server" />
										
										<label for="today8">
											
										</label>
									</div>
									<div class="checkbox">
										<input id="today9" type="checkbox">
										
										<asp:RadioButton ID="today9" runat="server" />
										<label for="today9">
											
										</label>
									</div>--%>
								</div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
						<br />

						<div>
							<div class="ads-space-side1">

								<img src="images/Doctor-Banner-Ad-Vertical.png" width="100%" />
								<br/>
								<br/>
								<img src="images/Pharma_Printad_17.jpg" width="100%"/>


							</div>
						</div>

					</div>


					<div class=" col-lg-10">


						<div class="box box-info no-border">
							<%--  <div class="col-lg-3">
								<select name="DropDownList1" id="DropDownList1" class="form-control input-lg">
	<option selected="selected" value="city">Select City</option>

</select>
								<!-- /input-group -->
							</div>
							<div class="col-lg-3">
								<input class="form-control input-lg" placeholder="locality" type="text">
								<!-- /input-group -->
							</div>--%>
							<!-- /.col-lg-6 -->
							<div class="row">

								<div class="col-md-12" style="margin-bottom: 5px !important">


									<div class="col-lg-3 no-padding">
										<asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged">
											<asp:ListItem Text="Select City" Value="city" Selected="true"></asp:ListItem>
										</asp:DropDownList>

                                          <%--Below div added by Ram--%>
                                        <div class="form-group has-error">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" InitialValue="0" runat="server" ErrorMessage="Please Enter City" ControlToValidate="ddlCity" class="error-message" ValidationGroup="g1"></asp:RequiredFieldValidator>
                                        </div>

										<!-- /input-group -->
									</div>
									<div class="col-lg-3 no-padding">
                                         <asp:TextBox  CssClass="form-control error-message" runat="server" ID="txtLocality"></asp:TextBox>
										<asp:DropDownList ID="ddlLocality" runat="server" CssClass="form-control" Visible="false">
											<%-- OnSelectedIndexChanged="ddlLocality_SelectedIndexChanged"--%>
											<asp:ListItem Text="Select Locality" Value="locality" Selected="true"></asp:ListItem>
										</asp:DropDownList>
                                         <%--Below div added by Ram--%>
                                        <div class="form-group has-error">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Locality" ControlToValidate="txtLocality" ValidationGroup="g1" class="error-message"></asp:RequiredFieldValidator>
                                        </div>

									</div>
									<!-- /.col-lg-6 -->
									<div class="col-lg-6 no-padding">
										<div class="input-group">
											<asp:TextBox ID="txtspeciality" runat="server" type="text" class="form-control" placeholder="Specialization, Doctors, Hopitals, Clinics" name="srch-term"></asp:TextBox>
											<ajaxToolkit:AutoCompleteExtender
												ServiceMethod="SearchCustomers" MinimumPrefixLength="1"
												CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" FirstRowSelected="false" OnClientItemSelected="ClientItemSelected"
												ID="txtSpeciality_AutoCompleteExtender"
												runat="server" DelimiterCharacters="" Enabled="True" ServicePath=""
												TargetControlID="txtSpeciality">
											</ajaxToolkit:AutoCompleteExtender>

                                              <%--Below div added by Ram--%>
                                            <div class="form-group has-error">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Speciality" ControlToValidate="txtspeciality" ValidationGroup="g1" class="error-message" Style="margin: 40px 0px 0px 160px;"></asp:RequiredFieldValidator>
                                            </div>

											<asp:HiddenField ID="hfCustomerId" runat="server" />

											<div class="input-group-btn">

												<asp:Button ID="btnsearch" runat="server" Text="Search" ValidationGroup="g1" class="btn btn-warning" OnClick="btnsearch_Click" />


											</div>
										</div>

										<!-- /input-group -->
									</div>
									<!-- /.col-lg-6 -->


								</div>


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
																					EmptyStarCssClass="emptyRatingStar" ReadOnly="True">
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
												    <%# Eval("fullName") %>
												</b>
											</h4>

											<p> <%# Eval("aboutMe") %> </p>
											<h5>
												<b>Specialization:</b>
											    <%# Eval("speciality") %>
											</h5>
											<h5>
												<b>Experience:</b>
											    <%# Eval("yearOfExperience") %>
												
												Years
											</h5>
											<h5>
												<b>Designation:</b>
											    <%# Eval("designation") %>
											</h5>


										</div>
										<div class="col-lg-5">


											<ul class="doctorlist">

												<li>
													<i class="fa fa-map-marker"></i><b>Location: </b>
													<br />
												    <p style="padding-left:5px;"><%# Eval("address") %></p>

												</li>


												<li>
													<i class="fa fa-phone"></i><b>Phone No.: </b>
												    <%# Eval("contactNumber") %>

												</li>


												<li>
													<i class="fa fa-envelope"></i><b>Email: </b>
												    <%# Eval("email") %>

												</li>
												<li>
													<i class="fa fa-money"></i><b>Fee: </b>
												    <%# Eval("fee") %>

												</li>

											</ul>


											<asp:HiddenField ID="hfdoctorid" runat="server" Value='<%# Eval("id") %>' />

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
																		EmptyStarCssClass="emptyRatingStar" ReadOnly="True">
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
													    <%# Eval("fullName") %>
													</b>
												</h4>

												<p>
                                                   <%# Eval("aboutMe").ToString().PadRight(140).Substring(0,140).TrimEnd()%>... 
												</p>
												<h5>
													<b>Specialization:</b>
												    <%# Eval("speciality") %>
												</h5>
												<h5>
													<b>Experience:</b>
												    <%# Eval("yearOfExperience") %>
													Years
												</h5>
												<h5>
													<b>Designation:</b>
												    <%# Eval("designation") %>
												</h5>


											</div>
											<div class="col-lg-5">


												<ul class="doctorlist">

													<li>
														<i class="fa fa-map-marker"></i><b>Location: </b>
														<br />
													   <p style="padding-left:5px;"> <%# Eval("address") %></p>

													</li>


													<li>
														<i class="fa fa-phone"></i><b>Phone No.: </b>
													    <%# Eval("contactNumber") %>

													</li>


													<li>
														<i class="fa fa-envelope"></i><b>Email: </b>
													    <%# Eval("email") %>

													</li>
													<li>
														<i class="fa fa-money"></i><b>Fee: </b>
													    <%# Eval("fee") %>

													</li>


												</ul>


												<asp:HiddenField ID="hfdoctorid" runat="server" Value='<%# Eval("id") %>' />

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


					</div>


				</div>


			</section>


			<div style="height: 0px; width: 0px; overflow: hidden">
							<asp:TextBox ID="TextBox1" CssClass="hfdLat" runat="server" Height="0px" Width="0px"></asp:TextBox>
			<asp:TextBox ID="TextBox2" CssClass="hfdLong" runat="server" Height="0px" Width="0px"></asp:TextBox>
			</div>

		</div>

	</div>


	<%--	<script src="jquery-ui-1.12.1/external/jquery/jquery.js"></script>

	<script src="jquery-ui-1.12.1/jquery-ui.js"></script>--%>


	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAr8PJdluwfpHD9Hhkd4mB2Jr0xlR1ovME&libraries=places"></script>
	<script src="js/jquery.geocomplete.min.js"></script>

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



</asp:Content>
