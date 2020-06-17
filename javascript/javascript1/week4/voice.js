const user = " Michael";
const todos = [];

function getReply(command) {
  if (command === "Hello my name is" + user) {
    return "nice to meet you" + user;
  }
  if (command === "What is my name?") {
    return "your name is" + user;
  }

  if (command === "Add fishing to my todo") {
    todos.push("fishing");
    return "fishing is added to your todo list";
  }
  if (command === "Add singing in the shower to my todo") {
    todos.push("singing in the shower");
    return "added singing in the shower to a list of todos";
  }
  if (command === "Remove fishing from my todo") {
    return "Removed fishing from your todo";
  }
  if (command === "What is on my todo?") {
    return todos;
  }
  if (command === "what day is it today?") {
    return new Date().toLocaleDateString("en-US", {
      //is not displaying the date after using this method
      day: "numeric",
      year: "numeric",
      month: "long",
    });
  }

  if (command === "What is 3 + 3") {
    return 3 + 3;
  }
  if (command === "What is 4 * 12") {
    return 4 * 12;
  }

  if (command === "Set a timer for 4 minutes") {
    setTimeout(function () {
      console.log("timerdone");
    }, 4000);
  }
}

console.log(getReply("Hello my name is Michael"));
console.log(getReply("What is my name?"));
console.log(getReply("Add fishing to my todo"));
console.log(getReply("What day is it today?"));
console.log(getReply("What is 3 + 3"));
console.log(getReply("What is 4 * 12"));
