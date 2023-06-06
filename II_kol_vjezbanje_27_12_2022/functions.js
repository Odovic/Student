window.onload = function ()
{
    izlistaj(0);
}

function izlistaj(year)
{
    console.log(year);

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function ()
    {
      if(this.status == 200 && this.readyState == 4)
      {
          var tabela = document.getElementById("tabelapolozeni");
          tabela.innerHTML = xhr.responseText;
      }
    };

    xhr.open("get", "selectedYear.php?year="+year, true);
    xhr.send();
}
