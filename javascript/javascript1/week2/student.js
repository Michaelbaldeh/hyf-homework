const class07Students = [];
function addStudentToClass(studentName) {
  // statement values and outputs
  if (class07Students.length >= 6) {
    console.log("cannot add more student to class 07");
  } else if (class07Students.includes(studentName)) {
    console.log("Student " + studentName + " is already an existing student ");
  } else if (class07Students === "Queen") {
    class07Students.push(studentName);
  } else if (studentName.trim() === "") {
    console.log("You cannot add an empty string to a class");
  } else {
    class07Students.push(studentName);
  }
}
function getNumberOfStudents() {
  return class07Students.length;
}
// current student in the class
addStudentToClass("Mike");
addStudentToClass("Johnny");
addStudentToClass("Anna");
addStudentToClass("Muhamed");
addStudentToClass("Ali");
addStudentToClass("Esther");
// extra student num 7
addStudentToClass("Peter");
// existing name in the class
addStudentToClass("Johnny");

console.log(class07Students);
