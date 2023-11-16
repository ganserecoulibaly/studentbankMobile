import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateTimeDialog extends StatefulWidget {
  const DateTimeDialog({Key? key}) : super(key: key);

  @override
  State<DateTimeDialog> createState() => _DateTimeDialogState();
}

class _DateTimeDialogState extends State<DateTimeDialog> {

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Container(
                      width: 70.0,
                      height: 8.0,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                    Container(),
                  ],

                )
              ],
            )
        ),
        Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 50),
        child:
        Container(
            height: MediaQuery.of(context).size.height * 0.4,
//color: Colors.green,
            child: ListView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 8.0),
                    Container(
                        width:150.0 ,
                        height: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.pinkAccent,
                        ),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child:  Row(
                            children: [
                              Text(
                                'Heure : ${selectedTime.format(context)}',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,),
                              ),
                            ],
                          ),
                        )
                    ),

                    const SizedBox(height: 8.0),

                    Container(
                        width:150.0 ,
                        height: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.pinkAccent,
                        ),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child:  Row(
                            children: [
                              Text("Date: 08/11/23",style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),),
                            ],
                          ),
                        )
                    ),

                    const SizedBox(height: 8.0),
                    TextButton(
                      onPressed: () => _selectTime(context),

                      child: const Center(
                          child: Text("Modifier l'heure",
                            style: TextStyle(
                                fontSize: 16.0
                            ),)),
                    ),
                    const SizedBox(height: 8.0),
                    TextButton(
                      onPressed: () => _selectDate(context),
                      child: const Center(
                          child: Text("Modifier la date",
                              style: TextStyle(
                                  fontSize: 16.0
                              ))),
                    ),
                    const SizedBox(height: 8.0),
                    TextButton(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      child: const Center(
                          child: Text('Annuler',
                              style: TextStyle(
                                  fontSize: 16.0
                              ))),
                    ),
                  ],
                ),
              ],
            )
        )
          ,)
      ],
    )
    ;
  }
}
