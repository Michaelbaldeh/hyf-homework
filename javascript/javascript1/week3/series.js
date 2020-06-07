const seriesDurations = [
  {
    title: "House of Cards",
    days: 3,
    hours: 1,
    minutes: 0,
  },
  {
    title: "Prison Break",
    days: 3,
    hours: 14,
    minutes: 0,
  },
  {
    title: "Arrow",
    days: 2,
    hours: 12,
    minutes: 0,
  },
];
function lifeSpanWatching(watched) {
  let total = 0;

  for (let i = 0; i < watched.length; i++) {
    const clockWise = watched[i].hours / 24; //hours and time of watching
    const day = (clockWise + watched[i].days) / 365 / 80; //Calculation of average life span of watching,
    const percent = day * 100;
    total += percent;

    console.log(
      watched[i].title + " took " + percent.toPrecision(2) + " % of my life"
    );
  }
  console.log(
    "Round about figure took " + total.toPrecision(2) + "  % of my life"
  );
  return watched;
}

const spentWatching = lifeSpanWatching(seriesDurations);
