import 'dart:io';
import 'dart:math';

void main(){
   String answer;
  do {
    print("Введите s для завершения или нажмите Enter для продолжения");
    answer = stdin.readLineSync()??"";
    if (answer != "s") {
      password();
    }
  } while (answer != "s");

 
  
  
 
  

}
void password(){
  
  
  List stringList =["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",  "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
List intList =[for(int i=1;i<10;i++)i];
stringList.addAll(intList);
print("Введите длину пароля");
int passwordLenghth=int.tryParse(stdin.readLineSync()??"")??0;
List result =[];
for(int i=1;i<=passwordLenghth;i++){
  result.add(stringList[Random().nextInt(stringList.length)]);
  
}
// ignore: non_constant_identifier_names
String Stringresult=result.join("");
print(Stringresult);

}


