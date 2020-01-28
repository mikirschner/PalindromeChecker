public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean isPalindrome(String sWord){
  if(removal(sWord).equals(reverse(sWord))) {
    return true;
  }
  return false;
}
public String reverse(String sWord){
  String s = "";
  for (int i = sWord.length()-1; i >= 0; i--) {
    s= s+sWord.substring(i,i+1);
  }
  s = removal(s);
  return s.toLowerCase();
}

public String removal(String sWord) {
  String s = new String();
  for(int i = 0; i < sWord.length(); i++) {
    if (!sWord.substring(i,i+1).equals(",") && !sWord.substring(i,i+1).equals("!") && !sWord.substring(i,i+1).equals("'") && !sWord.substring(i,i+1).equals(" ")) {
      s+= sWord.substring(i,i+1);
    }
  }
  return s.toLowerCase();
}