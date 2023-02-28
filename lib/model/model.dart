import 'package:calculator/service/io_service.dart';

num total = 0;
num cash = 0;
class Calculator{
  Calculator(){math();}
  void math(){
    print(total);

    print('Son kiritinng:');
    num? number = io.number;

    total = number??0;

    String command = io.text;

    switch (command){
      case '+':{
        cash = io.number??0;
        total += cash;
        print('=\n$total');
        String command2 = io.text;
        if(command2=='clear'){
          total = 0;
          math();
        }else if(command2=='exit'){
          break;
        }else if(command2=='next'){
          math();
        }
      }break;
      case '-':{
        cash = io.number??0;
        total -= cash;
        print('=\n$total');
        String command2 = io.text;
        if(command2=='clear'){
          total = 0;
          math();
        }else if(command2=='exit'){
          break;
        }else if(command2=='next'){
          math();
        }
      }break;
      case '*':{
        cash = io.number??1;
        total *= cash;
        print('=\n$total');
        String command2 = io.text;
        if(command2=='clear'){
          total = 0;
          math();
        }else if(command2=='exit'){
          break;
        }else if(command2=='next'){
          math();
        }
      }break;
      case '/':{
        cash = io.number??1;
        total /= cash;
        print('=\n$total');
        String command2 = io.text;
        if(command2=='clear'){
          total = 0;
          math();
        }else if(command2=='exit'){
          break;
        }else if(command2=='next'){
          math();
        }
      }break;
      default:{
        print('\n\nError\n\n');
        math();

      }
    }
  }
}