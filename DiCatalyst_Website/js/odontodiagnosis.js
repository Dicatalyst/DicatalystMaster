function open_container() {

    $('#treatmentPlan').modal('show');

}

$(function () {
    $('.validate-form').scrupulous();
    $('.callback-form').scrupulous({
        valid: function () {
            alert('Valid Callback - Submit the Form');
            return true;
        },
        invalid: function () {
            alert('Invalid Callback -  Stop the Form');
            return false;
        }
    });

});

$(document).ready(function () {

    var regions = [
        {
            "region_name": "T1      ",
            "region_code": "T1      ",
            "population": "test"
        },
        {
            "region_name": "T2      ",
            "region_code": "T2     ",
            "population": "test"
        },
        {
            "region_name": "T3      ",
            "region_code": "T3      ",
            "population": "test"
        },
        {
            "region_name": "T4      ",
            "region_code": "T4      ",
            "population": "test"
        },
        {
            "region_name": "T5      ",
            "region_code": "T5      ",
            "population": "test"
        },
        {
            "region_name": "T6      ",
            "region_code": "T6      ",
            "population": "test"
        },
        {
            "region_name": "T7      ",
            "region_code": "T7      ",
            "population": "test"
        },
        {
            "region_name": "T8      ",
            "region_code": "T8      ",
            "population": "test"
        },
        {
            "region_name": "T9      ",
            "region_code": "T9      ",
            "population": "test"
        },
        {
            "region_name": "T10     ",
            "region_code": "T10     ",
            "population": "test"
        },
        {
            "region_name": "T11     ",
            "region_code": "T11     ",
            "population": "test"
        },
        {
            "region_name": "T12     ",
            "region_code": "T12     ",
            "population": "test"
        },
        {
            "region_name": "T13     ",
            "region_code": "T13     ",
            "population": "test"
        },
        {
            "region_name": "T14     ",
            "region_code": "T14     ",
            "population": "test"
        },
        {
            "region_name": "T15     ",
            "region_code": "T15     ",
            "population": "test"
        },
        {
            "region_name": "T16     ",
            "region_code": "T16     ",
            "population": "test"
        },
        {
            "region_name": "T17     ",
            "region_code": "T17     ",
            "population": "test"
        },
        {
            "region_name": "T18     ",
            "region_code": "T18     ",
            "population": "test"
        },
        {
            "region_name": "T19     ",
            "region_code": "T19     ",
            "population": "test"
        },
        {
            "region_name": "T20     ",
            "region_code": "T20     ",
            "population": "test"
        },
        {
            "region_name": "T21     ",
            "region_code": "T21     ",
            "population": "test"
        },
        {
            "region_name": "T22     ",
            "region_code": "T22     ",
            "population": "test"
        },
        {
            "region_name": "T23     ",
            "region_code": "T23     ",
            "population": "test"
        },
        {
            "region_name": "T24     ",
            "region_code": "T24     ",
            "population": "test"
        },
        {
            "region_name": "T25     ",
            "region_code": "T25     ",
            "population": "test"
        },
        {
            "region_name": "T26     ",
            "region_code": "T26     ",
            "population": "test"
        },
        {
            "region_name": "T27     ",
            "region_code": "T27     ",
            "population": "test"
        },
        {
            "region_name": "T28     ",
            "region_code": "T28     ",
            "population": "test"
        },
        {
            "region_name": "T29     ",
            "region_code": "T29     ",
            "population": "test"
        },
        {
            "region_name": "T30     ",
            "region_code": "T30     ",
            "population": "test"
        },
        {
            "region_name": "T31     ",
            "region_code": "T31     ",
            "population": "test"
        },
        {
            "region_name": "T32     ",
            "region_code": "T32     ",
            "population": "test"
        }
    ];
    var temp_array = regions.map(function (item) {
        return item.population;
    });

    var highest_value = Math.max.apply(Math, temp_array);
    $(function () {
     

        for (i = 0; i < regions.length; i++) {
            $('#' + regions[i].region_code)
                .css({ 'fill': 'rgba(11, 104, 170,' + regions[i].population + ')' })
                .data('region', regions[i]);
        }





        $('.map g').click(function (e) {
            var e = document.getElementById("lstDentalExamination");
            var strExamName = e.options[e.selectedIndex].text;
            var strExamId = e.options[e.selectedIndex].value;
         

            var region_data = $(this).data('region');
          
            if (strExamId == "1") {
                $("#" + region_data.region_code + "path").css("opacity", "0.2");
            }
            if (strExamId == "2") {
                $("#" + region_data.region_code + "path").css("stroke", "green");
                $("#" + region_data.region_code + "path").css("opacity", "0.5");
            }
            if (strExamId == "3") {
                $("#" + region_data.region_code + "path").css("stroke", "#FF6347");
                $("#" + region_data.region_code + "path").css("opacity", "0.5");
            }
            if (strExamId == "4") {
                $("#" + region_data.region_code + "path").css("stroke", "#FFA500");
                $("#" + region_data.region_code + "path").css("opacity", "0.5");
            }
            if (strExamId == "5") {
                $("#" + region_data.region_code + "path").css("stroke", "#FFD700");
                $("#" + region_data.region_code + "path").css("opacity", "0.5");
            }
            if (strExamId == "6") {
                $("#" + region_data.region_code + "path").css("stroke", "#BDB76B");
                $("#" + region_data.region_code + "path").css("opacity", "0.5");
            }
            if (strExamId == "7") {
                $("#" + region_data.region_code + "path").css("stroke", "#DDA0DD");
                $("#" + region_data.region_code + "path").css("opacity", "0.5");
            }
            if (strExamId == "8") {
                $("#" + region_data.region_code + "path").css("stroke", "#FF00FF");
                $("#" + region_data.region_code + "path").css("opacity", "0.5");
            }
            if (strExamId == "9") {
                $("#" + region_data.region_code + "path").css("fill", "black");
                $("#" + region_data.region_code + "path").css("opacity", "0.5");
                $("#" + region_data.region_code + "path").css("stroke", "grey");
            }

            if (strExamId == "10") {
                $("#" + region_data.region_code + "path").css("stroke", "#8A2BE2");
                $("#" + region_data.region_code + "path").css("opacity", "0.5");
            }
            if (strExamId == "11") {
                $("#" + region_data.region_code + "path").css("stroke", "#00FF00");
                $("#" + region_data.region_code + "path").css("opacity", "0.5");
            }
            if (strExamId == "12") {
                $("#" + region_data.region_code + "path").css("stroke", "#006400");
                $("#" + region_data.region_code + "path").css("opacity", "0.5");
            }
            if (strExamId == "13") {
                $("#" + region_data.region_code + "path").css("stroke", "#008080");
                $("#" + region_data.region_code + "path").css("opacity", "0.5");
            }
            if (strExamId == "14") {
                $("#" + region_data.region_code + "path").css("stroke", "#00FFFF");
                $("#" + region_data.region_code + "path").css("opacity", "0.5");
            }
            //getToothExamDetails(region_data.region_code, strExamName, strExamId);   
            getdatadescription(strExamId, strExamName, region_data.region_code);

        });
    });

});


