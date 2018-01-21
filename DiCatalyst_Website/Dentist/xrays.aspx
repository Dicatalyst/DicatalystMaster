<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/diagnosismenu.master" AutoEventWireup="true" CodeFile="xrays.aspx.cs" Inherits="Dentist_xrays" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" Runat="Server">
    <div >


									<div class="pull-right">
										<asp:Button ID="btnXrayDetails" runat="server" Text="Save" class="btn btn-success" ValidationGroup="group1" OnClick="btnXrayDetails_Click" />
										<asp:Button ID="btnPrint3" runat="server" Text="Preview & Print" class="btn btn-success" />

									</div>


									<!-- /.box-header -->
									<div class="box-body">



										<div class="row">


											<div class="col-lg-5">
												<div class="form-group">
													<b>Purpose</b>

												</div>
												<div class="form-group">

													<asp:TextBox ID="txtPurpose" runat="server" class="form-control"></asp:TextBox>

													<div class="form-group has-error">

														<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Purpose" ValidationGroup="group1" ControlToValidate="txtPurpose" class="error-message"></asp:RequiredFieldValidator>

													</div>

												</div>

											</div>


											<div class="col-lg-1">
												<div class="form-group">
													<b>X-Ray Date</b>

												</div>
												<div class="form-group">

													<asp:TextBox ID="txtXRayDate" runat="server" class="form-control"></asp:TextBox>
													<ajaxToolkit:CalendarExtender ID="CalendarExtender3" PopupButtonID="txtXRayDate" TargetControlID="txtXRayDate" runat="server"></ajaxToolkit:CalendarExtender>
													<div class="form-group has-error">

														<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="group1" ErrorMessage="Enter XRay Date" ControlToValidate="txtXRayDate" class="error-message"></asp:RequiredFieldValidator>

													</div>

												</div>

											</div>


										</div>
										<div class="row">
											<div class="form-group col-lg-12">

												<h4><b>Doctor Details :</b></h4>
											</div>

										</div>

										<div class="row">



											<div class="col-lg-6">

												<div class="form-group">

													<b>Doctor Name</b>

												</div>
												<div class="form-group">

													<asp:TextBox ID="txtDoctorName" runat="server" class="form-control"></asp:TextBox>

												</div>
												<div class="form-group">
													<b>X-Ray Type</b>

												</div>
												<div class="form-group">
													<asp:DropDownList ID="ddlXRayType" runat="server" CssClass="form-control">

														<asp:ListItem></asp:ListItem>
														<asp:ListItem Text="OPG"></asp:ListItem>
														<asp:ListItem Text="IOPA"></asp:ListItem>
														<asp:ListItem Text="CT -Scan"></asp:ListItem>
														<asp:ListItem Text="Bitewing"></asp:ListItem>
														<asp:ListItem Text="Occlusal"></asp:ListItem>

													</asp:DropDownList>

													<div class="form-group has-error">

														<asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="group1" runat="server" ErrorMessage="Select X-Ray Type" ControlToValidate="ddlXRayType" class="error-message"></asp:RequiredFieldValidator>

													</div>


												</div>

											</div>

											<div class="col-lg-6">
												<div class="form-group">
													<b>Mobile No.</b>

												</div>
												<div class="form-group">
													<asp:TextBox ID="txtMobileNo3" runat="server" class="form-control"></asp:TextBox>

													<div class="form-group has-error">

														<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Mobile No" ValidationGroup="group1" ControlToValidate="txtMobileNo3" class="error-message"></asp:RequiredFieldValidator>
														<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="txtMobileNo3" ValidationGroup="group1" class="error-message"></asp:RegularExpressionValidator>

													</div>

												</div>
												<div class="form-group">
													<b>Upload File</b>

												</div>
												<div class="form-group">
													<asp:FileUpload ID="xrayFile" runat="server" />
													<div class="form-group has-error">

														<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Select File" ControlToValidate="xrayFile" ValidationGroup="group1" class="error-message"></asp:RequiredFieldValidator>

													</div>
												</div>


											</div>

											<div class="col-lg-12">
												<asp:GridView ID="GridView2" CssClass="table table-bordered table-responsive table-hover " runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource3">
													<Columns>
														<asp:BoundField DataField="id" HeaderText="id" Visible="false" InsertVisible="False" ReadOnly="True" SortExpression="id" />
														<%--<asp:BoundField DataField="doctorId" HeaderText="doctorId" SortExpression="doctorId" />--%>
														<%--<asp:BoundField DataField="patientId" HeaderText="patientId" SortExpression="patientId" />--%>
														<asp:BoundField DataField="xrayPurpose" HeaderText="X-Ray Purpose" SortExpression="xrayPurpose" />
														<asp:BoundField DataField="xrayDate" HeaderText="X-Ray Date" SortExpression="xrayDate" />
														<asp:BoundField DataField="doctorName" HeaderText="Doctor Name" SortExpression="doctorName" />
														<asp:BoundField DataField="mobileNo" HeaderText="Mobile No." SortExpression="mobileNo" />
														<asp:BoundField DataField="xrayType" HeaderText="X-Ray Type" SortExpression="xrayType" />
														<asp:TemplateField HeaderText="X-Ray File">
															<ItemTemplate>
																<asp:Image ImageUrl='<%#Eval("xrayFile") %>' Width="150px" runat="server"></asp:Image>
															</ItemTemplate>
														</asp:TemplateField>

													</Columns>
												</asp:GridView>
												<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dicatalyst %>" SelectCommand="SELECT * FROM [xrayDetails]" ProviderName="<%$ ConnectionStrings:dicatalyst.ProviderName %>"></asp:SqlDataSource>

											</div>


										</div>

									</div>

								</div>
</asp:Content>

