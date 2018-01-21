<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="patient_Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="col-lg-12 col-xs-12">

        <div class="box box-default" style="border-color: #367fa9">
            <div class="box-header with-border">
                <h3 class="box-title">Help</h3>
                
            </div>
            
            <div class="box-body">
                
                <div class="row">
                    
                    <div class="col-lg-4">
                        
                        <div class="form-group">
                            <b>Subject :</b>

                            <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                
                        <div class="form-group">
                            <b>Message :</b>

                            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>

                        </div>

                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-info pull-right"/>
                        

                    </div>
                    
                    <div class="col-lg-8">
                        
                        
                        <div class="row">
                            
                            
                            
                            
                            <div class="box-header with-border">
                                <h3 class="box-title">Questions</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="box-group" id="accordion">
                                    <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                                    <div class="panel box box-primary">
                                        <div class="box-header with-border">
                                            <h4 class="box-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" class="collapsed">
                                                    Questions 1
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                            <div class="box-body">
                                              
                                                <h4> <b> Fusce placerat, tellus eu posuere varius, sapien dui scelerisque velit, ut convallis ligula ipsum vitae magna?</b> </h4>
                                                
                                                <p>
                                                    
                                                    Suspendisse purus erat, tempor eu dictum eget, semper a lorem. Sed at dignissim libero, nec lobortis sem. Proin a velit dolor. Quisque lorem mi, maximus nec suscipit non, volutpat quis leo. Mauris sit amet nulla at mi auctor hendrerit. Nullam eu pretium tortor. Vivamus sed sapien et urna porta malesuada. Nunc pretium ligula sit amet ligula gravida, in laoreet dolor porttitor. Cras facilisis porta diam quis luctus. 

                                                </p>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel box box-danger">
                                        <div class="box-header with-border">
                                            <h4 class="box-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed" aria-expanded="false">
                                                    Questions 2
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                            <div class="box-body">
                                                
                                                <h4><b> Integer eu neque ut nibh mollis euismod et eget ipsum. Proin ut justo molestie, consectetur orci vel, ornare dui?</b> </h4>
                                                
                                                <p>
                                                    
                                                    Suspendisse potenti. Curabitur laoreet odio eget metus sollicitudin, in sagittis felis eleifend. Donec laoreet maximus sapien, quis interdum magna. Vivamus euismod nec tellus eu euismod. Morbi at enim eros. Quisque molestie ornare velit, vel imperdiet odio vestibulum sed. Praesent auctor nisl nisl, vitae pharetra turpis viverra eget. 

                                                </p>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel box box-success">
                                        <div class="box-header with-border">
                                            <h4 class="box-title">
                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed" aria-expanded="false">
                                                    Questions 3
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                            <div class="box-body">
                                              
                                                <h4> <b>In pellentesque eleifend elit non molestie, Nullam maximus vel mi et gravida. Aenean nec feugiat quam? </b> </h4>
                                                
                                                <p>
                                                    
                                                    Curabitur laoreet odio eget metus sollicitudin, in sagittis felis eleifend. Donec laoreet maximus sapien, quis interdum magna. Vivamus euismod nec tellus eu euismod. Morbi at enim eros. Quisque molestie ornare velit, vel imperdiet odio vestibulum sed. Praesent auctor nisl nisl, vitae pharetra turpis viverra eget. 

                                                </p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
          
                            
                            


                        </div>


                    </div>

                </div>

            </div>

        </div>

    </div>
    

</asp:Content>