$(document).ready(function () {

    var regions = [
        {
            "region_name": "T1      ",
            "region_code": "T1      ",
            "population": "test"
        },
        {
            "region_name": "T2      ",
            "region_code": "T2     ",
            "population": "test"
        },
        {
            "region_name": "T3      ",
            "region_code": "T3      ",
            "population": "test"
        },
        {
            "region_name": "T4      ",
            "region_code": "T4      ",
            "population": "test"
        },
        {
            "region_name": "T5      ",
            "region_code": "T5      ",
            "population": "test"
        },
        {
            "region_name": "T6      ",
            "region_code": "T6      ",
            "population": "test"
        },
        {
            "region_name": "T7      ",
            "region_code": "T7      ",
            "population": "test"
        },
        {
            "region_name": "T8      ",
            "region_code": "T8      ",
            "population": "test"
        },
        {
            "region_name": "T9      ",
            "region_code": "T9      ",
            "population": "test"
        },
        {
            "region_name": "T10     ",
            "region_code": "T10     ",
            "population": "test"
        },
        {
            "region_name": "T11     ",
            "region_code": "T11     ",
            "population": "test"
        },
        {
            "region_name": "T12     ",
            "region_code": "T12     ",
            "population": "test"
        },
        {
            "region_name": "T13     ",
            "region_code": "T13     ",
            "population": "test"
        },
        {
            "region_name": "T14     ",
            "region_code": "T14     ",
            "population": "test"
        },
        {
            "region_name": "T15     ",
            "region_code": "T15     ",
            "population": "test"
        },
        {
            "region_name": "T16     ",
            "region_code": "T16     ",
            "population": "test"
        },
        {
            "region_name": "T17     ",
            "region_code": "T17     ",
            "population": "test"
        },
        {
            "region_name": "T18     ",
            "region_code": "T18     ",
            "population": "test"
        },
        {
            "region_name": "T19     ",
            "region_code": "T19     ",
            "population": "test"
        },
        {
            "region_name": "T20     ",
            "region_code": "T20     ",
            "population": "test"
        },
        {
            "region_name": "T21     ",
            "region_code": "T21     ",
            "population": "test"
        },
        {
            "region_name": "T22     ",
            "region_code": "T22     ",
            "population": "test"
        },
        {
            "region_name": "T23     ",
            "region_code": "T23     ",
            "population": "test"
        },
        {
            "region_name": "T24     ",
            "region_code": "T24     ",
            "population": "test"
        },
        {
            "region_name": "T25     ",
            "region_code": "T25     ",
            "population": "test"
        },
        {
            "region_name": "T26     ",
            "region_code": "T26     ",
            "population": "test"
        },
        {
            "region_name": "T27     ",
            "region_code": "T27     ",
            "population": "test"
        },
        {
            "region_name": "T28     ",
            "region_code": "T28     ",
            "population": "test"
        },
        {
            "region_name": "T29     ",
            "region_code": "T29     ",
            "population": "test"
        },
        {
            "region_name": "T30     ",
            "region_code": "T30     ",
            "population": "test"
        },
        {
            "region_name": "T31     ",
            "region_code": "T31     ",
            "population": "test"
        },
        {
            "region_name": "T32     ",
            "region_code": "T32     ",
            "population": "test"
        }
    ];

    $.ajax({
        type: "POST",
        url: "Diagnosisadfsaf.aspx/GetToothNumbers",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            if (response.d.length > 0) {


                for (var i = 0; i < response.d.length; i++) {

                    var examid = response.d[i].examid;

                    var toothnumberofpatient = "#" + response.d[i].toothNo;

                    for (j = 0; j < regions.length; j++) {

                        if (examid == "1") {
                            $(toothnumberofpatient).css("opacity", "0.2");
                        }
                        if (examid == "2") {
                            $(toothnumberofpatient).css("stroke", "green");
                            $(toothnumberofpatient).css("opacity", "0.5");
                        }
                        if (examid == "3") {
                            $(toothnumberofpatient).css("stroke", "#FF6347");
                            $(toothnumberofpatient).css("opacity", "0.5");
                        }
                        if (examid == "4") {
                            $(toothnumberofpatient).css("stroke", "#FFA500");
                            $(toothnumberofpatient).css("opacity", "0.5");
                        }
                        if (examid == "5") {
                            $(toothnumberofpatient).css("stroke", "#FFD700");
                            $(toothnumberofpatient).css("opacity", "0.5");
                        }
                        if (examid == "6") {
                            $(toothnumberofpatient).css("stroke", "#BDB76B");
                            $(toothnumberofpatient).css("opacity", "0.5");
                        }
                        if (examid == "7") {
                            $(toothnumberofpatient).css("stroke", "#DDA0DD");
                            $(toothnumberofpatient).css("opacity", "0.5");
                        }
                        if (examid == "8") {
                            $(toothnumberofpatient).css("stroke", "#FF00FF");
                            $(toothnumberofpatient).css("opacity", "0.5");
                        }
                        if (examid == "9") {
                            $(toothnumberofpatient).css("fill", "black");
                            $(toothnumberofpatient).css("opacity", "0.5");
                            $(toothnumberofpatient).css("stroke", "grey");
                        }

                        if (examid == "10") {
                            $(toothnumberofpatient).css("stroke", "#8A2BE2");
                            $(toothnumberofpatient).css("opacity", "0.5");
                        }
                        if (examid == "11") {
                            $(toothnumberofpatient).css("stroke", "#00FF00");
                            $(toothnumberofpatient).css("opacity", "0.5");
                        }
                        if (examid == "12") {
                            $(toothnumberofpatient).css("stroke", "#006400");
                            $(toothnumberofpatient).css("opacity", "0.5");
                        }
                        if (examid == "13") {
                            $(toothnumberofpatient).css("stroke", "#008080");
                            $(toothnumberofpatient).css("opacity", "0.5");
                        }
                        if (examid == "14") {
                            $(toothnumberofpatient).css("stroke", "#00FFFF");
                            $(toothnumberofpatient).css("opacity", "0.5");
                        }



                    }
                }
            }

        },

        failure: function (response) {
            alert("failure");
        },
        error: function (response) {
            alert("failure error");
        }
    });



});


