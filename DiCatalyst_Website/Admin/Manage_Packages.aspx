<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Packages.aspx.cs" Inherits="Admin.Admin_Manage_Packages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="col-lg-12 col-xs-12">
   
            <div class="box box-default" style="border-color: #1e282c;">
                <div class="box-header with-border">
                    <h3 class="box-title">Manage Packages</h3>

                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">
                    <div class="box-body table-responsive no-padding">
                        
                        <div class="col-lg-12">

                            <div class="row">


                                <div class="col-lg-6">

                                    <div class="form-group has-feedback">
                                        <asp:TextBox ID="txtPackageName" runat="server" class="form-control" placeholder="Package Name"></asp:TextBox>

                                        <span class=" form-control-feedback"></span>

                                    </div>
                                    <div class="form-group has-feedback">
                                        <asp:TextBox ID="txtPackageCost" runat="server" class="form-control" placeholder="Package Cost in Rs."></asp:TextBox>


                                        <span class=" form-control-feedback"></span>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <asp:TextBox ID="txtDuration" runat="server" cssclass="form-control" placeholder="Duration in Months"></asp:TextBox>


                                    </div>
                                    <div class="form-group has-feedback">
                                        <asp:TextBox ID="txtDescription" TextMode="MultiLine" runat="server" cssclass="form-control" placeholder="Description"></asp:TextBox>


                                    </div>
                                  
                                     <div class="form-group has-feedback">
                                         <asp:LinkButton ID="LinkButton1" CssClass="btn btn-info" style="background-color: #3ae3f5; border-color: #3ae3f5;" runat="server" OnClick="LinkButton1_Click">Save</asp:LinkButton>
                                    </div>
                                      <div class="form-group has-feedback">
                                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="packageName" HeaderText="packageName" SortExpression="packageName" />
                                                  <asp:BoundField DataField="packageCost" HeaderText="packageCost" SortExpression="packageCost" />
                                                  <asp:BoundField DataField="DurationInMonths" HeaderText="DurationInMonths" SortExpression="DurationInMonths" />
                                                  <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                              </Columns>
                                          </asp:GridView>
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dicatalyst %>" SelectCommand="SELECT [packageName], [packageCost], [DurationInMonths], [Description] FROM [dentistPackages]"></asp:SqlDataSource>
                                          </div>
                                </div>
                                


                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
   
</asp:Content>