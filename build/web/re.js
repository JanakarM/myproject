
function ajax1()
{
    var name={"UserId":document.getElementById("Userd").value};
     var xmlHttpRequest = new XMLHttpRequest();
  alert ("xmlHttpRequest=" + xmlHttpRequest);
  xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
  xmlHttpRequest.open("POST", "DeleteEmp", false);  
  xmlHttpRequest.setRequestHeader("Content-type", "application/json");
  alert("inside makeRequest()!"); 
  xmlHttpRequest.send(JSON.stringify(name)); 
}
function getReadyStateHandler(xmlHttpRequest) {
  return function() {
      if (xmlHttpRequest.readyState == 4) {
        alert ("xmlHttpRequest=" + xmlHttpRequest);
      if (xmlHttpRequest.status == 200) {
          alert("status=200");
         var jsondata=JSON.parse(xmlHttpRequest.responseText);
        alert(jsondata.msg);
      } else {
        alert("Http error " + xmlHttpRequest.status + ":" + xmlHttpRequest.statusText);
      }
    }
  };
}
function fn4(j)
             {
                 if(j===1)
                 {
                 var x=document.getElementsByName("col");
                 for(i=0;i<x.length;i++)
                 {
                    x[i].checked=false; 
                 }
             }
             else
             {
                  var x=document.getElementsByName("cb");
                 for(i=0;i<x.length;i++)
                 {
                    x[i].checked=false; 
                 }
             }
             }
    function fn3()
    {
        var table=document.getElementsByTagName("table")[0];
        var rows1= table.getElementsByTagName("tr");
        var x=document.getElementsByName("col");
        for(i=0;i<x.length;i++)
        {           
            if(!x[i].checked)
            {
                k=0;
                 rows1[0].getElementsByTagName("th")[x[i].value].style.display="none"; 
                for(k=1;k<rows1.length;k++)
                {
                  rows1[k].getElementsByTagName("td")[x[i].value].style.display="none";  
                }
            }
            else
            {
               k=0;
                 rows1[0].getElementsByTagName("th")[x[i].value].style.display="table-cell"; 
                for(k=1;k<rows1.length;k++)
                {
                  rows1[k].getElementsByTagName("td")[x[i].value].style.display="table-cell";  
                }  
            }
        }
    }
    function fn2(j)
            {
              var table, rows,a, switching, i, x, y, shouldSwitch;
  table = document.getElementsByTagName("table")[0];
  switching = true;
  if(document.getElementById(j+"a").innerHTML==="v")
  {
      document.getElementById(j+"a").innerHTML="^";
      for(i=1;i<9;i++)
      {
          if(i===j)
          {
               document.getElementById(i+"a").style.background="green";
                }
                    else
                document.getElementById(i+"a").style.background="#ddf7ff";
      }
      a="a";
  }
            else
            {
                document.getElementById(j+"a").innerHTML="v";
                 for(i=1;i<9;i++)
      {
          if(i===j)
               document.getElementById(i+"a").style.background="green";
           else
                document.getElementById(i+"a").style.background="#ddf7ff";
      }
       document.getElementById(j+"a").innerHTML="v";
                   a="d";
  }
  while (switching) {
    switching = false;
    rows = table.getElementsByTagName("tr");
    for (i = 1; i < (rows.length - 1); i++) {
      shouldSwitch = false;
      x = rows[i].getElementsByTagName("TD")[j];
      y = rows[i + 1].getElementsByTagName("TD")[j];
       if(a==="a")
       {
                if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
     shouldSwitch= true;
        break;
      }
    }
    else
    {
          if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
     shouldSwitch= true;
        break;
      }
    }
    }
    if (shouldSwitch) {
       rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
    }
  }
  }
 function fn1()
            {
                 document.getElementById("myDropdown").classList.toggle("show");
            }
            function fn6()
            {
                 document.getElementById("myDropdown1").classList.toggle("show");
             }
             function fun2()
            {
                 document.getElementById("myDropdown2").classList.toggle("show");
            }
function fun(k)
{
   document.getElementById("my").innerHTML= document.getElementById("my").innerHTML+"<input type='text' placeholder='"+document.getElementById(k).value+"' id='myInput' onkeypress='handle(event,"+k+")'/>"; 
}
function handle(e,k)
{
    if(e.keyCode===13)
    {
    fun1(k);
    }
}
function fun1(j) {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementsByTagName("table")[0];
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[j];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}