let dogYearOfBirth = 2009
let dogYearFuture = 2027
let dogYear = dogYearFuture - dogYearOfBirth;
console.log(dogYear);

let shouldShowResultInDogYears = true;

if (shouldShowResultInDogYears) {
    console.log ('the dog will be' + dogYear * 7 + 'years old by' + dogYearFuture);
}

else{
    console.log('the dog will be' + dogYear + 'owner years by' + dogYearFuture)
}