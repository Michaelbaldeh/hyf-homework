//Arrays of the days
function event(weekDay) {
  const myArr = [
    "sunday",
    "monday",
    "tuesday",
    "wednesday",
    "thursday",
    "friday",
    "saturday",
  ];
  // output of days
  const randomNumber = Math.floor(Math.random() * 7) + 0;
  today = myArr[randomNumber];
  // output of an available day
  let getEventWeekday = myArr[(randomNumber + weekDay) % 7];
  console.log("it is weekend today " + today);
  return getEventWeekday;
}
let getEventWeekday = event(10);
console.log("The event will take place on " + getEventWeekday);
