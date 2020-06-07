const travelInformation = { speed: 50, destinationDistance: 432 };

function duration(journeyRecord) {
  let time = journeyRecord.destinationDistance / journeyRecord.speed;
  let figure = time * 60 * 60;
  let hours = Math.floor(figure / (60 * 60));
  figure = figure - hours * 60 * 60;
  let minutes = Math.floor(figure / 60);
  figure = figure - minutes * 60;

  return hours + " hours " + minutes + " minutes ";
}
const travelTime = duration(travelInformation);
console.log(travelTime);
