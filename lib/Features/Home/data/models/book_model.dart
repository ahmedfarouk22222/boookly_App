import 'package:json_annotation/json_annotation.dart';
part 'book_model.g.dart';

@JsonSerializable()
class BookModel {
  List<Items>? items;
    BookModel({this.items});
factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookModelToJson(this);
}

@JsonSerializable()
class Items {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Items({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });
  factory Items.fromJson(Map<String, dynamic> json) =>
      _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}

@JsonSerializable()
class VolumeInfo {
  String? title;
  String? publishedDate;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.publishedDate,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });
  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VolumeInfoToJson(this);
}

@JsonSerializable()
class IndustryIdentifiers {
  String? type;
  String? identifier;

  IndustryIdentifiers({this.type, this.identifier});
   factory IndustryIdentifiers.fromJson(Map<String, dynamic> json) =>
      _$IndustryIdentifiersFromJson(json);

  Map<String, dynamic> toJson() => _$IndustryIdentifiersToJson(this);
}

@JsonSerializable()
class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({this.text, this.image});
   factory ReadingModes.fromJson(Map<String, dynamic> json) =>
      _$ReadingModesFromJson(json);

  Map<String, dynamic> toJson() => _$ReadingModesToJson(this);
}

@JsonSerializable()
class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({this.containsEpubBubbles, this.containsImageBubbles});
  factory PanelizationSummary.fromJson(Map<String, dynamic> json) =>
      _$PanelizationSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$PanelizationSummaryToJson(this);
}

@JsonSerializable()
class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});
  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);

  Map<String, dynamic> toJson() => _$ImageLinksToJson(this);
}

@JsonSerializable()
class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;
  String? buyLink;

  SaleInfo({this.country, this.saleability, this.isEbook, this.buyLink});
   factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SaleInfoToJson(this);
}

@JsonSerializable()
class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });
  factory AccessInfo.fromJson(Map<String, dynamic> json) =>
      _$AccessInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AccessInfoToJson(this);
}

@JsonSerializable()
class Epub {
  bool? isAvailable;
  String? downloadLink;

  Epub({this.isAvailable, this.downloadLink});
  factory Epub.fromJson(Map<String, dynamic> json) =>
      _$EpubFromJson(json);

  Map<String, dynamic> toJson() => _$EpubToJson(this);
}

@JsonSerializable()
class Pdf {
  bool? isAvailable;

  Pdf({this.isAvailable});
   factory Pdf.fromJson(Map<String, dynamic> json) =>
      _$PdfFromJson(json);

  Map<String, dynamic> toJson() => _$PdfToJson(this);
}

@JsonSerializable()
class SearchInfo {
  String? textSnippet;

  SearchInfo({this.textSnippet});
  factory SearchInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SearchInfoToJson(this);
}
