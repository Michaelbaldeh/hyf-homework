async function promiseResolve(resolveAfter) {
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve();
    }, resolveAfter * 1000);
  }).then(() => {
    console.log("I am called asynchronously");
  });
}
promiseResolve(8);