function getdatadescription(strExamId, strExamName, strToothNumber) {

    var obj = {};
    obj.strExamId = strExamId;
    obj.strToothNumber = strToothNumber;
    obj.strExamName = strExamName;
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "Diagnosisadfsaf.aspx/getDentalexamdetails",
        data: JSON.stringify(obj),
        dataType: "json",
        success: function (r) {
          
            var records = r.d;
            if (records.length > 0) {
                var lstDentalExamDetails = $("[id*=lstDentalExamDetails]");
                lstDentalExamDetails.empty();
                $.each(r.d,
                    function () {
                        lstDentalExamDetails.append($("<option></option>").val(this['Value']).html(this['Text']));
                    });

                $("#htmltext").html("<h3>" + strExamName + "</h3>");

                $('#popupInfo').show();
                popupInfo(350);

                if (typeof (Storage) !== "undefined") {
                    // Store
                    localStorage.setItem("ExamName", strExamName);
                    localStorage.setItem("toothNumber", strToothNumber);
                    localStorage.setItem("examId", strExamId);


                } else {
                    document.getElementById("result").innerHTML = "Sorry, your browser does not support Web Storage...";
                }


            }
            else {
                getToothExamDetailsForGrid(strToothNumber, strExamName, strExamId);
             
            }

        }
    });
}
$("#lstDentalExamDetails").change(function () {

    var examName;
    var strToothNumber;
    var strExamId;

    if (typeof (Storage) !== "undefined") {

        examName = localStorage.getItem("ExamName");
        strToothNumber = localStorage.getItem("toothNumber");
        strExamId = localStorage.getItem("examId");
    } else {
        examName = "Sorry, your browser does not support Web Storage...";
    }

    var strExamName = examName + " - " + $('option:selected', $(this)).text();

    getToothExamDetailsForGrid(strToothNumber, strExamName, strExamId);

    $('#popupInfo').hide();


});


