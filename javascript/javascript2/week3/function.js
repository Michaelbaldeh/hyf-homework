// Log out the text Called after 2.5 seconds 2.5 seconds after the script is loaded.
setTimeout(function () {
  console.log("log after 2.5 seconds");
}, 2500);
// Create a function that takes 2 parameters: delay and stringToLog. Calling this function should log out the stringToLog after delay seconds. Call the function you have created with some different arguments.
function logOut(delay, stringToLog) {
  setTimeout(() => {
    console.log(stringToLog);
  }, delay * 1000);
}
logOut(5, "delay in 5 seconds");
logOut(3, "delay in 3 seconds");

// Create a button in html. When clicking this button, use the function you created in the previous task to log out the text: Called after 5 seconds 5 seconds after the button is clicked.
const button = document.getElementById("btn1");
button.addEventListener("click", function () {
  console.log("in 5 second");
  logOut(5, "called after 5 seconds");
});
// Create two functions and assign them to two different variables. One function logs out Earth, the other function logs out Saturn. Now create a new third function that has one parameter: planetLogFunction. The only thing the third function should do is call the provided parameter function. Try call the third function once with the Earth function and once with the Saturn function.

function earth() {
  console.log("Earth");
}
function saturn() {
  console.log("Saturn");
}
function earthLogOut(planet) {
  planet();
}
earthLogOut(earth);
earthLogOut(saturn);
