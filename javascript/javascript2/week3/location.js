const displayOnscreen = document.getElementById("display");
const button1 = document.getElementById("btn1");
button1.addEventListener("click", function () {
  if (navigator.geolocation) {
    navigator.geolocation.watchPosition(showPosition);
  } else {
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
});
function showPosition(position) {
  displayOnscreen.innerHTML =
    "This is the Latitude: " +
    position.coords.latitude +
    "<br> This is the Longitude: " +
    position.coords.longitude;
}
