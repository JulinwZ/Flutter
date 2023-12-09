import 'package:flutter/material.dart';

class ScrollList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 20.0, left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'У вас все подключено',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Подписки, автоплатежи и сервисы на которые вы подписались',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
          Container(
              height: 200.0,
              padding: EdgeInsets.only(top: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3))
                        ]),
                    padding: EdgeInsets.all(16.0),
                    width: 300.0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/image1.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'СберПрайм',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 22.0,
                          ),
                          Text('Платёж 9 июля',
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold)),
                          Text('199р в месяц',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.grey)),
                        ]),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3))
                        ]),
                    padding: EdgeInsets.all(16.0),
                    width: 300.0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/image2.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Переводы',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 22.0,
                          ),
                          Text('Автопродление 21 августа',
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold)),
                          Text('199р в месяц',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.grey)),
                        ]),
                  ),
                ]),
              )),
        ],
      ),
    );
  }
}
