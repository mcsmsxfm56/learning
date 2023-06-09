
void main() { 
 
  // Defining the label
  Geek1:for(int i=0; i<3; i++)
  {
    if(i < 2)
    {
      print("You are inside the loop Geek");
 
      // breaking with label
      break Geek1;
    }
    print("You are still inside the loop");
  }
}

//Output: You are inside the loop Geek

/*

void main() { 
 
  // Defining the label
  Geek1:for(int i=0; i<3; i++)
  {
    if(i < 2)
    {
      print("You are inside the loop Geek");
 
      // Continue with label
      continue Geek1;
    }
    print("You are still inside the loop");
  }
}
Output: 
 

You are inside the loop Geek
You are inside the loop Geek
You are still inside the loop
*/