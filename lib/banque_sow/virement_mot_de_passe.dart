import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class v_pin_code extends StatefulWidget {
  const v_pin_code({super.key});

  @override
  State<v_pin_code> createState() => _v_pin_codeState();
}

class _v_pin_codeState extends State<v_pin_code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child:otpScreen(),
      ),
    );
  }
}
class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  List<String>currentPin=["","","",""];
  TextEditingController pinOne=TextEditingController();
  TextEditingController pinTwo=TextEditingController();
  TextEditingController pinTree=TextEditingController();
  TextEditingController pinfour=TextEditingController();
  var outlineInputBorder=OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.transparent,
  ));
  int pinIndex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          buildExitButton(),
          Expanded(
            child:Container(
              alignment: Alignment(0,0.5),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  buildSecurityText(),
                  SizedBox(
                    height:40,
                  ),
                  buildPinRow(),
                ],
              ),
            ),
          ),
          builNumberPad(),
        ],
      ));
  }

  builNumberPad(){
    return Expanded(
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  keyboardNumber(
                    n:1,
                    onPressed:(){
                      pinIndexSettup("1");
                    },
                  ),
                  keyboardNumber(
                    n:2,
                    onPressed:(){
                      pinIndexSettup("2");
                    },
                  ),
                  keyboardNumber(
                    n:3,
                    onPressed:(){
                      pinIndexSettup("3");
                    },
                  ),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  keyboardNumber(
                    n:4,
                    onPressed:(){
                      pinIndexSettup("4");
                    },
                  ),
                  keyboardNumber(
                    n:5,
                    onPressed:(){
                      pinIndexSettup("5");
                    },
                  ),
                  keyboardNumber(
                    n:6,
                    onPressed:(){
                      pinIndexSettup("6");
                    },
                  ),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  keyboardNumber(
                    n:7,
                    onPressed:(){
                      pinIndexSettup("7");
                    },
                  ),
                  keyboardNumber(
                    n:8,
                    onPressed:(){
                      pinIndexSettup("8");
                    },
                  ),
                  keyboardNumber(
                    n:9,
                    onPressed:(){
                      pinIndexSettup("9");
                    },
                  ),
                ],
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // keyboardNumber(
                  //   n:7,
                  //   onPressed:(){
                  //   },
                  // ),
                  Container(
                    width: 60,
                    child: MaterialButton(
                      onPressed: null,
                      child: SizedBox(),
                    ),
                  ),
                  keyboardNumber(
                    n:0,
                    onPressed:(){
                      pinIndexSettup("0");
                    },
                  ),
                   Container(

                    width: 60,
                    child: MaterialButton(
                      // color: Colors.grey,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(60),),
                      onPressed: (){
                        clearPin();
                      },
                      child: Icon(CupertinoIcons.delete_left),
                    ),
                  ),
                  // keyboardNumber(
                  //   n:9,
                  //   onPressed:(){
                  //   },
                  // ),
                ],
              ),
            ],
          ),
          ),
      ),
      );
  }
  pinIndexSettup(String text){
    if(pinIndex==0){
      setState(() {
        pinIndex=1;
      });
    }else if(pinIndex<4){
        pinIndex++;
    }
    setPin(pinIndex,text);
    currentPin[pinIndex-1]=text;
    String strPin="";
    // currentPin.forEach((e){
    for(int i=0;i<4;i++){
     if(currentPin[i]=="0"||currentPin[i]=="1"||currentPin[i]=="2"||currentPin[i]=="3"){
        setState(() {
          strPin+=currentPin[i];
        });
     }else if(currentPin[i]=="4"||currentPin[i]=="5"||currentPin[i]=="6"){
        setState(() {
           strPin+=currentPin[i];
        });
     }else if(currentPin[i]=="7"||currentPin[i]=="8"||currentPin[i]=="9"){
        setState(() {
           strPin+=currentPin[i];
        });
     }
    }
    // });
    if(PinNumber==4){
      print(strPin);
    }
  }
  setPin(int n,String text){
    switch(n){
      case 1:
        pinOne.text=text;break;
      case 2:
        pinTwo.text=text;break;
      case 3:
        pinTree.text=text;break;
      case 4:
        pinfour.text=text;break;
    }
  }
  clearPin(){
    if(pinIndex==0){
      pinIndex=0;
    }else if (pinIndex==4){
      setPin(pinIndex, "");
      currentPin[pinIndex-1]="";
      pinIndex--;
    }else{
      setPin(pinIndex, "");
      currentPin[pinIndex-1]="";
      pinIndex--;
    }
  }
  buildPinRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PinNumber(
          textEditingController:pinOne,
          OutlinedInputBorder:outlineInputBorder,
        ),
        PinNumber(
          textEditingController:pinTwo,
          OutlinedInputBorder:outlineInputBorder,
        ),
        PinNumber(
          textEditingController:pinTree,
          OutlinedInputBorder:outlineInputBorder,
        ),
        PinNumber(
          textEditingController:pinfour,
          OutlinedInputBorder:outlineInputBorder,
        ),
      ],
    );
  }
  buildSecurityText(){
    return Text("mot de Passe",style: TextStyle(
      color: const Color.fromARGB(96, 221, 34, 34),
      fontSize: 21,
      fontWeight: FontWeight.bold
    ),);
  }

  buildExitButton(){
    return Row(
      mainAxisAlignment:MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            onPressed: (){},
            height: 50.0,
            minWidth: 50.0,
            shape: RoundedRectangleBorder(),  
            child: Icon(Icons.clear,color: Colors.black54,),

          ),
            
        ),
      ],
      );
  }
}
class keyboardNumber extends StatelessWidget {
  final int n;
  final Function() onPressed;
  const keyboardNumber({super.key,required this.onPressed,required this.n});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.pink),
        shape: BoxShape.circle
      ),
      alignment: Alignment.center,
      child: MaterialButton(
        onPressed: onPressed,
        padding: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60)
        ),
        height: 90,
        child: Text("$n",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          color: Colors.pinkAccent,
          fontWeight: FontWeight.bold
        ),
        ),
        )
    );
  }
}
class PinNumber extends StatelessWidget {
    final TextEditingController textEditingController;
    final OutlineInputBorder OutlinedInputBorder;
  const PinNumber({super.key,required this.textEditingController,required this.OutlinedInputBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: TextField(
        controller: textEditingController,
        enabled: false,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(17),
          border: OutlinedInputBorder,
          filled: true,
          fillColor: Colors.pink
        ),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 21,
          color: Colors.pink,
        ),
      ),
    );
  }
}