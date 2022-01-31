part of widgets;

class H1 extends StatelessWidget {
  H1(this.text, {
    this.key,
    this.align,
    this.locale,
    this.scaleFactor,
  });

  final String text;
  final Key? key;
  final TextAlign? align;
  final Locale? locale;
  final double? scaleFactor;

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      key: this.key,

      textAlign: this.align ?? TextAlign.left,
      textScaleFactor: this.scaleFactor,

      locale: this.locale,
    );
  }
}
