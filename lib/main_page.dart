import 'package:flutter/material.dart';
import 'package:flutter_learning/components/app_button.dart';
import 'package:flutter_learning/participants/andreev_aleksei/andreev_aleksei_page.dart';

import 'participants/schennikov_maksim/schennikov_maksim_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: const Color(0xFF809A82),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = constraints.biggest.width;
            final buttonWidth = screenWidth * 0.82;
            return ListView(
              padding: EdgeInsets.symmetric(vertical: (screenWidth - buttonWidth) / 2),
              children: [
                AppButton(
                  text: 'Щенников Максим',
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return const SchennikovMaximPage();
                    }));
                  },
                  width: buttonWidth,
                  isInverted: true,
                ),
                AppButton(
                  text: 'Алексей Андреев',
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return const AndreevAlekseiPage();
                    }));
                  },
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Денис Зайцев',
                  onPressed: () {},
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Максим Павловский',
                  onPressed: () {},
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Михаил Елисеев',
                  onPressed: () {},
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Светлана Харланенкова',
                  onPressed: () {},
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Андрей Харланенков',
                  onPressed: () {},
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Владимир Бурба',
                  onPressed: () {},
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Анна Бурба',
                  onPressed: () {},
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Роман Сафаров',
                  onPressed: () {},
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Григорий Евграфов',
                  onPressed: () {},
                  width: buttonWidth,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
