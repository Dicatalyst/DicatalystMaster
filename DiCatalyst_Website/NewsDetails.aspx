<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsDetails.aspx.cs" Inherits="NewsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content-wrapper">
        <div class="container">
            <!-- Content Header (Page header) -->


            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-lg-9">


                        <div class="box box-default">

                            <div class="box-body">






                                <asp:DataList ID="DataList1" Width="100%" runat="server">
                                    <ItemTemplate>


                                        <!-- Horizontal Form -->
                                      

                                            <div class="box-body">
                                                <div class="row">

                                                    <div class="col-lg-3">

                                                        <asp:Image ID="imgDoctor" runat="server" ImageUrl='<%# Eval("flPicture") %>' CssClass="docprofile" />

                                                    </div>

                                                    <div class="col-lg-9">
                                                        <h5>

                                                            <%# Eval("dateTime") %>
												
                                                        
                                                        </h5>

                                                        <h5>
                                                            <b>
                                                                <%# Eval("title") %>
                                                            </b>
                                                        </h5>


                                                        <h5>

                                                            <%# Eval("description") %>
                                                        </h5>

                                                        <h5>

                                                            <%# Eval("referenceLink") %>
												
                                                      
                                                        </h5>

                                                    </div>



                                                </div>
                                            </div>

                                            </form>
                                      


                                    </ItemTemplate>
                                </asp:DataList>


                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">


                        <div class="box box-default">

                            <div class="box-body">





                                <asp:Repeater ID="Repeater1" runat="server">
                                    <HeaderTemplate>
                                        <ul class="products-list product-list-in-box">
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <li class="item">
                                            <div class="product-img">
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flPicture") %>' />

                                            </div>
                                            <div class="product-info">
                                                <a href="javascript:void(0)" class="product-title"><%# Eval("title") %>
                                                    <span class="product-description">
                                                        <%# Eval("description") %>
                                                    </span>
                                            </div>
                                        </li>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </ul>
                                    </FooterTemplate>
                                </asp:Repeater>

                            </div>


                        </div>


                    </div>



                </div>
            </section>
        </div>
    </div>


</asp:Content>

