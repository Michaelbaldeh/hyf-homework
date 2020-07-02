let numbers = [1, 2, 3, 4];
let newNumbers = [];

for (let i = 0; i < numbers.length; i++) {
  if (numbers[i] % 2 !== 0) {
    newNumbers[i] = numbers[i] * 2;
  }
}

console.log("The doubled numbers are", newNumbers); // [2, 6]
// Rewrite the above program using map and filter don't forget to use arrow functions.

const newNumberMap = numbers.map((i) => i % 2 !== 0);
console.log("The doubled numbers are", newNumbers);
const newNumberFilter = numbers.filter((i) => i % 2 !== 0);
console.log("The doubled numbers are", newNumbers);
