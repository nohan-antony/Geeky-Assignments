const movies=[
    {
      "MovieName": "The Great Adventure",
      "ActorName": "John Smith",
      "ReleaseDate": "2023-01-15"
    },
    {
      "MovieName": "Mystery in the Woods",
      "ActorName": "Emily Johnson",
      "ReleaseDate": "2022-09-28"
    },
    {
      "MovieName": "Love and Destiny",
      "ActorName": "Michael Brown",
      "ReleaseDate": "2023-05-02"
    },
    {
      "MovieName": "City of Shadows",
      "ActorName": "Sophia Williams",
      "ReleaseDate": "2023-03-12"
    },
    {
      "MovieName": "The Last Stand",
      "ActorName": "William Davis",
      "ReleaseDate": "2022-11-07"
    },
    {
      "MovieName": "Echoes of Time",
      "ActorName": "Olivia Wilson",
      "ReleaseDate": "2022-12-19"
    }
];

//1. List the movie name along with the actor name of those movies released in the year 2022
const movies2022 = movies.filter(movie => new Date(movie.ReleaseDate).getFullYear() === 2022);

const movieActorList = movies2022.map(movie => ({
    MovieName: movie.MovieName,
    ActorName: movie.ActorName
  }));
  
  console.log(movieActorList);

//2. List the movie names released in the year 2023 where the actor is William Davis.
const movies2023WilliamDavis = movies.filter(movie => new Date(movie.ReleaseDate).getFullYear() === 2023 && movie.ActorName === "William Davis")
  .map(movie => movie.MovieName);
  console.log(movies2023WilliamDavis)
//3. Retrieve the Actor name and release date of the movie “The Last Stand”
const LastStand=movies.filter(movie=>movie.MovieName==="The Last Stand").map(movie=>movie);
console.log(LastStand);


//4. Check whether there is any movie in the list with actor name “John Doe”
const JohnMovie=movies.some(movie=>movie.ActorName==="John Doe");

    console.log(JohnMovie);

//5. Display the count of movies where the actor name is "Sophia Williams"
const CountSophia=movies.filter(movie=>movie.ActorName==="Sophia Williams");
const countMovies=CountSophia.length;
console.log(countMovies);

/*6. Insert an element
		{
   			 "MovieName": "The Final Stage",
    			"ActorName": "John Doe",
   	 		"ReleaseDate": "2022-08-11"
 		 }
	as last element
*/ 

const newMovie={
    "MovieName": "Rich & Poor",
    "ActorName": "Johnie Walker",
    "ReleaseDate": "2023-08-11"
};
movies.push(newMovie);

//7. Check whether there exists any duplicate movie names present in the array
const hasDuplicateMovieNames = (movies) => {
    const movieMap = new Map();

    for (const movie of movies) {
        const name = movie.MovieName;
        if (movieMap.has(name)) {
            return true;
        }
        movieMap.set(name, true);
    }
    return false;
};
console.log(hasDuplicateMovieNames(movies));

//8. Create a new array starting from the movie "City of Shadows"
const startIndex = movies.findIndex(movie => movie.MovieName === "City of Shadows");
const newMoviesArray = movies.slice(startIndex);

//9. List the distinct actor names in array
const distinctActors = [...new Set(movies.map(movie => movie.ActorName))];
console.log(distinctActors);


//10. Insert an element as next element to movie “Love and Destiny”
const newMovie1={
    "MovieName": "Rich & Poor",
    "ActorName": "Johnie Walker",
    "ReleaseDate": "2023-08-11"
};


const L_DIndex = movies.findIndex(movie => movie.MovieName === "Love and Destiny");
if(L_DIndex!==-1){
    movies.slice(L_DIndex+1,0,newMovie1);
}

//11. Display the count of distinct actor names in array
const distinctActorCount = new Set(movies.map(movie => movie.ActorName)).size;
console.log(distinctActorCount);


//12. Remove the movie named  "The Last Stand"

const indexLastStand = movies.findIndex(movie => movie.MovieName === "The Last Stand");
movies.splice(indexLastStand,1);
console.log(movies);


//13. Check whether all the movies are released after 2021 Dec 31
const checkDec31=movies.every(movie=>movie.ReleaseDate>'2021-12-31');
console.log(checkDec31);

//14. Update movie named  "City of Shadows" ‘s release date as  "2023-03-13"
const indexCityOfShallows = movies.findIndex(movie => movie.MovieName === "City of Shadows");
if(index!==-1){movies[indexCityOfShallows].ReleaseDate='2023-03-13';
console.log(movies[indexCityOfShallows]);
}else{
    console.log("Index not found");
}


//15. Create a new array of movie names whose movie name length is greater than 10.


const movieGreaterThan10=movies.filter(x=>x.MovieName.length>10).map(x=>x.MovieName);

console.log(movieGreaterThan10.join(','));