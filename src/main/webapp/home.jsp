<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Appointment</title>

<!-- Navigation bar -->
<header class="w-100">
   <nav class="padding-x navbar w-100 between">
      <div class="logo center g-1">
         <a href="./index.html"><img src="./src/assets/logo.png" alt="" width="80px"></a>
      </div>
      <ul class="nav-links center g-2">
         <li><a href="index.html" class="link">Home</a></li>
         <li><a href="#" class="link">About</a></li>
         <li><a href="#" class="link">Make an appointment</a></li>
         <li><a href="#" class="link">Medicine Order</a></li>
         <li>
            <button class="btn btn-secondary">Contact</button>
            <button class="btn btn-main">Join</button>
         </li>
      </ul>
   </nav>
   <nav class="padding-x navbar-bottom w-100 between">
      <div class="flex g-2">
         <p>contact@echannel.com</p>
         <p>+94-715858963</p>
      </div>
      <div class="flex g-1">
           <div class="flex g-1">
               <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  fill="#fff"
                  class="bi bi-facebook"
                  viewBox="0 0 16 16"
               >
                  <path
                     d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951"
                  />
               </svg>
               <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  fill="#fff"
                  class="bi bi-whatsapp"
                  viewBox="0 0 16 16"
               >
                  <path
                     d="M13.601 2.326A7.85 7.85 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.9 7.9 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.9 7.9 0 0 0 13.6 2.326zM7.994 14.521a6.6 6.6 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.56 6.56 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592m3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.73.73 0 0 0-.529.247c-.182.198-.691.677-.691 1.654s.71 1.916.81 2.049c.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232"
                  />
               </svg>
               <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  fill="#fff"
                  class="bi bi-instagram"
                  viewBox="0 0 16 16"
               >
                  <path
                     d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.9 3.9 0 0 0-1.417.923A3.9 3.9 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.9 3.9 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.9 3.9 0 0 0-.923-1.417A3.9 3.9 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599s.453.546.598.92c.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.5 2.5 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.5 2.5 0 0 1-.92-.598 2.5 2.5 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233s.008-2.388.046-3.231c.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92s.546-.453.92-.598c.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92m-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217m0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334"
                  />
               </svg>
               <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  fill="#fff"
                  class="bi bi-twitter-x"
                  viewBox="0 0 16 16"
               >
                  <path
                     d="M12.6.75h2.454l-5.36 6.142L16 15.25h-4.937l-3.867-5.07-4.425 5.07H.316l5.733-6.57L0 .75h5.063l3.495 4.633L12.601.75Zm-.86 13.028h1.36L4.323 2.145H2.865z"
                  />
               </svg>
      </div>
   </nav>
</header>
<!-- End of navigation bar -->

<style>
/* Globel styles */
* {
   padding: 0;
   margin: 0;
   box-sizing: border-box;
   transition: all ease-in-out 0.2s;
   scroll-behavior: smooth;
}

body {
   font-family: "Poppins", sans-serif;
   background-color: #fff;
   color: var(--mainText);
}

/* Classes */
:root {
   --mainBlue: #3fa2f6;
   --darkBlue: #087bd9;
   --mainOrange: #fc8a2d;
   --darkOrange: #f57914;
   --mainGreen: #44cf90;
   --darkGreen: #1ec077;
   --mainText: #222;
   --secondaryText: #6e6e6e;
}

html {
   scroll-behavior: smooth;
}

.padding-x {
   padding-left: 150px;
   padding-right: 150px;
}

.padding-y {
   padding-top: 100px;
   padding-bottom: 100px;
}

.margin-x {
   margin-left: 150px;
   margin-right: 150px;
}

.margin-y {
   margin-top: 100px;
   margin-bottom: 100px;
}

.w-100 {
   width: 100%;
}

.w-50 {
   width: 50%;
}

.h-100 {
   height: 100vh;
}

.pointer {
   cursor: pointer;
}

.flex {
   display: flex;
}

.center {
   display: flex;
   align-items: center;
   justify-content: center;
}

.between {
   display: flex;
   align-items: center;
   justify-content: space-between;
}

.start {
   display: flex;
   align-items: start;
   justify-content: center;
   flex-direction: column;
}

.end {
   display: flex;
   align-items: end;
   justify-content: center;
   flex-direction: column;
}

.column {
   flex-direction: column;
}

.g-1 {
   gap: 10px;
}

.g-2 {
   gap: 20px;
}

