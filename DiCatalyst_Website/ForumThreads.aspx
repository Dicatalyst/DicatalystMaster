<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForumThreads.aspx.cs" Inherits="ForumThreads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="col-lg-12 col-xs-12">
    <!-- small box -->



    <div class="box box-default" style="border-color: #ef600c">
    <div class="box-header with-border">
    <h3 class="box-title">Forum </h3>
    <button type="button" class="btn btn-info pull-right" onclick="open_container1();">Create Thread</button>
    <a type="button" class="btn btn-info pull-right" href="Forum.aspx" >Create Topic</a>
        
    </div>
    <div class="box-body" style="display: block;">
    <asp:DataList ID="DataList2" Width="100%" runat="server" OnItemDataBound="DataList2_ItemDataBound" >
        <ItemTemplate>


                      
            <div class="box-body ">
                
                <div class="table-responsive no-padding">

                    <asp:GridView ID="grdTopic" runat="server" AutoGenerateColumns="false" CssClass="
                                            table table-striped table-bordered table-hover">

                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:BoundField DataField="topicName" HeaderText="TopicName" />
                            <asp:BoundField DataField="description" HeaderText="Description" />
                            <asp:BoundField DataField="dateTime" HeaderText="DateTime" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                                    <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>


                    </asp:GridView>
                </div>
                

                <div class="row">
                                    

                    <div class="col-lg-12">
                                         

                        <h4>
                            <b>
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("subject") %>'></asp:Literal>
                            </b>
                                     
                        </h4>
                                     
                        <h4>
                            <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("message") %>'></asp:Literal></h4>
                        <h4>
                            <h4>
                                <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("reply") %>'></asp:Literal></h4>
                            <h4>
                                        
                                <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("dateTime") %>'></asp:Literal></h4>
                                         
                                        
                                     
                            <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("dfFile") %>'></asp:Literal></h4>

                    </div>
                                    
                </div>
            </div>
         
                       

        </ItemTemplate>

    </asp:DataList>
        </div>
        

<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="H1"></h4>
            </div>
            <div class="modal-body" id="Div2">


                <div class="box box-primary" style="border-color: #3ae3f5">
                    <div class="box-header with-border">
                        <h3 class="box-title">Create Thread</h3>


                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-lg-12">

                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <b>Subject</b>

                                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <b>Reply </b>

                                        <asp:TextBox ID="txtReply" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <b>Topic Name </b>
                                        <asp:DropDownList ID="ddlTopic" runat="server" CssClass="form-control"></asp:DropDownList>

                                                    
                                    </div>

                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <b>Message</b>

                                        <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <b>Attach File </b>

                                        <asp:FileUpload ID="dfFile" runat="server" />

                                    </div>

                                </div>
                            </div>
                            <div class="pull-right">

                                <asp:Button ID="btnDfThread" runat="server" Text="Save" class="btn btn-info" OnClick="btnDfThread_Click" />

                            </div>
                        </div>
                        <div class="table-responsive no-padding">

                            <asp:GridView ID="grdThread" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" >

                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                                     
                                    <asp:BoundField DataField="subject" HeaderText="Subject" />
                                    <asp:BoundField DataField="message" HeaderText="Message" />
                                    <asp:BoundField DataField="reply" HeaderText="Reply" />
                                    <asp:BoundField DataField="dfFile" HeaderText="DfFile" />
                                    <asp:BoundField DataField="dateTime" HeaderText="DateTime" />
                                            


                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                                            <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>


                            </asp:GridView>
                        </div>
                    </div>


                </div>


            </div>

        </div>
        <!-- /. box -->
    </div>
    <!-- /.col -->


</div>

<!-- /.box-header -->

</div>
<!-- /.box -->

</div>


<script language="javascript">
  
    function open_container1() {

        $('#myModal1').modal('show');

    }
</script>
</asp:Content>

