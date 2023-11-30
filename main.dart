import 'dart:math';

import 'dart:io';

void main() {
//name in reverse order

  print('Enter your first_name:');
  String first_name = stdin.readLineSync()!;

  print('Enter your last_name:');
  String last_name = stdin.readLineSync()!;

  print('Your name in reverse orser: $last_name   $first_name');

  //find a grade of a student
  print("Enter the score of the student:");
  int score = int.parse(stdin.readLineSync()!);

  if (score >= 90) {
    print("grade is A");
  } else if (score >= 80 && score < 90) {
    print("Grade is B");
  } else if (score >= 70 && score < 80) {
    print("Grade is C");
  } else if (score >= 60 && score < 70) {
    print("Grade is D");
  } else {
    print("Grade is E");

//list even numbers
    List numbers = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
    List evennumbers = numbers.where((e) => e % 2 == 0).toList();
    print(evennumbers);
  }

//generating random password
print("generating random password:"+generating_Password());


}





String generating_Password(){
String upper="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
String lower="abcdefghijklmnopqrstuvwxyz";
String digits="0123456789";
String symbols="*()_/\+-=<>?[]{}!@#%^&|;:,.";
String password="";
int passwordlength =20;
String all=upper+lower+symbols+digits;
List <String> list = all.split('').toList() ;
Random random=Random();
for(int i=0;i<passwordlength;i++){
  int index=random.nextInt(list.length);
  password+=list[index];
}


return password;

}


