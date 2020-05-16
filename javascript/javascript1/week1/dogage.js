const dogYearOfBirth = 2009;
const dogYearFuture = 2027;
const dogYear = dogYearFuture - dogYearOfBirth;
console.log(dogYear);

const shouldShowResultInDogYears = true;

if (shouldShowResultInDogYears) {
  console.log("the dog will be" + dogYear * 7 + "years old by" + dogYearFuture);
} else {
  console.log("the dog will be" + dogYear + "owner years by" + dogYearFuture);
}
