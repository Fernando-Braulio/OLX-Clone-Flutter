import 'package:flutter/material.dart';
import 'package:xlo/common/custom_drawer/widgets/icon_title.dart';

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconTitle(
          label: 'Anúncios',
          iconData: Icons.list,
          onTap: () {},
          highlighted: false,
        ),
        IconTitle(
          label: 'Inserir Anúncio',
          iconData: Icons.edit,
          onTap: () {},
          highlighted: false,
        ),
        IconTitle(
          label: 'Chat',
          iconData: Icons.chat,
          onTap: () {},
          highlighted: false,
        ),
        IconTitle(
          label: 'Favoritos',
          iconData: Icons.favorite,
          onTap: () {},
          highlighted: false,
        ),
        IconTitle(
          label: 'Minha Conta',
          iconData: Icons.person,
          onTap: () {},
          highlighted: false,
        ),
      ],
    );
  }
}
