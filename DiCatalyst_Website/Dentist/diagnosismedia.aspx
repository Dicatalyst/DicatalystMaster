<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/diagnosismenu.master" AutoEventWireup="true" CodeFile="diagnosismedia.aspx.cs" Inherits="Dentist_diagnosismedia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" Runat="Server">
    <div class=" tab-pane" id="Media1">


									<div class="pull-right">
										<asp:Button ID="btnMedia" runat="server" Text="Save" class="btn btn-success" ValidationGroup="group2" OnClick="btnMedia_Click" />
										<asp:Button ID="btnPrint7" runat="server" Text="Preview & Print" class="btn btn-success" />

									</div>


									<div class="box-body">
										<div class="row">

											<div class="col-lg-2">
												<div class="form-group">
													<b>Date</b>


													<asp:TextBox ID="txtDate" runat="server" class="form-control"></asp:TextBox>
													<ajaxToolkit:CalendarExtender ID="CalendarExtender4" TargetControlID="txtDate" PopupButtonID="txtDate" runat="server"></ajaxToolkit:CalendarExtender>
													<div class="form-group has-error">

														<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Enter Date" ControlToValidate="txtDate" class="error-message" ValidationGroup="group2"></asp:RequiredFieldValidator>

													</div>

												</div>

											</div>
											<div class="col-lg-7">
												<div class="form-group">
													<b>Description</b>

													<asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"></asp:TextBox>

													<div class="form-group has-error">

														<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Enter Description" ControlToValidate="txtDescription" class="error-message" ValidationGroup="group2"></asp:RequiredFieldValidator>
													</div>


												</div>

											</div>
											<div class="col-lg-3">
												<div class="form-group">
													<div class="form-group">
														<b>Upload Files</b>

														<asp:FileUpload ID="uploadFile" runat="server" />

														<div class="form-group has-error">

															<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Select File" ControlToValidate="uploadFile" class="error-message" ValidationGroup="group2"></asp:RequiredFieldValidator>

														</div>

													</div>
												</div>

											</div>
										</div>




										<div class="box-body table-responsive no-padding">

											<asp:GridView ID="gdMedia" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="gdMedia_RowCommand">

												<Columns>
													<asp:TemplateField>
														<ItemTemplate>
															<asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
														</ItemTemplate>
													</asp:TemplateField>


													<asp:BoundField DataField="date" HeaderText="Date" />
													<asp:BoundField DataField="description" HeaderText="Description" />
													<asp:BoundField DataField="uploadFile" HeaderText="file" />

													<asp:TemplateField>
														<ItemTemplate>


															<asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
															<asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" ValidationGroup="Media" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
														</ItemTemplate>
													</asp:TemplateField>
												</Columns>


											</asp:GridView>


										</div>
									</div>

								</div>
</asp:Content>

