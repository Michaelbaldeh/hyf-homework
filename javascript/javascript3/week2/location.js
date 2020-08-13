const getLocation = function (place) {
  return new Promise(function (resolve, reject) {
    navigator.geolocation.getCurrentPosition(resolve, reject, place);
  });
};
getLocation(3000).then(() => {
  console.log("Called after 3 seconds");
});

getLocation()
  .then((position) => {
    console.log(position);
  })
  .catch((error) => {
    console.error(error.message);
  });
