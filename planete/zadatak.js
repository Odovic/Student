function naUlazakMisa(element)
{
    var el=document.getElementById(element);
    el.style.display="block";
}
function naizlazakMisa(element)
{
    var el=document.getElementById(element);
    el.style.display="none";
}
function naklik(){
    window.location="./planeta.html";
}
function viseOPlaneti(element)
{
    
    var el=document.getElementById(element);
    el.style.display="block";
}
function submitNaKlik()
{
    var password=document.getElementById('password').values;
    if(password.length<8)
    {
        alert("Lozinka mora biti najmanje 8 karaktera");
    }
}