class WetroCloudResponse {
  final bool success;
  final int? tokens;
  final dynamic response;
  final String? collectionId;

  WetroCloudResponse({
    required this.success,
    this.tokens,
    this.response,
    this.collectionId,
  });

  factory WetroCloudResponse.fromJson(Map<String, dynamic> json) {
    return WetroCloudResponse(
      success: json['success'],
      tokens: json['tokens'],
      response: json['response'],
      collectionId: json['collection_id'],
    );
  }
}
