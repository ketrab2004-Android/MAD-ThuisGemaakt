part of widgets;

class H2 extends H1 {
  H2(this.style, this.text, {
    this.key,
    this.align,
    this.locale,
    this.scaleFactor,
    this.mergeStyle
  }) : super(style, text,
    key: key,
    align: align,
    locale: locale,
    scaleFactor: scaleFactor,
    mergeStyle: mergeStyle,
  );

  final Styles.Base style;
  final String text;

  final Key? key;
  final TextAlign? align;
  final Locale? locale;
  final double? scaleFactor;

  final TextStyle? mergeStyle;

  @override
  TextStyle getStyle()
  {
    return this.style.h2;
  }
}
