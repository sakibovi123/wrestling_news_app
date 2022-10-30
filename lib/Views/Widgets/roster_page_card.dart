import 'package:flutter/material.dart';

class RosterPageCard extends StatelessWidget {
  final int index;

  const RosterPageCard({
    Key? key,
    required this.imageList,
    required this.firstNameList,
    required this.lastNameList,
    required this.width,
    required this.index,
  }) : super(key: key);

  final List<String> imageList;
  final List<String> firstNameList;
  final List<String> lastNameList;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UnconstrainedBox(
          child: Container(
            width: width,
            height: 120,
            decoration: BoxDecoration(
              color: const Color(0xffD9E9EA),
              border: Border.all(color: const Color(0xFFe8e8e8)),
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade600,
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(5, 5),
                ),
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  offset: const Offset(-5, -5),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: width * 0.28,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: const BorderRadiusDirectional.only(
                      topStart: Radius.circular(15.0),
                      bottomStart: Radius.circular(15.0),
                    ),
                    child: Image.asset(
                      imageList[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        firstNameList[index],
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        lastNameList[index],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            children: const [
                              Text('Age'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('23'),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: const [
                              Text('Nationality'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('23'),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: const [
                              Text('Position'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('23'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
