part of widgets;

class H2 extends H1 {
  H2(this.style, this.text, {
    this.key,
    this.align,
    this.locale,
    this.scaleFactor,
    this.mergeStyle,
    this.overflow,
  }) : super(style, text,
    key: key,
    align: align,
    locale: locale,
    scaleFactor: scaleFactor,
    mergeStyle: mergeStyle,
    overflow: overflow,
  );

  final Styles.Base style;
  final String text;

  final Key? key;
  final TextAlign? align;
  final Locale? locale;
  final double? scaleFactor;

  final TextStyle? mergeStyle;
  final TextOverflow? overflow;

  @override
  TextStyle getStyle()
  {
    return this.style.h2;
  }
}
