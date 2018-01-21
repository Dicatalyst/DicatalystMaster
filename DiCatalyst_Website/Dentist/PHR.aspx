<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PHR.aspx.cs" Inherits="Dentist_PHR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../design/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../design/dist/css/AdminLTE.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="box box-primary" style="border-color: #3ae3f5">
                <div class="box-header with-border">
                    <h3 class="box-title">PHR</h3>
                    <div class="pull-right">

                        <button type="submit" class="btn btn-info" style="background-color: #3ae3f5; border-color: #3ae3f5;">Save</button>
                    </div>


                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col-lg-12">

                            <div class="col-lg-8">                            

                            <div class="box box-default">

                                <div class="box-header">

                                    <h4>
                                        <b>Medical History </b>
                                    </h4>

                                </div>

                                <div class="box-body">

                                        <%--<asp:Repeater ID="Repeater1" runat="server">
                                    <HeaderTemplate>
                                        <ul class="products-list product-list-in-box">
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <li class="item">
                                          
                                            <div class="row">
                                                
                                                <div class="col-lg-4">
                                                    
                                                    <h4><b>Question</b></h4>
                                                    <%# Eval("question") %><br/>

                                                </div>
                                                
                                               
                                                <div class="col-lg-4">
                                                    
                                                    <h4><b>Question Comments</b></h4>
                                                    <%# Eval("qusComments") %><br/>

                                                </div>
                                                
                                                <div class="col-lg-4">
                                                    
                                                    <h4><b>Comments</b></h4>
                                                    <%# Eval("comments") %>

                                                </div>

                                            </div>
                                            
                                          
                                        </li>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </ul>
                                    </FooterTemplate>
                                </asp:Repeater>--%>
                                    </div>

                                </div>


                                <div class="box box-default">

                                    <div class="box-header">

                                        <h4>
                                            <b>Clinical History</b>
                                        </h4>

                                    </div>

                                    <div class="box-body">
                                       
                                        
                                        
                                        <asp:Repeater ID="ClinicalHistory" runat="server">
                                            <HeaderTemplate>
                                                <ul class="products-list product-list-in-box">
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <li class="item">
                                                    <h5><b>Basic Information :</b></h5>

                                                    <div class="row">

                                                        <div class="col-lg-4">

                                                            <h5><b>Weight (in Kg)</b></h5>
                                                            <%# Eval("weight") %><br />
                                                            
                                                            
                                                            <h5><b>Pulse :</b></h5>
                                                            <%# Eval("pulse") %><br />
                                                            
                                                            <h5><b>Allergies :</b></h5>
                                                            <%# Eval("allergies") %><br />
                                                            
                                                          

                                                        </div>


                                                        <div class="col-lg-4">

                                                            <h5><b>BP :</b></h5>
                                                            <%# Eval("bp") %><br />
                                                            
                                                            <h5><b>Oral Habits :</b></h5>
                                                            <%# Eval("oralHabits") %><br />
                                                            
                                                            


                                                        </div>
                                                        
                                                        <div class="col-lg-4">

                                                            <h5><b>Temperature :</b></h5>
                                                            <%# Eval("temperature") %><br />
                                                            
                                                            <h5><b>Current Medication :</b></h5>
                                                            <%# Eval("currentMedications") %><br />
                                                            
                                                          
                                                           

                                                        </div>

                                                    </div>
                                                    
                                                    
                                                    <h5><b>Extra Oral Examination :</b></h5>

                                                    <div class="row">

                                                        <div class="col-lg-4">

                                                            <h5><b>Palpable</b></h5>
                                                            <%# Eval("palpableLymphNode") %><br />
                                                            
                                                            
                                                            <h5><b>Right :</b></h5>
                                                            <%# Eval("rightTmj") %><br />
                                                            
                                                            <h5><b>Deviation on Closing :</b></h5>
                                                            <%# Eval("deviationOnClosing") %><br />
                                                            
                                                          

                                                        </div>


                                                        <div class="col-lg-4">

                                                            <h5><b>If Yes please Explain :</b></h5>
                                                            <%# Eval("palpableLymphNodeComment") %><br />
                                                            
                                                            <h5><b>Left :</b></h5>
                                                            <%# Eval("leftTmj") %><br />
                                                            
                                                            


                                                        </div>
                                                        
                                                        <div class="col-lg-4">

                                                            <h5><b>TMJ :</b></h5>
                                                            <%# Eval("tmj") %><br />
                                                            
                                                            <h5><b>Muscles :</b></h5>
                                                            <%# Eval("muscles") %><br />
                                                            
                                                          
                                                           

                                                        </div>

                                                    </div>
                                                    
                                                    
                                                    <h5><b>Intra Oral Examination :</b></h5>
                                                    
                                                    <div class="row">

                                                        <div class="col-lg-4">

                                                            <h5><b>Pharynx</b></h5>
                                                            <%# Eval("pharynx") %><br />
                                                            
                                                            
                                                            <h5><b>Pulse :</b></h5>
                                                            <%# Eval("hardPalate") %><br />
                                                            
                                                            <h5><b>Buccal Mucosa :</b></h5>
                                                            <%# Eval("buccalMucosa") %><br />
                                                            
                                                            <h5><b>Calculus</b></h5>
                                                            <%# Eval("[calculus]") %><br />
                                                            
                                                            
                                                            <h5><b>Bleeding On Probing :</b></h5>
                                                            <%# Eval("[bleedingOnProbing]") %><br />
                                                            
                                                            <h5><b>condition :</b></h5>
                                                            <%# Eval("[crownCondition]") %><br />
                                                            
                                                          

                                                        </div>


                                                        <div class="col-lg-4">

                                                            <h5><b>Tonsils :</b></h5>
                                                            <%# Eval("tonsils") %><br />
                                                            
                                                            <h5><b>Oral Habits :</b></h5>
                                                            <%# Eval("tongue") %><br />
                                                            
                                                            
                                                            <h5><b>Lips Skin</b></h5>
                                                            <%# Eval("[lipsSkin]") %><br />
                                                            
                                                            
                                                            <h5><b>Plaque :</b></h5>
                                                            <%# Eval("[plaque]") %><br />
                                                            
                                                            <h5><b>Tooth # :</b></h5>
                                                            <%# Eval("[crownToothNo]") %><br />
                                                            
                                                       

                                                        </div>
                                                        
                                                        <div class="col-lg-4">

                                                            <h5><b>Soft Palate :</b></h5>
                                                            <%# Eval("softPalate") %><br />
                                                            
                                                            <h5><b>Floor Of Mouth :</b></h5>
                                                            <%# Eval("floorOfMouth") %><br />
                                                          
                                                            
                                                            <h5><b>Oral Hygiene</b></h5>
                                                            <%# Eval("[oralHygiene]") %><br />
                                                            
                                                            
                                                            <h5><b>Cervical Bleeding :</b></h5>
                                                            <%# Eval("[cervicalBleeding]") %><br />
                                                            
                                                            <h5><b>Date Placed :</b></h5>
                                                            <%# Eval("[crownDatePlaced]") %><br />
                                                            
                                                        </div>

                                                    </div>


                                                </li>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </ul>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                        
                                        
                                        
                                        

                                    </div>
                                </div>


                                <div class="box box-default">

                                    <div class="box-header">

                                        <h4>
                                            <b>Investigations </b>
                                        </h4>

                                    </div>

                                    <div class="box-body">

                                        <asp:Repeater ID="Repeater2" runat="server">
                                            <HeaderTemplate>
                                                <ul class="products-list product-list-in-box">
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <li class="item">

                                                    <div class="row">

                                                        <div class="col-lg-4">

                                                            <h5><b>Investigation Code :</b></h5>
                                                            <%# Eval("investigationCode") %><br />

                                                        </div>


                                                        <div class="col-lg-4">

                                                            <h5><b>Investigation Name :</b></h5>
                                                            <%# Eval("investigationName") %><br />

                                                        </div>


                                                    </div>


                                                </li>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </ul>
                                            </FooterTemplate>
                                        </asp:Repeater>

                                    </div>

                                </div>


                                <div class="box box-default">

                                    <div class="box-header">

                                        <h4>
                                            <b>Diagnosis</b>
                                        </h4>

                                    </div>

                                    <div class="box-body">


                                        <asp:Repeater ID="Repeater3" runat="server">
                                            <HeaderTemplate>
                                                <ul class="products-list product-list-in-box">
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <li class="item">

                                                    <div class="row">

                                                        <div class="col-lg-4">

                                                            <h5><b>Tooth No :</b></h5>
                                                            <%# Eval("toothNo") %><br />

                                                            <h5><b>Description</b></h5>
                                                            <%# Eval("description") %><br />

                                                        </div>


                                                        <div class="col-lg-4">

                                                            <h5><b>Date Time :</b></h5>
                                                            <%# Eval("dateTime") %><br />


                                                            <h5><b>Prognosis :</b></h5>
                                                            <%# Eval("prognosis") %><br />

                                                        </div>



                                                        <div class="col-lg-4">

                                                            <h5><b>Additional Notes :</b></h5>
                                                            <%# Eval("additionalNotes") %><br />

                                                        </div>


                                                    </div>


                                                </li>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </ul>
                                            </FooterTemplate>
                                        </asp:Repeater>


                                    </div>

                                </div>


                                <div class="box box-default">

                                    <div class="box-header">

                                        <h4>
                                            <b>Treatment</b>
                                        </h4>

                                    </div>

                                    <div class="box-body">


                                        <asp:Repeater ID="Repeater4" runat="server">
                                            <HeaderTemplate>
                                                <ul class="products-list product-list-in-box">
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <li class="item">

                                                    <div class="row">

                                                        <div class="col-lg-4">

                                                            <h5><b>Tooth No :</b></h5>
                                                            <%# Eval("toothNo") %><br />

                                                            <h5><b>Fee :</b></h5>
                                                            <%# Eval("fee") %><br />

                                                            <h5><b>Notes to Receptionist :</b></h5>
                                                            <%# Eval("notestoReceptionist") %><br />

                                                        </div>


                                                        <div class="col-lg-4">

                                                            <h5><b>Treatment Advice :</b></h5>
                                                            <%# Eval("treatmentAdvice") %><br />


                                                            <h5><b>Discount :</b></h5>
                                                            <%# Eval("discount") %><br />

                                                        </div>



                                                        <div class="col-lg-4">

                                                            <h5><b>Duration :</b></h5>
                                                            <%# Eval("duration") %><br />

                                                            <h5><b>Amount :</b></h5>
                                                            <%# Eval("amount") %><br />

                                                        </div>


                                                    </div>


                                                </li>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </ul>
                                            </FooterTemplate>
                                        </asp:Repeater>


                                    </div>

                                </div>


                                <div class="box box-default">

                                    <div class="box-header">

                                        <h4>
                                            <b>Prescription</b>
                                        </h4>

                                    </div>

                                    <div class="box-body">
                                        <p>Lorem Ipsum is a dummy text.</p>
                                    </div>
                                </div>


                            </div>
                        </div>

                    </div>


                </div>

            </div>
        </div>
    </form>
</body>
</html>