function getToothExamDetailsForGrid(toothno1, examinationName1, strExamId1) {

    var obj1 = {};
    obj1.strExamId = strExamId1;
    obj1.strToothNumber = toothno1;
    obj1.strExamName = examinationName1;

    $.ajax({
        type: "POST",
        url: "Diagnosisadfsaf.aspx/GetAuthors",
        data: JSON.stringify(obj1),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
         
            $("[id*=gvCustomers] tr").not($("[id*=gvCustomers] tr:first-child")).remove();
            if (response.d.length > 0) {


                for (var i = 0; i < response.d.length; i++) {

                   
                    $("#gvCustomers").append("<tr><td>" +
                        response.d[i].examid +
                        "</td> <td>" +
                        response.d[i].toothNo +
                        "</td> <td>" +
                        response.d[i].examinationName +
                        "</td> <td>" +
                       "<input class='form-control' type='text' Value='" + response.d[i].comments + "'/>" +
                     
                       "</td></tr>");
                }
            }

           
        },

        failure: function (response) {
            alert(response.d);
        },
        error: function (response) {
            alert(response.d);
        }
    });
};




function popupInfo(width, height) {
    var popStyle = document.getElementById("popupInfo").style;
    if (width) popStyle.width = width.toString() + 'px';
    if (height) popStyle.height = height.toString() + 'auto';

    
    popStyle.visibility = 'visible';
}

