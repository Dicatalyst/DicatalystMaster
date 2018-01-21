<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="Prognosis.aspx.cs" Inherits="Dentist_Prognosis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .inl {
            display: inline-block;
            height: 40px;
            width: 40px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div class="col-lg-12 col-xs-12">



<div class="box box-primary" style="border-color: #3c8dbc">

<div class="box-header with-border">

    <h3 class="box-title">Prognosis </h3>

</div>

<!-- /.box-header -->
<div class="box-body" style="display: block;">


<div class="row">
    <div class="col-lg-2">
        <asp:Label ID="Label1" runat="server" Text="Furcation Involment"></asp:Label>
    </div>

    <div class="col-lg-5">

        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control inl"></asp:TextBox>


    </div>


    <div class="col-lg-5">

        <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox16" runat="server" CssClass="form-control inl"></asp:TextBox>


    </div>

</div>

<br/>

<div class="row ">
    <div class="col-lg-2">
        <asp:Label ID="Label2" runat="server" Text="Mobility"></asp:Label>
    </div>

    <div class="col-lg-5">

        <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox22" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox23" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox24" runat="server" CssClass="form-control inl"></asp:TextBox>


    </div>


    <div class="col-lg-5">

        <asp:TextBox ID="TextBox25" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox26" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox27" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox28" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox29" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox30" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox31" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox32" runat="server" CssClass="form-control inl"></asp:TextBox>


    </div>
</div>

<br/>


<div class="row ">
    <div class="col-lg-2">
        <asp:Label ID="Label3" runat="server" Text="Reccession"></asp:Label>
    </div>

    <div class="col-lg-5">

        <asp:TextBox ID="TextBox33" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox34" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox35" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox36" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox37" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox38" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox39" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox40" runat="server" CssClass="form-control inl"></asp:TextBox>


    </div>


    <div class="col-lg-5">

        <asp:TextBox ID="TextBox41" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox42" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox43" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox44" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox45" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox46" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox47" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox48" runat="server" CssClass="form-control inl"></asp:TextBox>


    </div>
</div>
<br/>
<br/>

<div class="row ">
    <div class="col-lg-2">
        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
    </div>

    <div class="col-lg-4">
        <div class="box-body table-responsive no-padding">
            <table class="table table-hover">
                <tbody >

                <tr>

                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4 </td>
                    <td>5</td>
                    <td>6</td>
                    <td>7</td>
                    <td>8</td>

                </tr>


                </tbody>
            </table>
        </div>

    </div>

    <div class="col-lg-1">

    </div>
    <div class="col-lg-4">
        <div class="box-body table-responsive no-padding">
            <table class="table table-hover">
                <tbody>

                <tr>

                    <td>9</td>
                    <td>10</td>
                    <td>11</td>
                    <td>12</td>
                    <td>13</td>
                    <td>14</td>
                    <td>15</td>
                    <td>16</td>
                </tr>


                </tbody>
            </table>
        </div>

    </div>
</div>
<br/>

<div class="row ">
    <div class="col-lg-2">
        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
    </div>
    <div class="col-lg-4">
        <div class="box-body table-responsive no-padding">
            <table class="table table-hover">
                <tbody>

                <tr>
                    <td>32</td>
                    <td>31</td>
                    <td>30</td>

                    <td>29 </td>
                    <td>28</td>

                    <td>27</td>
                    <td>26</td>

                    <td>
                        25
                    </td>


                </tr>


                </tbody>
            </table>
        </div>

    </div>

    <div class="col-lg-1">

    </div>
    <div class="col-lg-4">
        <div class="box-body table-responsive no-padding">
            <table class="table table-hover">
                <tbody>

                <tr>
                    <td>24</td>
                    <td>23</td>
                    <td>22</td>
                    <td>21</td>
                    <td>20</td>
                    <td>19</td>
                    <td>18</td>
                    <td>17</td>

                </tr>


                </tbody>
            </table>
        </div>

    </div>
</div>
<br/>
<br/>

<div class="row ">
    <div class="col-lg-2">
        <asp:Label ID="Label4" runat="server" Text="Reccession"></asp:Label>
    </div>

    <div class="col-lg-5">

        <asp:TextBox ID="TextBox49" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox50" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox51" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox52" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox53" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox54" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox55" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox56" runat="server" CssClass="form-control inl"></asp:TextBox>


    </div>


    <div class="col-lg-5">

        <asp:TextBox ID="TextBox57" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox58" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox59" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox60" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox61" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox62" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox63" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox64" runat="server" CssClass="form-control inl"></asp:TextBox>


    </div>
</div>

<br/>


<div class="row ">
    <div class="col-lg-2">
        <asp:Label ID="Label5" runat="server" Text="Mobility"></asp:Label>
    </div>

    <div class="col-lg-5">

        <asp:TextBox ID="TextBox65" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox66" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox67" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox68" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox69" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox70" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox71" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox72" runat="server" CssClass="form-control inl"></asp:TextBox>


    </div>


    <div class="col-lg-5">

        <asp:TextBox ID="TextBox73" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox74" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox75" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox76" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox77" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox78" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox79" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox80" runat="server" CssClass="form-control inl"></asp:TextBox>


    </div>
</div>

<br/>

<div class="row ">
    <div class="col-lg-2">
        <asp:Label ID="Label6" runat="server" Text="Furcation Involment"></asp:Label>
    </div>

    <div class="col-lg-5">

        <asp:TextBox ID="TextBox81" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox82" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox83" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox84" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox85" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox86" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox87" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox88" runat="server" CssClass="form-control inl"></asp:TextBox>


    </div>


    <div class="col-lg-5">

        <asp:TextBox ID="TextBox89" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox90" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox91" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox92" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox93" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox94" runat="server" CssClass="form-control inl"></asp:TextBox>

        <asp:TextBox ID="TextBox95" runat="server" CssClass="form-control inl"></asp:TextBox>
        <asp:TextBox ID="TextBox96" runat="server" CssClass="form-control inl"></asp:TextBox>


    </div>
</div>

<br/>

</div>

</div>

</div>




</asp:Content>