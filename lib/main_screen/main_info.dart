import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Ads(),
        Aplications(),
        Voting(),
      ],
    );
  }
}

class Ads extends StatelessWidget {
  const Ads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text1 = TextStyle(fontSize: 16, color: Color(0xFF55575C));
    final text2 = TextStyle(
        fontSize: 21, fontWeight: FontWeight.bold, color: Color(0xFF2B2D33));
    final text3 = TextStyle(fontSize: 18, color: Color(0xFF2B2D33));
    final text4 = TextStyle(
        fontSize: 27, fontWeight: FontWeight.w700, color: Color(0xFF2B2D33));
    final textButton = TextStyle(fontSize: 16, color: Color(0xFF5057FF));

    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Объявления", style: text4),
          TextButton(
            child: Text("Показать все", style: textButton),
            onPressed: () {},
          ),
        ]),
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Новое", style: text1),
                    SizedBox(width: 10),
                    Text("24 сентября", style: text1)
                  ],
                ),
                SizedBox(height: 8),
                Text("Заголовок", style: text2),
                SizedBox(height: 4),
                Text(
                    "В субботу 5 августа в 17:00 состоится встреча с директором управляющей компании “Живой город” Петровым А.",
                    style: text3,
                    maxLines: 4),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              //side: BorderSide(color: Colors.white, width: 3),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [Text("25 июля в 15:00", style: text1)],
                ),
                SizedBox(height: 8),
                Text(
                    "В субботу 5 августа в 17:00 состоится встреча с директором управляющей компании “Живой город” Александром Петровым",
                    style: text3,
                    maxLines: 4),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Aplications extends StatelessWidget {
  const Aplications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text1 = TextStyle(fontSize: 16, color: Color(0xFF55575C));
    final text2 = TextStyle(
        fontSize: 21, fontWeight: FontWeight.bold, color: Color(0xFF2B2D33));
    final text3 = TextStyle(fontSize: 18, color: Color(0xFF2B2D33));
    final text4 = TextStyle(
        fontSize: 27, fontWeight: FontWeight.w700, color: Color(0xFF2B2D33));
    final textButton = TextStyle(fontSize: 16, color: Color(0xFF5057FF));

    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Заявки", style: text4),
        TextButton(
          child: Text("Показать все", style: textButton),
          onPressed: () {},
        ),
      ]),
      Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            //side: BorderSide(color: Colors.white, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          child: Column(children: [
            Row(
              children: [
                Column(children: [Icon(Icons.access_alarm)]),
                Column(children: [
                  Row(children: [
                    Text("Елизавета кв.40", style: text3),
                    Text("В обработке")
                  ]),
                  Row(children: [Text("вчера в 16:20", style: text1)])
                ])
              ],
            ),
            SizedBox(height: 5),
            Text(
                "В субботу 5 августа в 17:00 состоится встреча с директором управляющей компании “Живой город” Петровым А.",
                style: text3,
                maxLines: 4),
            Row(
              children: [Icon(Icons.favorite), Icon(Icons.comment)],
            )
          ]),
        ),
      ),
    ]);
  }
}

class Voting extends StatelessWidget {
  const Voting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final linkButton = ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
        foregroundColor: MaterialStateProperty.all(Color(0XFF5057FF)));
    final textbuttonStyle = TextStyle(fontSize: 19, color: Colors.white);
    final text1 = TextStyle(fontSize: 16, color: Color(0xFF55575C));
    final text2 = TextStyle(
        fontSize: 21, fontWeight: FontWeight.bold, color: Color(0xFF2B2D33));
    final text3 = TextStyle(fontSize: 18, color: Color(0xFF2B2D33));
    final text4 = TextStyle(
        fontSize: 27, fontWeight: FontWeight.w700, color: Color(0xFF2B2D33));
    final textButton = TextStyle(fontSize: 16, color: Color(0xFF5057FF));

    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Голосования", style: text4),
        TextButton(
          child: Text("Показать все", style: textButton),
          onPressed: () {},
        ),
      ]),
      Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          child: Column(children: [
            Row(
              children: [
                Column(children: [Icon(Icons.access_alarm)]),
                Column(children: [
                  Row(children: [
                    Text("Елизавета кв.40", style: text3),
                    Text("В обработке")
                  ]),
                  Row(children: [Text("вчера в 16:20", style: text1)])
                ])
              ],
            ),
            SizedBox(height: 5),
            Text(
                "В субботу 5 августа в 17:00 состоится встреча с директором управляющей компании “Живой город” Петровым А.",
                style: text3,
                maxLines: 4),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: linkButton,
                onPressed: () {},
                child: Text("Проголосовать", style: textbuttonStyle),
              ),
            ),
          ]),
        ),
      ),
    ]);
  }
}
