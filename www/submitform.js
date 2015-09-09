
function submitform(goList)
{
  var form = document.createElement("form");
  form.setAttribute("method", "post");
  form.setAttribute("action", "http://revigo.irb.hr/");
  
  form.setAttribute("target", "_blank");
    
  var hiddenField = document.createElement("input");
  hiddenField.setAttribute("type", "hidden");
  hiddenField.setAttribute("name", "inputGoList");
  hiddenField.setAttribute("value", goList);
  form.appendChild(hiddenField);

 
  document.body.appendChild(form);
  form.submit();
}

