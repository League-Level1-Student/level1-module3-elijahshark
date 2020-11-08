package _05_netflix;

public class IDK {

	public static void main(String[] args) {
		Movie Freaks = new Movie("Freaks", 10);
		Movie TAU = new Movie("T A U", 10);
		Movie WhereTheWildThingsAre = new Movie("WhereTheWildThingsAre", 10);
		Movie ISeeYou = new Movie("I See You", 10);
		Movie SpidermanFarFromHome = new Movie("Spiderman: Far From Home", 10);
		System.out.println(Freaks.getTicketPrice());
		NetflixQueue Netflix = new NetflixQueue();
		Netflix.addMovie(WhereTheWildThingsAre);
		Netflix.addMovie(TAU);
		Netflix.addMovie(Freaks);
		Netflix.addMovie(ISeeYou);
		Netflix.addMovie(SpidermanFarFromHome);
		Netflix.printMovies();
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
