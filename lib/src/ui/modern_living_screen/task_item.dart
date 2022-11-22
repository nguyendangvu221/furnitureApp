import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskItem extends StatelessWidget {
  final int? index;
  final String? nameItem;
  final double? priceItem;
  final List<String> listItem;
  const TaskItem(
      {@required this.index,
      @required this.nameItem,
      @required this.priceItem,
      required this.listItem,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      height: 295,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        color: const Color.fromARGB(255, 248, 248, 248),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 190,
              height: 190,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: Image(
                image: AssetImage(listItem[index!]),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nameItem!,
                        style: const TextStyle(fontSize: 19),
                      ),
                      Text(
                        "\$" + "${priceItem}",
                        style: const TextStyle(fontSize: 19),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 36,
                    height: 36,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 47, 42, 146),
                      onPressed: () {},
                      child: const Icon(Icons.add),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
