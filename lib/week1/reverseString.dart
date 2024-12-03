
void main() {
String word = "hello world cat";
reverseEachWorld(word: word);
}

reverseEachWorld({required String word}){
  String reverse = "";
  String newReverse = "";
  List<String> reverseList = word.split("");
  for(int i = reverseList.length-1 ; i>=0 ; i--){
    reverse += word[i];
  }
  List<String> reverseworld = reverse.split(" ");
  for(int i = reverseworld.length-1;i>=0;i--){
    newReverse += reverseworld[i];
    if (i > 0) {
      newReverse += " "; // Add space between words
    }
  }
  print(newReverse);

}
