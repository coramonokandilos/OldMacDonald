Farm[] livestock;
void setup()
{
	livestock = new Farm[1];
	livestock[0] = new Farm();
	livestock[0].animalSounds();
}
interface Animal
{
	public String getSound();
	public String getType();
}
void draw()
{

}
class Cow implements Animal 
{     
  protected String myType;     
  protected String mySound;      
  public Cow(String type, String sound)    
  {         
     myType = type;         
     mySound = sound;     
  }     
  public Cow()    
  {         
     myType = "unknown";         
     mySound = "unknown";     
  }      
  public String getSound(){return mySound;}     
  public String getType(){return myType;} 
}
class Pig implements Animal 
{     
  private String myType;     
  private String mySound;      
  public Pig(String type, String sound)    
  {         
     myType = type;         
     mySound = sound;     
  }     
  public Pig()    
  {         
     myType = "unknown";         
     mySound = "unknown";     
  }      
  public String getSound(){return mySound;}     
  public String getType(){return myType;} 
}
class Chick implements Animal 
{     
  private String myType;     
  private String mySound;  
  public Chick(String type, String sound, String sound2)    
  {         
     myType = type;         
     if (Math.random()<0.5)
     {
     	mySound = sound2;
     }
     else
     {
     	mySound = sound;
     }

  }     
  public Chick()    
  {         
     myType = "unknown";         
     mySound = "unknown";     
  }      
  public String getSound(){return mySound;}     
  public String getType(){return myType;} 
}


class Farm  
{     
  private Animal[] aBunchOfAnimals = new Animal[3];    
  public Farm()     
  {       
    aBunchOfAnimals[0] = new NamedCow("cow","moo", "Joline");           
    aBunchOfAnimals[1] = new Chick("chick","cluck", "chirp");       
    aBunchOfAnimals[2] = new Pig("pig","oink");    
  }         
  public void animalSounds()    
  {       
    for (int nI=0; nI < aBunchOfAnimals.length; nI++)      
    {          
     System.out.println( aBunchOfAnimals[nI].getType() + " goes " + aBunchOfAnimals[nI].getSound());       
    }  
    System.out.println("The cow is known as " + ((NamedCow)aBunchOfAnimals[0]).getName()); 
  } 
}
class NamedCow extends Cow
{
	private String cowName, myType, mySound;
	public NamedCow(String type, String sound, String name)
	{
		cowName = name;
		myType = type;
		mySound  = sound;
	}
	public String getName(){return cowName;}
	public String getSound(){return mySound;}
	public String getType(){return myType;}
}

