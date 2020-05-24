const broughtCandyPrices = [];
const amountTospend = Math.random() * 100;

function addCandy(candyType, weight) {
  if (candyType === "Sweet") {
    broughtCandyPrices.push(0.5 * weight);
  } else if (candyType === "Chocolate") {
    broughtCandyPrices.push(0.7 * weight);
  } else if (candyType === "Toffee") {
    broughtCandyPrices.push(1.1 * weight);
  } else if (candyType === "Chewing-Gum") {
    broughtCandyPrices.push(0.3 * weight);
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
    return false;
  }
}
console.log(canBuyMoreCandy());
