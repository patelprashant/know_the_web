class HttpMethodModel {
  final String method;
  final String description;
  final String spec_title;
  final String spec_href;
  final bool safe;

  HttpMethodModel(
      {this.method,
      this.description,
      this.spec_title,
      this.spec_href,
      this.safe});

  factory HttpMethodModel.fromJson(Map<String, dynamic> json) {
    return new HttpMethodModel(
      method: json['method'] as String,
      description: json['description'] as String,
      spec_title: json['spec_title'] as String,
      spec_href: json['spec_href'] as String,
      safe: json['safe'] as bool,
    );
  }
}