.g-3 {
   gap: 30px;
}

.g-5 {
   gap: 50px;
}

.g-7 {
   gap: 70px;
}

.g-10 {
   gap: 100px;
}

.p-1 {
   padding: 10px;
}

.p-2 {
   padding: 20px;
}

.p-3 {
   padding: 30px;
}

.p-4 {
   padding: 40px;
}

.p-5 {
   padding: 50px;
}

.pt-5 {
   padding-top: 50px;
}
.blue {
   color: var(--mainBlue);
}

.btn {
   height: 40px;
   padding-left: 20px;
   padding-right: 20px;
   border: none;
   border-radius: 3px;
   cursor: pointer;
   font-weight: 500;
   font-size: 0.9em;
}

.btn-main {
   background-color: var(--mainBlue);
   color: #fff;
}

.btn-main:hover {
   transform: scale(0.97);
   background-color: var(--darkBlue);
}

.btn-secondary {
   background-color: var(--mainGreen);
   color: #fff;
}

.btn-secondary:hover {
   background-color: var(--darkGreen);
}

/* local styles */
a {
   text-decoration: none;
   color: #222;
}

li {
   list-style: none;
}
p {
   font-weight: 300;
}

/* Normal styles */
/* ------------- */

/* navbar */

header {
   box-shadow: 0 0 7px rgba(0, 0, 0, 0.3);
   z-index: 99999;
   position: fixed;
   top: 0;
   left: 0;
}

header .navbar {
   padding-top: 15px;
   padding-bottom: 10px;
   background-color: #fff;
}

header .navbar .logo a {
   font-weight: 500;
   font-size: 20px;
}

header .navbar button {
   width: 90px;
}

header .navbar .nav-links .link {
   font-size: 14px;
   font-weight: 300;
}

header .navbar-bottom {
   background-color: var(--mainBlue);
   color: #fff;
   height: 35px;
}

header .navbar-bottom p {
   font-size: 14px;
}

/* Form styling */
form {
   background-color: #f5f5f5;
   padding: 40px;
   margin-top: 150px;
   max-width: 600px;
   margin-left: auto;
   margin-right: auto;
   border-radius: 10px;
   box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form label {
   font-weight: 500;
   color: var(--mainText);
}

form select, 
form input[type="date"], 
form button {
   width: 100%;
   padding: 10px;
   margin-top: 10px;
   margin-bottom: 20px;
   font-size: 1em;
   border: 1px solid var(--mainBlue);
   border-radius: 5px;
}

form button {
   background-color: var(--mainGreen);
   color: #fff;
   font-weight: 600;
   cursor: pointer;
   transition: background-color 0.3s ease-in-out;
}

form button:hover {
   background-color: var(--darkGreen);
}

form select:focus, 
form input[type="date"]:focus {
   border-color: var(--mainBlue);
   outline: none;
   box-shadow: 0 0 5px var(--mainBlue);
}

/* Responsive styling */
@media (max-width: 768px) {
   .padding-x {
      padding-left: 50px;
      padding-right: 50px;
   }

   form {
      margin-left: 20px;
      margin-right: 20px;
   }
}
</style>

</head>
<body>

   <form action="formhandler" method="post">
      <label for="doctor">Select Doctor:</label>
      <select name="doctor" id="doctor" required>
         <option value="">-- Select Doctor --</option>
         <option value="1">Dr. Alice Smith</option>
         <option value="2">Dr. John Doe</option>
         <option value="3">Dr. Mary Johnson</option>
         <option value="4">Dr. James Brown</option>
         <option value="5">Dr. Patricia White</option>
         <option value="6">Dr. Robert Green</option>
         <option value="7">Dr. Linda Blue</option>
         <option value="8">Dr. Michael Black</option>
      </select>
      <br><br>

      <!-- Hospital Selection -->
      <label for="hospital">Select Hospital:</label>
      <select name="hospital" id="hospital" required>
         <option value="">-- Select Hospital --</option>
         <option value="1">City Hospital</option>
         <option value="2">Health Care Center</option>
         <option value="3">Lakeside Hospital</option>
         <option value="4">Mountain View Clinic</option>
         <option value="5">Metro Health</option>
      </select>
      <br><br>

      <!-- Date Selection -->
      <label for="session_date">Select Date:</label>
      <input type="date" id="session_date" name="session_date" required>
      <br><br>

      <button type="submit">Submit</button>
   </form>

</body>
</html>
