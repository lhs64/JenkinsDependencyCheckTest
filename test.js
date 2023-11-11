function displayGreeting() {
    var name = document.getElementById("inputText").value;
    var greeting = "Hello, " + name + "! Welcome to our simple web app.";
    document.getElementById("greeting").textContent = greeting;
}