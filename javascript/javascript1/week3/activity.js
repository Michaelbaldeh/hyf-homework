let activities = [];
let date = new Date();
function addActivity(date, activity, duration) {
  activities.push({ date, activity, duration });
  return;
}
addActivity(date, "Youtube", 40);
addActivity(date, "Instagram", 30);
addActivity(date, "facebook", 20);
console.log(activities);

function showStatus() {
  let total = 0;
  for (let i = 0; i < activities.length; i++) {
    total = total + activities[i].duration;
  }
  console.log(
    "You registered " +
      activities.length +
      " activities. which is  " +
      total +
      " minutes of usage"
  );
  if (total > 60) {
    console.log("You have reached your limit, no more smartphoning for you!");
  }
  if (typeof activities == undefined) {
    console.log("Add some activities before calling showStatus");
  }
}
showStatus();

function activityCalculating() {
  let largest = 0;
  for (let n = 0; n < activities.length; n++) {
    if (activities[n].duration > largest) {
      largest = activities[n].activity;
    }
  }
  console.log("you spend most your time on " + largest);
}
activityCalculating();
