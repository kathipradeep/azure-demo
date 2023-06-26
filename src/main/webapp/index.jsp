<html>
<body>
<script src="https://www.gstatic.com/firebasejs/4.3.0/firebase.js"></script>    
<script>
    // Initialize Firebase (ADD YOUR OWN DATA)
    const firebaseConfig = {
        apiKey: "AIzaSyAKFue3EetyBsb7NrKz-VadCj4BBlhq8js",
        authDomain: "azure-demo-74407.firebaseapp.com",
        databaseURL: "https://azure-demo-74407-default-rtdb.firebaseio.com",
        projectId: "azure-demo-74407",
        storageBucket: "azure-demo-74407.appspot.com",
        messagingSenderId: "807725774774",
        appId: "1:807725774774:web:ad979a7d5b72d8c1fff317",
        measurementId: "G-9YNBX1NLCR"
          
      
        };
      
      firebase.initializeApp(firebaseConfig);
      
        function lightOn() {  
    // to turnn  on light  
          var messagesRef = firebase.database().ref('automation').set({
            "light":1 
          });
          getlightstatus();
        }
        function lightOff() {  
      // to turn off light 
          var messagesRef = firebase.database().ref('automation').set({
            "light":0 
          });
          getlightstatus();
        }
        getlightstatus();
        function getlightstatus(){
            firebase.database().ref('/').once('value',function(snapshot){
                snapshot.forEach(function(childSnapshot){
                    var childKey = childSnapshot.key;
                    var childData = childSnapshot.val();
                    document.getElementById("data").innerHTML=childData["light"];
                })
            })
        }
    
        

</script>        
<h2>Input Button</h2>
<div class="alert">Your message has been sent</div>
<button onclick="lightOn()">Light-on</button>
<button onclick="lightOff()">Light-off</button>
<p id="data">status</p>

  
</body>
</html>

<html>
<body>
<h2>Hello World! pradeep</h2>
</body>
</html>
