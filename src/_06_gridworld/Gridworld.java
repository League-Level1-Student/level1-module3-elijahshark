package _06_gridworld;

import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
	public static void main(String[] args) {
		World w = new World();
		w.show();
	Bug b = new Bug();
	Location l = new Location(1,1);
	w.add(l, b);
	Bug b2 = new Bug();
	Random r = new Random();
	int randX = r.nextInt(10);
	int randY = r.nextInt(10);
	Location l2 = new Location(randX,randY);
	
	
	
	
	
	
	
	
	
	}
}
