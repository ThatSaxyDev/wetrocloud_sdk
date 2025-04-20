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
  final String resourceId;

  /// Constructor for the [InsertResourceResponse] class.
  InsertResourceResponse({
    required this.success,
    required this.tokens,
    required this.resourceId,
  });

  /// Factory constructor to create an [InsertResourceResponse] from JSON.
  factory InsertResourceResponse.fromJson(Map<String, dynamic> json) {
    return InsertResourceResponse(
      success: json['success'] as bool,
      tokens: json['tokens'] as int,
      resourceId: json['resource_id'] as String,
    );
  }
}

class QueryResourceResponse {
  final String response;
  final int tokens;
  final bool success;

  QueryResourceResponse({
    required this.response,
    required this.tokens,
    required this.success,
  });

  factory QueryResourceResponse.fromJson(Map<String, dynamic> json) {
    return QueryResourceResponse(
      response: json['response'] as String,
      tokens: json['tokens'] as int,
      success: json['success'] as bool,
    );
  }

  Map<String, dynamic> toJson() => {
        'response': response,
        'tokens': tokens,
        'success': success,
      };
}

class Collection {
  final String collectionId;
  final DateTime createdAt;

  Collection({
    required this.collectionId,
    required this.createdAt,
  });

  factory Collection.fromJson(Map<String, dynamic> json) {
    return Collection(
      collectionId: json['collection_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }
}

/// Model representing the response of listing all collections.
class ListCollectionsResponse {
  final int count;
  final String? next;
  final String? previous;
  final List<Collection> results;

  ListCollectionsResponse({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory ListCollectionsResponse.fromJson(Map<String, dynamic> json) {
    return ListCollectionsResponse(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List)
          .map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
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
  final bool success;
  final String message;

  GenericResponse({
    required this.success,
    required this.message,
  });

  factory GenericResponse.fromJson(Map<String, dynamic> json) {
    return GenericResponse(
      message: json['message'] as String,
      success: json['success'] as bool,
    );
  }
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
