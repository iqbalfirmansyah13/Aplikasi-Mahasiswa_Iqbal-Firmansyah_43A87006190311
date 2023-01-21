import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigation/dataaccess/person.dart';
import 'package:flutter_bottomnavigation/model/person.dart';
import 'package:get/get.dart';
void main(List<String> args) => runApp(HomeScreen());
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  List<Person> list = <Person>[].obs;
  
 
  PersonDataAccess pda = PersonDataAccess();
  final nameController = TextEditingController();
  final cityController = TextEditingController();
  var isNew = false;
  var id = -1;

  getData() async {
    var data = await pda.getAll();
    list.clear();
    list.addAll(data);
  }

  showBottomSheet() {
    return SingleChildScrollView( 
      child: Container(
        height: 280,
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name"),
            TextField(controller: nameController,),
            SizedBox(height: 10,),
            Text("City"),
            TextField(controller: cityController,),
            SizedBox(height: 10,),
            SizedBox(
              width: Size.infinite.width,
              child: ElevatedButton(
                onPressed: () async {
                  if (isNew) {
                    await pda.insert(Person(
                      name: nameController.text,
                      city: cityController.text));
                  } else {
                    await pda.update(Person(
                      id : id,
                      name: nameController.text,
                      city: cityController.text));
                  }
                  Get.back();
                  getData();
                }, 
                child: Text("Save")),
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    

   getData();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter SQLite",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter SQLite'),
          ),
          body: Obx(() => ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              final item = list[index];
              return Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.endToStart,
                confirmDismiss: (direction) async{
                  return await Get.dialog(
                    AlertDialog(content: Container(
                      height: 80,
                      child: Column(
                        children: [
                          Text("Confirm to Delete?"),
                          SizedBox(height: 10,),
                          ElevatedButton(onPressed: () {
                            Get.back(result: true);
                          }, 
                          child: Text("Yes"))
                        ]),
                    ),)
                  );
                },
                onDismissed: (direction) async{
                  await pda.delete(item.id!);
                  getData();
                },
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.delete, color: Colors.white),
                ),
                child: TextButton(
                  onPressed: () {
                    id = item.id!;
                    isNew = false;
                    nameController.text = item.name;
                    cityController.text = item.city;
                    Get.bottomSheet(showBottomSheet());
                  },
                  child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  //padding: EdgeInsets.only(top: 8),
                  padding: EdgeInsets.only(bottom: 8),
                  //height: 54,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.person),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                          SizedBox(height: 4,),
                          Text(item.city, style: TextStyle(fontSize: 12))
                        ],
                      )
                    ],
                  ),
                  ),
                ),
              );
            },
            )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () async {
                isNew = true; 
                nameController.clear();
                cityController.clear();
                Get.bottomSheet(showBottomSheet());
                FocusScope.of(context).requestFocus();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}