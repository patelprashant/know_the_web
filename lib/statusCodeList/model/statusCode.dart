class StatusCodeModel {
  final String code;
  final String phrase;
  final String description;
  final String spec_title;
  final String spec_href;

  StatusCodeModel(
      {this.code,
      this.phrase,
      this.description,
      this.spec_title,
      this.spec_href});

  factory StatusCodeModel.fromJson(Map<String, dynamic> json) {
    return new StatusCodeModel(
      code: json['code'] as String,
      phrase: json['phrase'] as String,
      description: json['description'] as String,
      spec_title: json['spec_title'] as String,
      spec_href: json['spec_href'] as String,
    );
  }
}
