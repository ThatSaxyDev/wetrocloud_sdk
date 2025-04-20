class CreateCollectionResponse {
  final String collectionId;
  final bool success;

  CreateCollectionResponse({
    required this.collectionId,
    required this.success,
  });

  factory CreateCollectionResponse.fromJson(Map<String, dynamic> json) {
    return CreateCollectionResponse(
      collectionId: json['collection_id'] as String,
      success: json['success'] as bool,
    );
  }
}

class ChatResponse<T> {
  // Define the properties and methods for ChatResponse
  final T response;

  ChatResponse({required this.response});
}

/// Model representing the response of inserting a resource into a collection.
class InsertResourceResponse {
  final bool success;
  final int tokens;

  /// Constructor for the [InsertResourceResponse] class.
  InsertResourceResponse({
    required this.success,
    required this.tokens,
  });

  /// Factory constructor to create an [InsertResourceResponse] from JSON.
  factory InsertResourceResponse.fromJson(Map<String, dynamic> json) {
    return InsertResourceResponse(
      success: json['success'] as bool,
      tokens: json['tokens'] as int,
    );
  }
}

class QueryResourceResponse<T> {
  // Define the properties and methods for QueryResourceResponse
  final T data;

  QueryResourceResponse({required this.data});
}

/// Model representing the response of listing all collections.
class ListCollectionsResponse {
  final int count;
  final String? next;
  final String? previous;
  final List<String> results;

  /// Constructor for the [ListCollectionsResponse] class.
  ListCollectionsResponse({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  /// Factory constructor to create a [ListCollectionsResponse] from JSON.
  factory ListCollectionsResponse.fromJson(Map<String, dynamic> json) {
    return ListCollectionsResponse(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: List<String>.from(json['results']),
    );
  }
}

class ChatMessage {
  // Define the properties and methods for ChatMessage
  final String sender;
  final String message;

  ChatMessage({required this.sender, required this.message});
}

class GenericResponse {
  // Define the properties and methods for GenericResponse
  final String status;
  final String message;

  GenericResponse({required this.status, required this.message});
}

class CategorizeResponse<T> {
  // Define the properties and methods for CategorizeResponse
  final T categorizedData;

  CategorizeResponse({required this.categorizedData});
}

class DataExtractionResponse<T> {
  // Define the properties and methods for DataExtractionResponse
  final T extractedData;

  DataExtractionResponse({required this.extractedData});
}
