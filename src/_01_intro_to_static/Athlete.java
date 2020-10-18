package _01_intro_to_static;
public class Athlete {
    static int nextBibNumber;
    static String raceLocation = "New York";
    static String raceStartTime = "9.00am";

    String name;
    int speed;
    int bibNumber;

    Athlete (String name, int speed){
        this.name = name;
        this.speed = speed;
    }

    public static void main(String[] args) {
         Athlete Edith = new Athlete("Edith", 10);
       Athlete Puthie = new Athlete("Puthie", 11);
         //print their names, bibNumbers, and the location of their race. 
    System.out.println(Edith);
    System.out.println(Puthie);
    
    
    
    }
}