function getToothExamDetails(toothno, examinationName, strExamId) {


    //Reference the GridView.
    var gridView = $("[id*=gvCustomers]");

    //Reference the first row.
    var row = gridView.find("tr").eq(1);

    //Check if row is dummy, if yes then remove.
    if ($.trim(row.find("td").eq(1).html()) == "") {
        row.remove();
    }

    gridView.each(function () {
        var texto = row.find("td").eq(0).text();
        if (texto == strExamId) {
            var txttooth = row.find("td").eq(1).text();
            txttooth = txttooth + "," + toothno;
            row.find("td").eq(1).html("");
            row.find("td").eq(1).html(txttooth);
        } else {
          
            row = row.clone(true);

           
            setValue(row, 0, "examid", strExamId);
            setValue(row, 1, "toothno", toothno);
          
            setValue(row, 2, "examinationName", examinationName);
         
            gridView.append(row);
        }
    });


    return false;


    function setValue(row, index, toothNo, textbox) {
       
        row.find("td").eq(index).html(textbox);

     
    }

};




function RemoveRow(item) {
    alert("Remove");
    var table = document.getElementById("<%= gvCustomers.ClientID %>");
    table.deleteRow(item.parentNode.parentNode.rowIndex);
    return false;
}

$(document).on('click', '#btnSaveOdonto', function () {
    var data = HTMLtbl.getData($('#gvCustomers'));
    var parameters = {};
    parameters.array = data;

    var request = $.ajax({
        async: true,
        cache: false,
        dataType: "json",
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "Diagnosisadfsaf.aspx/SaveOdontogram",
        data: JSON.stringify(parameters)
    });

    request.done(function (msg) {
        alert("Row saved " + msg.d);
    });

    request.fail(function (jqXHR, textStatus) {
        alert("Request failed: " + textStatus);
    });

});

//function to convert HTML table to jagged array//
var HTMLtbl =
    {
        getData: function (table) {
            var data = [];
          

            table.find('tr').not(':first').each(function (rowIndex, r) {
                var cols = [];
                $(this).find('td').each(function (colIndex, c) {

                    if ($(this).children(':text,:hidden,textarea,select').length > 0) { //text//hidden//textarea//select
                        cols.push($(this).children('input,textarea,select,span').val().trim());
                    }
                        // if dropdown text is needed then uncomment it and remove SELECT from above IF condition// 
                        // else if ($(this).children('select').length > 0)
                        // cols.push($(this).find('option:selected').text());

                    else if ($(this).children(':checkbox').length > 0) {                  // checkbox
                        cols.push($(this).children(':checkbox').is(':checked') ? 1 : 0);
                    }//or true false
                    else {
                        cols.push($(this).text().trim()); // get td Value                               
                    }


                });
                data.push(cols);
            });
            return data;
        }
    }