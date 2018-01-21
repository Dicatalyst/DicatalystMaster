<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/diagnosismenu.master" AutoEventWireup="true" CodeFile="Investigations.aspx.cs" Inherits="Dentist_Investigations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" Runat="Server">
     <div class="row" style="padding: 20px;">

									<div class="pull-right">

										<asp:Button ID="btnPrint8" runat="server" Text="Preview & Print" class="btn btn-success" />
									</div>

									<div class="box-body">

										

											<%--  <div class="col-lg-2">
												<div class="form-group">

													<b>Investgation code</b>

													<asp:TextBox ID="txtInvestgationcode" runat="server" class="form-control" ValidationGroup="group5"></asp:TextBox>

													<div class="form-group has-error">

														<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Investgation code" ValidationGroup="group5" ControlToValidate="txtInvestgationcode" class="error-message"></asp:RequiredFieldValidator>

													</div>

												</div>

											</div>--%>

											<div class="col-lg-4 no-padding">
												<b>Investigation Name</b>
												<div class="input-group">
													<asp:TextBox ID="txtInvestigationName" runat="server" CssClass="form-control" ValidationGroup="group5"></asp:TextBox>
													<ajaxToolkit:AutoCompleteExtender ServiceMethod="GetInvestigations"
														MinimumPrefixLength="1"
														CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
														TargetControlID="txtInvestigationName"
														ID="AutoCompleteExtender2" runat="server" FirstRowSelected="false">
													</ajaxToolkit:AutoCompleteExtender>
													<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select Investigation" ControlToValidate="txtInvestigationName" ValidationGroup="group5" class="error-message"></asp:RequiredFieldValidator>
													<div class="input-group-btn">

														<asp:Button ID="btnInvestigation" runat="server" Text="Recommend Test" class="btn btn-success" ValidationGroup="group5" OnClick="btnInvestigation_Click" />


													</div>
												</div>

												<!-- /input-group -->
											</div>


										

										<div class="">


											<asp:GridView ID="gdInvestigation" runat="server" AllowSorting="false" OnSorting="gdInvestigation_Sorting" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" >
												<Columns>
												<%--	<asp:TemplateField Visible="false">
														<ItemTemplate>
															<asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
														</ItemTemplate>
													</asp:TemplateField>--%>
													<asp:BoundField DataField="investigationName" HeaderText="Investigation Name" />
													<asp:BoundField DataField="datetime" HeaderText="Date & Time" />

												<%--	<asp:TemplateField>
														<ItemTemplate>

															<asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
															<asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" ValidationGroup="tpn" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
														</ItemTemplate>
													</asp:TemplateField>--%>
												</Columns>


											</asp:GridView>

										</div>


										<%--<div class="row">
											<div class="col-lg-12">
												<h4>Previous Investigation List</h4>
												<div class="table-responsive no-padding">



													<asp:GridView ID="gdInvestigation1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover">
														<Columns>
															<asp:TemplateField>
																<ItemTemplate>
																	<asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
																</ItemTemplate>
															</asp:TemplateField>

															<asp:BoundField DataField="investigationCode" HeaderText="Investigation Code" />
															<asp:BoundField DataField="investigationName" HeaderText="Investigation Name" />

														</Columns>


													</asp:GridView>

												</div>
											</div>
										</div>--%>
									
         </div>
         </div>
</asp:Content>

