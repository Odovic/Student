window.onload = function () {
    getCountyCity(0);
}

function getCountyCity(country) {
    var xhr = new XMLHttpRequest();

    xhr.onreadystatechange = function () {
        if(this.readyState === 4 && this.status === 200) {
            let selectDiv = document.getElementById("city");
            selectDiv.innerHTML = this.responseText;
        }
    }

    xhr.open("GET", "/getCity.php?country="+country);
    xhr.send();
}

function selectedCountryChanged(e) {
    getCountyCity(e.value);
}

function validationForm() {
    var organizer = document.getElementById("organizer");
    var country = document.getElementById("country");
    var city = document.getElementById("city");
    var number_participants = document.getElementById("number_participants");
    var date = document.getElementById("date");

    if(organizer.value === "" || organizer.value.length < 3 || country.selectedIndex <= 0 || city.selectedIndex <=0 || number_participants.value === "" || date.value === "") {
        alert("Forma nije ispravno popunjena!");
        return false;
    }
}

function resetForm() {
    var organizer = document.getElementById("organizer");
    var country = document.getElementById("country");
    var city = document.getElementById("city");
    var number_participants = document.getElementById("number_participants");
    var note = document.getElementById("note");

    organizer.value = "";
    organizer.classList.add("wrong-input");

    country.selectedIndex = 0;
    country.classList.add("wrong-input");

    city.selectedIndex = 0;
    city.classList.add("wrong-input");

    number_participants.value = "";
    number_participants.classList.add("wrong-input");

    note.value = "";
    note.classList.add("wrong-input");
}

function redirectToTable() {
    window.location.href="protestTable.php";
}