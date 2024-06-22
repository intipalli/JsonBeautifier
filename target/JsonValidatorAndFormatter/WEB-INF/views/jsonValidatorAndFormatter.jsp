<!DOCTYPE html>
<html>
<head>
  <title>BUDDI AI</title>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
   

  <link href="${pageContext.request.contextPath}/resources/css/codemirror.css" rel="stylesheet" type="text/css" />
  
  
  <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
  
  
	
</head>
<body>
  <nav class="navbar navbar-inverse" style="background-color:#1c2833;">
    <a class="navbar-brand" href="https://www.buddi.ai/">
      <img src="Logo.png" height="25" alt="logo">
    </a>
    <ul class="navbar-nav">
      <li class="nav-item">
        { JSON formatter }
      </li>
    </ul>
  </nav>

  <div class="row no-gutters">

    <div class="col-md-5 no-gutters">

      <div class="leftSide px-4 py-4">
        <label class="text-danger">Input JSON</label>
        <textarea id="json" ></textarea>
      </div>
    </div>

    <div class="col-md-2 no-gutters">
      <div class="middle d-flex justify-content-center align-items-center">
        <div>
          <button id="format" class="btn btn-md btn-success">FORMAT </button>
        </div>
      </div>
    </div>

    <div class="col-md-5 no-gutters">
      <div class="rightSide px-4 py-4">
        <label class="text-danger">Formatted JSON</label>

        <pre id="result" style="background-color:white;" class='text-dark'></pre>

      </div>
    </div>

  </div>
   <script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  
  <script src="${pageContext.request.contextPath}/resources/js/codemirror.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/javascript.js"></script>
  
  
  <script src="${pageContext.request.contextPath}/resources/js/jsonlint.js"></script>

  <script src="${pageContext.request.contextPath}/resources/js/jquery.json-editor.min.js"></script>
  
  
  
  <script>
    var json = CodeMirror.fromTextArea(document.getElementById("json"), {
      mode:"javascript",

     lineNumbers: true,
     lineWrapping: true,
   });
   json.setSize(null, "100vh");

      function getJson() {
        try {
          return jsonlint.parse(json.getValue());

        } catch (ex) {
          $("#result").html(ex);
        }
      }
      $(document).ready(function() {
        $("#format").click(function() {
          if (json.getValue().trim() != '') {


            var editor = new JsonEditor('#result', getJson());
            editor.load(getJson());
            getJson();
          } else {
              $("#result").html("Empty JSON Input");

              }
        });
      });
    </script>
</body>
</head>

</html>
