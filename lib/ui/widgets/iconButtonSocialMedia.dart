part of 'widgets.dart';

class IconButtonSocialMedia extends StatelessWidget {
  final Color color;
  final String url;
  final Widget icon;
  final double size;
  const IconButtonSocialMedia({this.url, this.icon, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 15,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      iconSize: size ?? 24,
      color: color,
      icon: icon,
      onPressed: () {
        launch(url);
      },
    );
  }
}
