window.onload = function () {
    getPatients(0);
}

function getPatients(country) {
    var xhr = new XMLHttpRequest();

    xhr.onreadystatechange = function() {
        if(this.readyState === 4 && this.status === 200) {
            var tableDiv = document.getElementById("tablePatient");
            tableDiv.innerHTML = this.responseText;
        }
    }

    xhr.open("GET", "/getPatients.php?country="+country);
    xhr.send();
}

function selectionChanged(e) {
    getPatients(e.value);
}

function redirectToAdd() {
    window.location.href="newPatient.php";
}

function validateForm() {
    var first_name = document.getElementById("first_name");
    var last_name = document.getElementById("last_name");
    var birth_date = document.getElementById("birth_date");
    var country = document.getElementById("country");
    var isInfected = document.getElementById("isInfected");
    var notInfected = document.getElementById("notInfected");

    if(first_name.value === "" || last_name.value === "" || birth_date.value === "" ||
        country.selectedIndex < 0 || (isInfected.checked === false && notInfected.checked === false)) {
        alert("All fields are required");
        return false;
    }
}

function resetForm() {
    var first_name = document.getElementById("first_name");
    var last_name = document.getElementById("last_name");
    var birth_date = document.getElementById("birth_date");
    var country = document.getElementById("country");

    first_name.value="";
    last_name.value="";
    birth_date.value="";
    country.selectedIndex=0;
}

function changeColor() {
    var isInfected = document.getElementById("isInfected");
    var addButton = document.getElementById("addButton");

    if(isInfected.checked) {
        addButton.classList.add("infected-button");
    } else {
        addButton.classList.remove("infected-button");
    }
}