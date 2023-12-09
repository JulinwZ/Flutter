import 'package:flutter/material.dart';

class TariffsAndLimits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Тарифы и лимиты',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          Text(
            'Для операция в Сбербанк Онлайн',
            style: TextStyle(color: Colors.grey, fontSize: 14.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Image(
                  image: AssetImage('assets/speed.png'),
                  width: 50.0,
                  height: 50.0,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Изменить суточный лимит',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'На платежи и переводы',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 16.0,
              ),
            ),
          ]),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/percent.png'),
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Переводы без комиссии',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Показать остаток в это месяце',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 16.0,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/arrow.png'),
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Информация о тарифах и лимитах',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
