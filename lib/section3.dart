import 'package:flutter/material.dart';
import 'package:flutter_demo/database_helpers.dart';
import 'package:flutter_demo/model/section_threedb.dart';
import 'package:uuid/uuid.dart';
import 'custom_text_style.dart';

class Insurance_Screen extends StatefulWidget {
  Insurance_Screen({super.key});

  @override
  State<Insurance_Screen> createState() => _Insurance_ScreenState();
}

class _Insurance_ScreenState extends State<Insurance_Screen> {
  TextEditingController companycontroller = TextEditingController();
  TextEditingController policycontroller = TextEditingController();
  TextEditingController typecontroller = TextEditingController();
  TextEditingController expirycontroller = TextEditingController();
  TextEditingController colorcontroller = TextEditingController();
  TextEditingController yearcontroller = TextEditingController();
  String companyfield = "";
  String policyfield = "";
  String typefield = "";
  String expiryfield = "";
  String colorfield = "";
  String yearfield = "";
  String dropdownvalue = 'Health Insurance';
  var items = [
    'Health Insurance',
    'Motor Insurance',
    'Home Insurance',
    'Fire Insurance',
    'Travel Insurance',
  ];
  final _formKey = GlobalKey<FormState>();
  late final _section3dataInstance = AppDatabase.sharedInstance;

  @override
  void initState() {
    expirycontroller.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Form(
            key: _formKey,
            child: ListView(children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40)),
                ),
                padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
                height: 100,
                width: 400,
                child: const Text(
                  "Section 3",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              CustomTextStyle.extraBold(
                  text: "Insurance Coverage", fontSize: 16),
              const SizedBox(
                height: 10,
              ),
              CustomTextStyle.bold(
                  text: "Insurance company name",
                  fontSize: 16,
                  color: Colors.blue),
              const SizedBox(
                height: 5,
              ),
              controller("company name", companycontroller, "Insurance company",
                  "validating"),
              const SizedBox(
                height: 5,
              ),
              CustomTextStyle.bold(
                  text: 'Insurance policy number',
                  fontSize: 16,
                  color: Colors.blue),
              const SizedBox(
                height: 5,
              ),
              controller("policy number", policycontroller,
                  "Insurance policy number", "Enter policy number"),
              const SizedBox(
                height: 5,
              ),
              CustomTextStyle.bold(
                  text: 'Insurance type', fontSize: 16, color: Colors.blue),
              const SizedBox(
                height: 5,
              ),
              DropdownButtonFormField(
                value: dropdownvalue,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                hint: CustomTextStyle.regular(text: 'Select type'),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                ),
                // icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextStyle.bold(
                  text: 'Coverage expiry date',
                  fontSize: 16,
                  color: Colors.blue),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 60,
                child: TextFormField(
                  controller: expirycontroller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      hintText: "expiry date",
                      suffixIcon: Icon(
                        Icons.calendar_month,
                        color: Colors.blue,
                      )),
                  onTap: () {
                    final DateTime now = DateTime.now();
                    showDatePicker(
                            context: context,
                            initialDate: now,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2050))
                        .then((DateTime? onValue) {
                      if (onValue != null) {
                        print(onValue);

                        setState(() {
                          expirycontroller.text = onValue
                              .toString(); //set output date to TextField value.
                        });
                      } else {}
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Expiry date';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextStyle.bold(
                  text: 'color', fontSize: 16, color: Colors.blue),
              const SizedBox(
                height: 5,
              ),
              controller("color", colorcontroller, "color", "select color"),
              const SizedBox(
                height: 5,
              ),
              CustomTextStyle.bold(
                  text: 'Manufacturing year', fontSize: 16, color: Colors.blue),
              const SizedBox(
                height: 5,
              ),
              controller("Manufacturing year", yearcontroller,
                  "Manufacturing year", "Enter Manufacturing year"),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    color: Colors.amber,
                    width: 150,
                    height: 100,
                    child: IconButton(
                        onPressed: (() {}),
                        icon: Icon(Icons.upload_file_sharp))),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  width: 150,
                  //height: 100,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  color: Colors.blue,
                  child: TextButton.icon(
                    onPressed: (() {}),
                    label: const Text(
                      "Take a picture",
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(
                      Icons.camera_alt_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          companyfield = companycontroller.text.toString();
                          policyfield = policycontroller.text.toString();
                          expiryfield = expirycontroller.text.toString();
                          typefield = typecontroller.text.toString();
                          colorfield = colorcontroller.text.toString();
                          yearfield = yearcontroller.text.toString();
                          SubmitToDB(companyfield);
                          print(companyfield);
                        }
                      },
                      child: Text("Submit")))
            ]),
          ),
        ),
      ),
    );
  }

  controller(String name, TextEditingController value, String heading,
      String validating) {
    return Container(
      height: 60,
      child: TextFormField(
        textAlign: TextAlign.left,
        controller: value,
        //autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: name,
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 10.0,
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return validating;
          } else {
            return null;
          }
        },
      ),
    );
  }

  SubmitToDB(String Company) {
    String uuid = const Uuid().v1().toString();

    SectionThreeData sectionThreeData = SectionThreeData(company: companyfield);
    SectionThreeDao(_section3dataInstance).addTask(sectionThreeData);
  }
}
