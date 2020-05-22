const broughtCandyPrices = [];
const amountTospend = Math.random() * 100;

function addCandy(candyType, weight) {
  if (candyType === "Sweet") {
    candyPrice = 0.5 * weight;
    broughtCandyPrices.push(candyPrice);
  } else if (candyType === "Chocolate") {
    candyPrice = 0.7 * weight;
    broughtCandyPrices.push(candyPrice);
  } else if (candyType === "Toffee") {
    candyPrice = 1.1 * weight;
    broughtCandyPrices.push(candyPrice);
  } else if (candyType === "Chewing-Gum") {
    candyPrice = 0.3 * weight;
    broughtCandyPrices.push(candyPrice);
  } else {
    console.log("You cannnot buy this candy");
  }
}
// extra candy
addCandy("Sweet", 2);
addCandy("Chocolate", 50);

// more sweets
function canBuyMoreCandy() {
  let amountSpent = 0;
  i = 0;
  while (i < broughtCandyPrices.length) {
    amountSpent += broughtCandyPrices[i];
    i++;
  }
  if (amountTospend > amountSpent) {
    console.log("you can buy more, so please do!");
    return true;
  } else {
    console.log("Enought candy for you");
  }
}
console.log(canBuyMoreCandy());
