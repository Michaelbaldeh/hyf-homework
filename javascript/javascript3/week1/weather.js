let button = document.querySelector(".button");
let inputValue = document.querySelector(".inputValue");
let nameValue = document.querySelector(".name");
let desc = document.querySelector(".desc");
let temp = document.querySelector(".temp");
button.addEventListener("click", function () {
  fetch(
    "https://api.openweathermap.org/data/2.5/weather?q=" +
      inputValue.value +
      "&appid=28cac2dcb339c45cd373bb4e785d4dcf"
  )
    .then((response) => response.json())
    .then((data) => {
      let nameValue = data["name"];
      let tempValue = data["main"]["temp"];
      let nameValue = data["weather"][0]["description"];
      name.innerHTML = nameValue;
      temp.innerHTML = nameValue;
      desc.innerHTML = nameValue;
    })

    .catch((err) => alert("Try again"));
});
