import 'package:flutter/material.dart';
import 'package:flutter_learning/components/app_button.dart';
import 'package:flutter_learning/participants/schennikov_maksim/schennikov_maksim_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

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
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return const SchennikovMaksimPage();
                    }));
                  },
                  width: buttonWidth,
                  isInverted: true,
                ),
                AppButton(
                  text: 'Алексей Андреев',
                  onPressed: () {
                    // TODO(maxim): implementation [06.09.2022]
                  },
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Денис Зайцев',
                  onPressed: () {
                    // TODO(maxim): implementation [06.09.2022]
                  },
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Максим Павловский',
                  onPressed: () {
                    // TODO(maxim): implementation [06.09.2022]
                  },
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Михаил Елисеев',
                  onPressed: () {
                    // TODO(maxim): implementation [06.09.2022]
                  },
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Светлана Харланенкова',
                  onPressed: () {
                    // TODO(maxim): implementation [06.09.2022]
                  },
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Андрей Харланенков',
                  onPressed: () {
                    // TODO(maxim): implementation [06.09.2022]
                  },
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Владимир Бурба',
                  onPressed: () {
                    // TODO(maxim): implementation [06.09.2022]
                  },
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Анна Бурба',
                  onPressed: () {
                    // TODO(maxim): implementation [06.09.2022]
                  },
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Роман Сафаров',
                  onPressed: () {
                    // TODO(maxim): implementation [06.09.2022]
                  },
                  width: buttonWidth,
                ),
                AppButton(
                  text: 'Григорий Евграфов',
                  onPressed: () {
                    // TODO(maxim): implementation [06.09.2022]
                  },
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
