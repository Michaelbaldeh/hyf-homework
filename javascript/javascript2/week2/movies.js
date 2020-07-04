const movies = [
  { title: "71", year: 2014, rating: 7.2, votes: 41702, running_times: 5940 },
  {
    title: "A gai wak",
    year: 1983,
    rating: 7.4,
    votes: 11942,
    running_times: 6300,
  },
  {
    title: "Breaker Morant",
    year: 1980,
    rating: 7.9,
    votes: 10702,
    running_times: 6420,
  },
  {
    title: "Crocodile Dundee II",
    year: 1988,
    rating: 5.5,
    votes: 47180,
    running_times: 6480,
  },
  {
    title: "(500) Days of Summer",
    year: 2009,
    rating: 7.7,
    votes: 412368,
    running_times: 5700,
  },
  {
    title: "*batteries not included",
    year: 1987,
    rating: 6.6,
    votes: 25636,
    running_times: 6360,
  },
  {
    title: "...E tu vivrai nel terrore! Laldil",
    year: 1981,
    rating: 6.9,
    votes: 16484,
    running_times: 5220,
  },
  {
    title: "...and justice for all.",
    year: 1979,
    rating: 7.4,
    votes: 25408,
    running_times: 7140,
  },
  { title: "10", year: 1979, rating: 6, votes: 13152, running_times: 7320 },
  {
    title: "10 Cloverfield Lane",
    year: 2016,
    rating: 7.2,
    votes: 216151,
    running_times: 6240,
  },
  {
    title: "10 Items or Less",
    year: 2006,
    rating: 6.7,
    votes: 13342,
    running_times: 4920,
  },
  {
    title: "10 Things I Hate About You",
    year: 1999,
    rating: 7.2,
    votes: 247070,
    running_times: 5820,
  },
  {
    title: "10 Years",
    year: 2011,
    rating: 6.1,
    votes: 20790,
    running_times: 6000,
  },
  {
    title: "10,000 BC",
    year: 2008,
    rating: 5.1,
    votes: 114750,
    running_times: 6540,
  },
  {
    title: "100 Feet",
    year: 2008,
    rating: 5.5,
    votes: 10979,
    running_times: 6240,
  },
  {
    title: "100 Girls",
    year: 2000,
    rating: 5.9,
    votes: 19232,
    running_times: 5640,
  },
  {
    title: "101 Dalmatians",
    year: 1996,
    rating: 5.7,
    votes: 83245,
    running_times: 6180,
  },
];
// Create an array of movies containing the movies with a short title
const shortMovieTitle = movies.filter((movie) => movies.title.length < 10);
console.log(shortMovieTitle);
// Create an array of movie titles with long movie titles
const longMovieTitle = movies.filter((movie) => movies.title.length > 10);
console.log(longMovieTitle);
// Count the number of movies made between 1980-1989 (including both the years)
// const moviesMadeByYear = movies.filter(
//   (movies) => movies.year >= 1980 && movies.year <= 1989
// );
// console.log(moviesMadeByYear);
// Create a new array that has an extra key called tag. The tag is based on the rating: Good (>= 7), Average (>= 4 and < 7), Bad (< 4)
// const moviesTag = movies.forEach((movies) => movies.rating >= 7);
// {
//   console.log("good:", moviesTag);
// }
const moviesTag = movies.filter(
  (movies) => movies.rating >= 4 && movies.rating < 7
); //
// console.log("Average:", moviesTag);
// .filter((movies) => movies.rating < 4);
// console.log("bad:", moviesTag);
// Using chaining, first filter the movies array to only contain the movies rated higher than 6. Now map the movies array to only the rating of the movies.
// const moviesHighRatings = movies.filter((movies) => movies.rating > 6);
// const mapRatings = movies.map((movies) => movies.rating);
const moviesHighRatings = movies
  .filter((movie) => movie.rating > 6)
  .filter((movie) => movie.rating > 6)
  .map((movies) => movies.rating);
console.log(moviesHighRatings);
// Count the total number of movies containing any of following keywords: Surfer, Alien or Benjamin. So if there were 3 movies that contained Surfer, 1 with Alien and 2 with Benjamin, you would return 6. Can you make sure the search is case insensitive?
const moviesWithKeyWords = movies.filter(
  (movies) =>
    movies.title.toLowerCase().includes("alien") ||
    movies.title.toLowerCase().includes("surfer") ||
    movies.title.toLowerCase().includes("Benjamin")
);
console.log(moviesWithKeyWords.length);
// Create an array of movies where a word in the title is duplicated.
const moviesWithDublicateName = movies.filter(
  (movies) => movies.title.indexOf(movies.title) && movies.title
);
console.log(moviesWithDublicateName);
// Calculate the average rating of all the movies using reduce. Optional
const averageRating = movies.map((movies) => movies.rating);
const movieRatings = movies.map((movies) => movies.rating);
const reducer = (accumulator, currentValue) => accumulator + currentValue;
console.log(averageRating.reduce(reducer));
