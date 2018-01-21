<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> <title></title>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAr8PJdluwfpHD9Hhkd4mB2Jr0xlR1ovME&libraries=places"></script>


    
        <script type="text/javascript">
            google.maps.event.addDomListener(window, 'load', initialize);
            function initialize() {
                var autocomplete = new google.maps.places.Autocomplete(document.getElementById('txtAutocomplete'));
                google.maps.event.addListener(autocomplete, 'place_changed', function () {
                    // Get the place details from the autocomplete object.
                    var place = autocomplete.getPlace();
                    var location = "<b>Address</b>: " + place.formatted_address + "<br/>";
                    location += "<b>Latitude</b>: " + place.geometry.location.A + "<br/>";
                    location += "<b>Longitude</b>: " + place.geometry.location.F;
                    document.getElementById('lblResult').innerHTML = location
                });
            }
        </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
       
        <span>Location:</span>
        <input type="text" id="txtAutocomplete" style="width: 300px" placeholder="Enter your address" /><br /><br />
        <label id="lblResult" />
      
    </div>
    </form>
</body>
</html>
