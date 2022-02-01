part of widgets;

class H1 extends StatelessWidget {
  H1(this.style, this.text, {
    this.key,
    this.align,
    this.locale,
    this.scaleFactor,
    this.mergeStyle,
  });

  final Styles.Base style;
  final String text;

  final Key? key;
  final TextAlign? align;
  final Locale? locale;
  final double? scaleFactor;
  final TextStyle? mergeStyle;

  TextStyle getStyle()
  {
    return this.style.h1;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      key: this.key,

      textAlign: this.align ?? TextAlign.left,
      textScaleFactor: this.scaleFactor,

      style: mergeStyle != null ? getStyle().merge(mergeStyle) : getStyle(),

      locale: this.locale,
    );
  }
}
