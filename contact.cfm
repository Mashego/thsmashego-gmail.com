<cfparam name="form.submitted" default="0" />
<cfparam name="form.name" default="" />
<cfparam name="form.email" default="" />
<cfparam name="form.phone" default="" />
<cfparam name="form.message" default="" />


<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
	<title>Contact Us</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css"  href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.0/css/bulma.min.css" href="styles/helpers.css">
	<link rel="stylesheet" 
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.0/css/bulma.min.css">
	<script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

	<style>
    	.small {font-size:.75em;}
    	#myChatArea {

    		display:block;
    		overflow:scroll;
    		border:1px solid black;
    		width: 375px;
    		height: 375px;
    		margin-bottom: 10px;
    	}
    	#myMessage {
    		width: 270px;
    	}
    	#myButton {
    		width:100px;
    	}
    	.card{
    		max-width: 380px;
    	}

      input[type=text], select, textarea {
      width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 7px;
        resize: vertical;
    }

    input[type=button], input[type=submit], input[type=reset] {
        background-color: black;
        border: none;
        color: white;
        padding: 16px 32px;
        text-decoration: none;
        margin: 4px 2px;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: black;
    }

body {
  padding-top: 70px; 
}

h1{
  font-family: Georgia;
  color: black;

}

h2{
  font-family: Giorgia;
}


form {
  padding-right: 20px;

}

th {
  font-family: Georgia;
  padding: 20px;
  background-color: black;
}

table, th, td {
  border: 1px solid black;
  width: 80%;
  height: 30px;
}

img {
  width: 300px;

}

.thumbnail {
  padding: 0 0 15px 0;
  border: none;
  border-radius: 0;
}

.thumbnail img {
  width: 100%;
  height: 100%;
  margin-bottom: 10px;
}
.fa {
  padding: 20px;
  font-size: 30px;
  width: 50px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}

.fa:hover {
    opacity: 0.7;
}

    

      .footer {
        position: fixed;
        left: 0;
        bottom: 0;
        width: 100%;
        background-color: black;
        color: white;
        text-align: center;
    }

    </style>

</head>
<body>
	<nav class="navbar is-fixed-top is-active" role="navigation" aria-label="main navigation">
      <div class="navbar-brand">
        <a class="navbar-item" href="homepage.cfm">
        </a>
        <a class="navbar-item" href="homepage.cfm"><p class="title is-4">Ntsane Trading and Projects</p></a>

        <a role="button" class="navbar-burger burger" aria-label="    menu" aria-expanded="false" data-target="navbarApp">
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
        </a>
      </div>
      <div id="navbarApp" class="navbar-menu">
        <!---<div class="navbar-start">
        </div>--->
      
          <div class="navbar-end">
              <div class="navbar-item">
               <div class="buttons">
                 <a class="button is-light" href="homepage.cfm">
                   <strong>Home</strong>
                  </a>
                 <a class="button is-light" href="aboutus.cfm">
                   About Us
                  </a>
                  <a class="button is-light" href="services.cfm">
                   Services
                  </a>
                  <a class="button is-light" href="contact.cfm">
                   Contact
                  </a>
                </div>
              </div>
          </div>
      </div>    
  </nav><br><br><br>

  <div class="container">
  


  <h1 style="margin-left:20px">Contact Us</h1><br>
  
    <div class="rows">
      <div class="col-lg-5 col-md-5">
        <div class="contact-details">
          <p style="text-align:left" "font-size: xx-large;"><span class="glyphicon glyphicon-map-marker"></span>NTSANE TRADING & CONSTRUCTION SERVICES</p>
          <p>
            Interested in doing business with us? Our business hours are M-F:</p>
            <p>
              8am-17Hoo. Get in touch with us today. 
            </p>
              <p>
                Tshwane, South Africa
              </p>
          <p><span class="glyphicon glyphicon-phone"></span>Motollo: 0738569786 or Dikeledi: 0738569786</p>
          <p><span class="glyphicon glyphicon-envelope"></span>dmasangane9@gmail.com</p>
        <p>
          
        </p>
        </div>
      </div>
      <div class="clr hline">&nbsp;</div>
      <div class="left">
        <div class="clr">
          <div id="respond">

            <cfif form.submitted>
              <cfset ok = true />
              <cfif NOT len(trim(form.name))>
                <cfset ok = false />
              </cfif>
              <cfif NOT len(trim(form.email))>
                <cfset ok = false />
              </cfif>
              <cfif NOT len(trim(form.phone))>
                <cfset ok = false />
              </cfif>
              <cfif NOT len(trim(form.message))>
                <cfset ok = false />
              </cfif>
              <cfif !ok>
                <p>You did not provide all the required information!</p>
              <cfelse>
                <p>Form Submitted Successfully!</p>
              </cfif> 
            </cfif>
            <div id="post_message" class="post_message"></div>
    
            <div class="boxBody">       
              <div class="desc">
                
                <cfoutput>
                <div class="col-lg-7 col-md-7">
                  <form id="form" method="post" action="?">
                    <a name="thank-you"></a>
                    <input name="name" id="name" placeholder="name" type="text" value="#form.name#" /></p>
                    <input name="email" id="email" placeholder="email addrees" type="text" value="#form.email#" /></p>
                    <input name="phone" id="phone" placeholder="contact number" type="text" value="#phone#"></p>
                    <textarea name="message" id="message" placeholder="your inquiry">#form.message#</textarea></p>
                    <input name="action" value="Send" type="submit"></button>
                  </form>
                </div>
                </cfoutput>
              </div>
            </div>
            <div class="clr"></div>
          </div>
        </div>
      </div>
    </div>


<div class="footer">
  <p>Unknown Existence</p>
</div>



<script
  src="http://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>



</body>
</html>

  <div class="footer">
     <p>Ntsane Trading and Projects(PTY)LTD.</p>
  </div>

</body>
</html>