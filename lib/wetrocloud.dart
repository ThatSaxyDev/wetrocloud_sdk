import 'models/responses.dart';

class WetroCloud {
  final String apiKey;

  WetroCloud({required this.apiKey});

  Future<CreateCollectionResponse> createCollection(
      {String? collectionId}) async {
    // implement
    throw UnimplementedError();
  }

  Future<List<ListCollectionResponse>> listCollections() async {
    // implement
    throw UnimplementedError();
  }

  Future<InsertResourceResponse> insertResource({
    required String collectionId,
    required String resource,
    required String type,
  }) async {
    // implement
    throw UnimplementedError();
  }

  Future<QueryResourceResponse<T>> queryResource<T>({
    required String collectionId,
    required String requestQuery,
    T? jsonSchema,
    List<T>? jsonSchemaList,
    String? jsonSchemaRules,
    String? model,
    bool stream = false,
  }) async {
    // implement
    throw UnimplementedError();
  }

  Future<ChatResponse<T>> chat<T>({
    required String collectionId,
    required String message,
    required List<ChatMessage> chatHistory,
    bool stream = false,
  }) async {
    // implement
    throw UnimplementedError();
  }

  Future<GenericResponse> deleteResource({
    required String collectionId,
    required String resourceId,
  }) async {
    // implement
    throw UnimplementedError();
  }

  Future<GenericResponse> deleteCollection({
    required String collectionId,
  }) async {
    // implement
    throw UnimplementedError();
  }

  Future<CategorizeResponse<T>> categorize<T>({
    required String resource,
    required String type,
    required T jsonSchema,
    required List<String> categories,
    required String prompt,
  }) async {
    // implement
    throw UnimplementedError();
  }

  Future<GenericResponse> textGeneration({
    required String model,
    required List<ChatMessage> messages,
    bool stream = false,
  }) async {
    // implement
    throw UnimplementedError();
  }

  Future<GenericResponse> imageToText({
    required String imageUrl,
    required String requestQuery,
  }) async {
    // implement
    throw UnimplementedError();
  }

  Future<DataExtractionResponse<T>> extract<T>({
    required String websiteUrl,
    required T jsonSchema,
  }) async {
    // implement
    throw UnimplementedError();
  }
}
