<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chatbox.aspx.cs" Inherits="chatbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/messsages.css" rel="stylesheet" />

   

    <style>
        .inviteBack {
            /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#ffffff+0,f1f1f1+50,e1e1e1+51,f6f6f6+100;White+Gloss+%231 */
            background: rgb(255,255,255); /* Old browsers */
            background: -moz-linear-gradient(top, rgba(255,255,255,1) 0%, rgba(241,241,241,1) 50%, rgba(225,225,225,1) 51%, rgba(246,246,246,1) 100%); /* FF3.6-15 */
            background: -webkit-linear-gradient(top, rgba(255,255,255,1) 0%,rgba(241,241,241,1) 50%,rgba(225,225,225,1) 51%,rgba(246,246,246,1) 100%); /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(to bottom, rgba(255,255,255,1) 0%,rgba(241,241,241,1) 50%,rgba(225,225,225,1) 51%,rgba(246,246,246,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            border: 3px solid #ccc;
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#f6f6f6',GradientType=0 ); /* IE6-9 */
        }

            .inviteBack:hover {
                /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#f2f9fe+0,d6f0fd+100;White+3D+%232 */
                background: rgb(242,249,254); /* Old browsers */
                background: -moz-linear-gradient(top, rgba(242,249,254,1) 0%, rgba(214,240,253,1) 100%); /* FF3.6-15 */
                background: -webkit-linear-gradient(top, rgba(242,249,254,1) 0%,rgba(214,240,253,1) 100%); /* Chrome10-25,Safari5.1-6 */
                background: linear-gradient(to bottom, rgba(242,249,254,1) 0%,rgba(214,240,253,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
                filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f2f9fe', endColorstr='#d6f0fd',GradientType=0 ); /* IE6-9 */

               
            }

        .info-box-icon {
            border-top-left-radius: 0px;
            border-top-right-radius: 0;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 2px;
            display: block;
            float: left;
            height: 90px;
            width: 90px;
            text-align: center;
            font-size: 45px;
            line-height: 80px;
            background: none;
        }

            .info-box-icon img {
                border: 1px solid #c9cccd;
            }

        .img-circle {
            border-radius: 50%;
            width: 80px;
            height: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="container">
            <!-- Content Header (Page header) -->


            <!-- Main content -->

            <div class="row">
                <div class="box box-default">
                    <div class="box-body">

                        <div class="row" style="padding: 16px;" >
                            <asp:DataList ID="dlInvitations" runat="server" RepeatLayout="Flow" OnItemCommand="DataList2_ItemCommand">
                                <ItemTemplate>
                                    <div class="col-md-3 col-sm-6 col-xs-12 inviteBack" style="width: 300px">
                                        <span class="info-box-icon">
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("picture","~/images/{0}") %>' CssClass="img-circle" />
                                        </span>

                                        <div class="info-box-content">
                                            <span class="info-box-text">

                                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("fullName") %>'></asp:Literal>
                                            </span>
                                            <span class="info-box-number">90<small>%</small></span>


                                            <asp:LinkButton ID="lnkAcceptInvitation" CssClass="btn btn-info" CommandArgument='<%# Eval("uniqueRandomId")%>' CommandName="AcceptRequest" runat="server">Accept</asp:LinkButton>

                                            <asp:LinkButton ID="lnkIgnoreInvitation" CssClass="btn btn-info" CommandArgument='<%# Eval("uniqueRandomId")%>' CommandName="IgnoreRequest" runat="server">Ignore</asp:LinkButton>


                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>



                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <div class="container-fluid">


                            <div class="card m-b-0" id="messages-main" style="box-shadow: 0 0 40px 1px #c9cccd;">
                                <div class="ms-menu" style="overflow: scroll; overflow-x: hidden;" id="ms-scrollbar">
                                    <div class="ms-block">
                                        <div class="ms-user">

                                            <asp:Image ID="imgLogInUser" runat="server" />
                                            <h5 class="q-title" align="center">
                                                <asp:Label ID="lblLoginUser" runat="server" Text="Label"></asp:Label>
                                                <br />
                                               
                                        </div>
                                    </div>
                                    <div class="ms-block">
                                        <%--<asp:LinkButton class="btn btn-primary btn-block ms-new" ID="LinkButton2" runat="server" onclick="open_container();">Invite Users</asp:LinkButton>--%>
                                        
                                        <div class="input-group input-group-sm">
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email to Invite Users"></asp:TextBox>
                                            <span class="input-group-btn">
                                                
                                                <asp:LinkButton class="btn btn-info " ID="lnkInviteUsers" runat="server" OnClick="lnkInviteUsers_OnClick"><i class="fa fa-plus"></i></asp:LinkButton>
                                    
                                            </span>

                                        </div>
                                        
                                        


                                    </div>
                                    <hr style="margin-bottom: 5px; margin-top: 5px;" />
                                    <div class="listview lv-user m-t-20">
                                        <asp:DataList ID="dlFriends" runat="server" OnItemCommand="dlFriends_ItemCommand">
                                            <ItemTemplate>
                                                <div class="lv-item media">
                                                    <div class="lv-avatar pull-left">
                                                 
                                                        <asp:Image ID="imgFriend" runat="server" ImageUrl='<%# Bind("picture","~/images/{0}") %>' CssClass="img-circle" />
                                                        
                                                        
                                                      


                                                     
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="lv-title">
                                                        </div>
                                                        <asp:LinkButton ID="lnkClickFriend" runat="server" Text='<%# Eval("fullName") %>' CommandArgument='<%# Eval("uniqueRandomId")%>' CommandName="clickOnFriend"></asp:LinkButton>
                                                        <span class="c-black">
                                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label><span style="margin-left: 8px; position: absolute; margin-top: 8px; width: 8px; height: 8px; line-height: 8px; border-radius: 50%; background-color: #80d3ab;"></span></span>
                                  


                                                    </div>

                                                </div>
                                            </ItemTemplate>
                                        </asp:DataList>


                                    </div>
                                    
                                    
                                    
                                  
                                        
                                     
                                            
                                           
                                    
                                </div>
                                <div class="ms-body">
                                    <div class="listview lv-message">
                                        <div class="lv-header-alt clearfix">
                                            <div id="ms-menu-trigger">
                                                <div class="line-wrap">
                                                    <div class="line top">
                                                    </div>
                                                    <div class="line center"></div>
                                                    <div class="line bottom"></div>
                                                </div>
                                            </div>
                                            <div class="lvh-label hidden-xs">
                                                <div class="lv-avatar pull-left">

                                                    <asp:Image ID="Image3" runat="server" />
                                                </div>
                                                <span class="c-black">
                                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label><span style="margin-left: 8px; position: absolute; margin-top: 12px; width: 8px; height: 8px; line-height: 8px; border-radius: 50%; background-color: #80d3ab;"></span></span>
                                            </div>

                                        </div>
                                        <div class="lv-body" id="ms-scrollbar" style="overflow: scroll; overflow-x: hidden; height: 520px;">
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                     <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>
                                                    <asp:DataList ID="DataList3" runat="server" OnItemDataBound="DataList3_OnItemDataBound">
                                                        <ItemTemplate>
                                                            <div class="lv-item media">
                                                                <div class="lv-avatar pull-left">

                                                                    <asp:Image ID="Image4" runat="server" ImageUrl='<%# Bind("picture","~/images/{0}") %>' />
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="ms-item">
                                                                        <asp:HiddenField ID="hfdSenderId" Value='<%# Bind("senderId") %>' runat="server" />
                                                                        <asp:Literal runat="server" id="ltlName" Text='<%# Bind("fullName") %>'></asp:Literal><br />
                                                                        <span class="glyphicon glyphicon-triangle-left" style="color: #000000;"></span>
                                                                        <asp:Label ID="Message" runat="server" Text='<%# Bind("message") %>'></asp:Label>
                                                                    </div>
                                                                    <small class="ms-date"><span class="glyphicon glyphicon-time"></span>&nbsp;
                                                                            <asp:Label ID="Date" runat="server" Text='<%# Bind("Time") %>'></asp:Label></small>
                                                                </div>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:DataList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>

                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="lv-footer ms-reply">

                                            <asp:TextBox CssClass="textarea" ID="TextBox1" placeholder="Write messages..." runat="server"></asp:TextBox>

                                              <button runat="server" class="button" OnServerClick="OnServerClick" height="" width="">
                                                    <span class="glyphicon glyphicon-send"></span>
                                                </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
            
            
            

        </div>
    </div>
    
 
</asp:Content>

