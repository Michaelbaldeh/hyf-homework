const form = document.getElementById("animals");
const input = document.getElementById("creatures");
const button = document.getElementById("send");
const spiritAnimals = ["Hippo", "Rhyno", "Elephant", "Monkey", "Snake"];

function randomNumber() {
  return Math.floor(Math.random() * spiritAnimals.length);
}

form.addEventListener("submit", function (event) {
  event.preventDefault();
  const name = input.value;
  const animal = spiritAnimals[randomNumber()];
  const output = name + " : " + animal;
  console.log(output);
});
