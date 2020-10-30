part of 'widgets.dart';

class IconButtonSocialMedia extends StatelessWidget {
  final String url;
  final Widget icon;
  final double size;
  const IconButtonSocialMedia({this.url, this.icon, this.size});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 15,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      iconSize: size ?? 24,
      color: Colors.grey,
      icon: icon,
      onPressed: () {
        launch(url);
      },
    );
  }
}
