function translateOneByOne() {
  //  red circle  target
  moveElement(document.querySelector("ul.marks li:nth-child(1)"), {
    x: 20,
    y: 300,
  })
    .then(() => console.log("Red has been moved"))
    // blue circle  target
    .then(() =>
      moveElement(document.querySelector("ul.marks li:nth-child(2)"), {
        x: 400,
        y: 300,
      })
    )
    .then(() => console.log("Blue has been moved"))
    //  green circle  target
    .then(() =>
      moveElement(document.querySelector("ul.marks li:nth-child(3)"), {
        x: 400,
        y: 20,
      })
    )
    .then(() => console.log("Green has been moved"));
}

//  move all elements at once

function translateAllAtOnce() {
  const promiseRed = moveElement(
    document.querySelector("ul.marks li:nth-child(1)"),
    {
      x: 20,
      y: 300,
    }
  );
  const promiseBlue = moveElement(
    document.querySelector("ul.marks li:nth-child(2)"),
    {
      x: 400,
      y: 300,
    }
  );
  const promiseGreen = moveElement(
    document.querySelector("ul.marks li:nth-child(3)"),
    {
      x: 400,
      y: 20,
    }
  );
  Promise.all([promiseRed, promiseBlue, promiseGreen]).then(() =>
    console.log("All circles have been moved at once")
  );
}

translateAllAtOnce();
