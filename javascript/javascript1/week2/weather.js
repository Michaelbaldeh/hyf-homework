function weatherWear(temperature) {
  if (temperature >= 0 && temperature <= 10) {
    return "wear jackets and warm cloths";
  } else if (temperature > 10 && temperature <= 15) {
    return "Some how cold grab a jacket";
  } else {
    return "Its Warm pick up a short sleeve ";
  }
}
console.log(weatherWear(20));
