function getFullname(firstname, surname, useFormalName) {
  if (useFormalName === true) {
    return "Lord" + " " + firstname + " " + surname;
  } else {
    return firstname + " " + surname;
  }
}
// formal name output
fullname1 = getFullname("Michael", "Baldeh", true);
console.log(fullname1);
// fullname output
fullname2 = getFullname("John", "Paul");
console.log(fullname2);
