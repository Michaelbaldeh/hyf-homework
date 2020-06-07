const names = [
  "Peter",
  "Ahmad",
  "Yana",
  "kristina",
  "Rasmus",
  "Samuel",
  "katrine",
  "Tala",
];

// Write some code here
const nameToRemove = "Rasmus";
for (let i = 0; i < names.length; i++) {
  if (names[i] === nameToRemove) {
    names.splice(i, 1);
  }
}
console.log(names); // ['Peter', 'Ahmad', 'Yana', 'kristina', '', 'Samuel', 'katrine', 'Tala']
