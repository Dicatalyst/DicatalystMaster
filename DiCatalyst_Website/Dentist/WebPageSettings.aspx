﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="WebPageSettings.aspx.cs" Inherits="Dentist_WebPageSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="col-md-12">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Header</h3>

                <div class="box-tools pull-right">
                    <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-box-tool" data-widget="collapse">
                <i class="fa fa-minus"></i>
                    </asp:LinkButton>
                    <%--<button type="button" class="btn btn-box-tool" data-widget="collapse">
                        <i class="fa fa-minus"></i>
                    </button>--%>
                    <%--  <div class="btn-group">
                  <button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-wrench"></i></button>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>--%>
                </div>
            </div>

            <div class="box-body" style="display: block; padding: 20px;">

                <div class="row">


                    <div class="col-lg-3">
                        <div class="form-group">
                            <asp:Image ID="Image1" Width="200px" runat="server" />

                        </div>
                        <div class="form-group">

                            <asp:FileUpload ID="FileUpload1" runat="server" />

                            <%--         <label for="exampleInputEmail1">Logo</label>--%>
                        </div>
                    </div>
                    <!-- /.col-lg-6 -->
                    <div class="col-lg-9">
                        <div class="form-group">
                            <b>Title</b>
                            <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Title"></asp:TextBox>


                        </div>

                        <div class="form-group">
                            <b>Address</b>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Address"></asp:TextBox>


                        </div>
                        <div class="form-group">
                            <b></b>
                            <asp:TextBox ID="txtMapCode" runat="server" CssClass="form-control" placeholder="Enter Map Code"></asp:TextBox>


                        </div>

                        <asp:GridView ID="GridView2" AutoGenerateColumns="false" CssClass="table table-responsive table-bordered table-hover table-striped" runat="server">
                            <Columns>
                                <asp:BoundField HeaderText="Title" DataField="Title" />
                                <asp:BoundField HeaderText="Address" DataField="Address" />
                                <asp:BoundField HeaderText="MapCode" DataField="MapCode" />
                                <asp:BoundField HeaderText="Logo" DataField="logo" />
                                <asp:TemplateField HeaderText="Edit/Delete">
                                    <ItemTemplate>
                                        Edit/ Delete
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                    <!-- /.col-lg-6 -->


                </div>



            </div>
            <div class="box-footer clearfix">
                <asp:Button ID="Button3" runat="server" Text="Save" CssClass="btn btn-success pull-right" OnClick="Button3_Click" />

            </div>

            <div class="row">


                <div class="col-lg-3" style="text-align:right; font-weight:bold">
                    <asp:Literal runat="server" Text="http://www.dicatalyst.com/websitetemplate/default.aspx?wp="></asp:Literal>
                </div>
                <div class="col-lg-9">
                    <asp:TextBox ID="txtpublicurl" runat="server" CssClass="form-control" placeholder="Public URL"></asp:TextBox>

                </div>



            </div>

            <div class="box-footer clearfix">
                <asp:Button ID="Button5" runat="server" Text="Save" CssClass="btn btn-success pull-right" OnClick="Button5_Click" />

            </div>
        </div>


        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Banners</h3>

                <div class="box-tools pull-right">
                    <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-box-tool" data-widget="collapse">
                <i class="fa fa-minus"></i>
                    </asp:LinkButton>

                </div>
            </div>

            <div class="box-body" style="display: block; padding: 20px;">

                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <b>Caption</b>
                            <asp:TextBox ID="txtCaption" runat="server" CssClass="form-control" placeholder="Caption"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <b>Banner Upload</b>
                            <asp:FileUpload ID="FileUpload2" runat="server" />

                        </div>

                    </div>
                    <!-- /.col-lg-6 -->


                    <!-- /.col-lg-6 -->


                </div>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive table-bordered table-hover table-striped">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="caption" HeaderText="caption" SortExpression="caption" />
                        <asp:BoundField DataField="banner" HeaderText="banner" SortExpression="banner" />
                        <%-- <asp:BoundField DataField="doctorId" HeaderText="doctorId" SortExpression="doctorId" />--%>
                    </Columns>
                </asp:GridView>
                <div class="box-footer">
                    <asp:Button ID="Button4" runat="server" Text="Save" CssClass="btn btn-success pull-right" OnClick="Button4_Click" />

                </div>
                <!-- /.box-header -->
                <%--<div class="box-body table-responsive no-padding">
            <table class="table table-hover">
                <tbody>
                <tr>
                    <th>S.No.</th>
                    <th style="width: 100%;">Caption</th>
                    <th>Banner</th>

                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>Reliable and Accurate Tests</td>
                    <td>
                        <img src="../images/dummy.png" width="100px;"/>
                    </td>
                    <td>
                        <button type="button" class="btn  btn-warning">
                            <i class="fa fa-edit"></i>
                        </button>
                    </td>

                    <td>
                        <button type="button" class="btn  btn-danger">
                            <i class="fa fa-trash-o"></i>
                        </button>
                    </td>

                </tr>
                <tr>
                    <td>2</td>
                    <td>Accurate and On Time Delivery</td>
                    <td>
                        <img src="../images/dummy.png" width="100px;"/>
                    </td>
                    <td>
                        <button type="button" class="btn  btn-warning">
                            <i class="fa fa-edit"></i>
                        </button>
                    </td>

                    <td>
                        <button type="button" class="btn  btn-danger">
                            <i class="fa fa-trash-o"></i>
                        </button>
                    </td>

                </tr>


                </tbody>
            </table>
        </div>--%>
                <!-- /.box-body -->


            </div>
        </div>
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Profile</h3>

                <div class="box-tools pull-right">
                    <asp:LinkButton ID="LinkButton3" runat="server" class="btn btn-box-tool" data-widget="collapse">
                <i class="fa fa-minus"></i>
                    </asp:LinkButton>

                </div>
            </div>

            <div class="box-body" style="display: block; padding: 20px;">

                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <b>Email</b>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" type="tel" placeholder="Enter Email"></asp:TextBox>


                        </div>
                        <div class="form-group">
                            <b>Phone</b>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter Phone No."></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <b>Hotline</b>
                            <asp:TextBox ID="txtHotline" runat="server" CssClass="form-control" placeholder="Enter Hotline" type="text"></asp:TextBox>

                        </div>

                    </div>
                    <!-- /.col-lg-6 -->
                    <div class="col-lg-6">
                        <div class="form-group">

                            <b>About</b>


                            <asp:TextBox ID="txtAbout" placeholder="Place some text here" Style="border: 1px solid #dddddd; font-size: 14px; height: 150px; line-height: 18px; padding: 10px; width: 100%;" TextMode="multiline" runat="server"></asp:TextBox>


                        </div>


                    </div>
                    <%--   <div class="col-lg-12">
                         <div class="form-group">


                            <label for="exampleInputEmail1">Description</label>
                           

                                <textarea class="textarea" placeholder="Place some text here" style="width: 100%; height: 150px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>

                            
                        </div>
                    </div>--%>
                    <!-- /.col-lg-6 -->


                </div>

                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="table table-responsive table-bordered table-hover table-striped">
                    <Columns>
                        <%--<asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />--%>
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:BoundField DataField="phone" HeaderText="Phone" />
                        <asp:BoundField DataField="hotline" HeaderText="Hot Line" />
                        <asp:BoundField DataField="about" HeaderText="About" />
                        <%-- <asp:BoundField DataField="doctorId" HeaderText="doctorId" SortExpression="doctorId" />--%>
                    </Columns>
                </asp:GridView>
            </div>

            <div class="box-footer">
                <asp:Button ID="Button2" runat="server" Text="Save" CssClass="btn btn-success pull-right" OnClick="Button2_Click" />


            </div>
        </div>
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Social Links</h3>

                <div class="box-tools pull-right">
                    <asp:LinkButton ID="LinkButton4" runat="server" class="btn btn-box-tool" data-widget="collapse">
                <i class="fa fa-minus"></i>
                    </asp:LinkButton>

                </div>
            </div>

            <div class="box-body" style="display: block; padding: 20px;">

                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">

                            <b>Facebook</b>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Enter Facebook URL" type="url"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <b>Twitter</b>
                            <asp:TextBox ID="txtTwitter" runat="server" CssClass="form-control" placeholder="Enter Twitter URL" type="url"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <b>Youtube</b>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Enter Youtube URL" type="url"></asp:TextBox>

                        </div>

                    </div>
                    <!-- /.col-lg-6 -->
                    <div class="col-lg-6">
                        <div class="form-group">
                            <b>Google+</b>
                            <asp:TextBox ID="Google" runat="server" CssClass="form-control" placeholder="Google+" type="url"></asp:TextBox>

                        </div>
                        <div class="form-group">

                            <b>LinkedIn</b>
                            <asp:TextBox ID="txtLinkedIn" runat="server" CssClass="form-control" placeholder="Enter LinkedIn URL" type="url"></asp:TextBox>

                        </div>


                    </div>

                    <!-- /.col-lg-6 -->


                </div>


            </div>

            <div class="box-footer">
                <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-success pull-right" OnClick="Button1_Click" />

            </div>
        </div>


    </div>

</asp:Content>
