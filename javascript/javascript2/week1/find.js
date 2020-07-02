const danishString = ["Blå grød med røde bær"];
const str1 = danishString.toString();

const danishString2 = ["Jeg har en blå bil"];
const str2 = danishString2.toString();

function alphabet(array) {
  let letter1 = 0;
  let letter2 = 0;
  let letter3 = 0;
  for (let i = 0; i < array.length; i++) {
    if (array[i] === "æ") {
      letter1++;
    } else if (array[i] === "ø") {
      letter2++;
    } else if (array[i] === "å") {
      letter3++;
    }
  }
  console.log(array);
  console.log(
    "total: " +
      (letter1 + letter2 + letter3) +
      ", æ: " +
      letter1 +
      " , ø: " +
      letter2 +
      " , å: " +
      letter3
  );
}
alphabet(str1);
alphabet(str2);
