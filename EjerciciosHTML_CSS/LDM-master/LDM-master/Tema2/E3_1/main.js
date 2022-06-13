var nombre = "";
var apellido1 = "";


function alertUser() {
    alert("Buenos dias " + nombre + " " + apellido1 + "!");
}

function setname(){
    nombre = document.getElementById("nombre").value;
}
function setlname(){
    apellido1 = document.getElementById("apellido1").value;
}