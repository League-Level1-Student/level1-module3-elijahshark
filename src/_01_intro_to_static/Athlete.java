package _01_intro_to_static;
public class Athlete {
    static int nextBibNumber = 0;
    static String raceLocation = "New York";
    static String raceStartTime = "9.00am";

    
    String name;
    int speed;
    int bibNumber = 1;

    Athlete (String name, int speed){
        this.name = name;
        this.speed = speed;
        bibNumber+=nextBibNumber;
        nextBibNumber++;
    }

    public static void main(String[] args) {
         Athlete Edith = new Athlete("Edith", 10);
       Athlete Puthie = new Athlete("Puthie", 11);
       Athlete b = new Athlete("Puthie", 11);
         //print their names, bibNumbers, and the location of their race. 
    System.out.println(Edith.bibNumber);
    System.out.println(Puthie.bibNumber);
    System.out.println(b.bibNumber);
    System.out.println(raceLocation);
    

    }
}