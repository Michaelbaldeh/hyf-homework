function delayResponse(delay, callback) {
  setTimeout(() => {
    console.log(callback);
  }, delay * 1000);
}
delayResponse(4, function () {
  console.log("works in seconds");
});
