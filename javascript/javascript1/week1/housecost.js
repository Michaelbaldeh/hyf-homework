let volumeInMeters = 8 * 10 * 10; //Measurement of the width,height, and the depth of peter's house
let gardenSizeInM2 = 100;
const peterHouseCost = 2500000;
const juliaHouseCost = 1000000;

let housePrice = volumeInMeters * 2.5 * 1000 + gardenSizeInM2 * 300;
console.log(housePrice);
if (housePrice < peterHouseCost) {
  console.log("peter is paying too much amount");
} else {
  console.log("peter is paying too little amount");
}

volumeInMeters = 5 * 11 * 8; // Measurement of width, height, and depth of Julia's house
gardenSizeInM2 = 70;
juliaHouseCost = 1000000;
housePrice = volumeInMeters * 2.5 * 1000 + gardenSizeInM2 * 300;
console.log(housePrice);
if (housePrice < juliaHouseCost) {
  console.log("julia is paying too much amount");
} else {
  console.log("julia is paying too little amount");
}
