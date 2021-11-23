import 'package:flutter/material.dart';
import 'package:project_assignment/provider/find_screen_provider.dart';
import 'package:provider/provider.dart';

class FindScreen extends StatefulWidget {
  const FindScreen({Key? key}) : super(key: key);

  @override
  State<FindScreen> createState() => _FindScreenState();
}

class _FindScreenState extends State<FindScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          backgroundColor: Colors.white,
          elevation: 0.5,
        ),
        body: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                  initialData:
                      Provider.of<FindScreenProvider>(context, listen: false)
                          .findScreenData(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    var api =
                        Provider.of<FindScreenProvider>(context).apidatastatus;
                    if (snapshot.connectionState == ConnectionState.waiting ||
                        api == ApiDataStatus.loading) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height / 1.3,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    } else if (snapshot.hasData) {
                      return Consumer<FindScreenProvider>(
                          builder: (context, data, child) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: data.characterModel.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: SizedBox(
                                    height: 200,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 200,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: NetworkImage(
                                                    data.characterModel[index]
                                                        .img!,
                                                  ),
                                                ),
                                                borderRadius: const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(25),
                                                    bottomLeft:
                                                        Radius.circular(25)),
                                              ),
                                            ),
                                            const SizedBox(width: 10,),
                                            Expanded(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                              RichText(
                                                text: TextSpan(
                                                  text: '•  ',
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text:
                                                          data.characterModel[index].name,
                                                      style: const TextStyle(fontSize: 15)
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  text: '•  ',
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text:
                                                          data.characterModel[index].nickname,
                                                      style: const TextStyle(fontSize: 15)
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  text: '•  ',
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text:
                                                          data.characterModel[index].category,
                                                      style: const TextStyle(fontSize: 15)
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              
                                            ])),
                                            const SizedBox(width: 10,),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        );
                      });
                    } else {
                      return const Center(child: Text("Error to getting Data"));
                    }
                  }),
            )
          ],
        ));
  }
}
