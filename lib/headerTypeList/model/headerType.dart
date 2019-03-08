class HeaderTypeModel {
  final String header;
  final String description;
  final String spec_title;
  final String spec_href;

  HeaderTypeModel(
      {this.header, this.description, this.spec_title, this.spec_href});

  factory HeaderTypeModel.fromJson(Map<String, dynamic> json) {
    return new HeaderTypeModel(
      header: json['header'] as String,
      description: json['description'] as String,
      spec_title: json['spec_title'] as String,
      spec_href: json['spec_href'] as String,
    );
  }
}
