import 'package:dio/dio.dart';

import 'models/responses.dart';

/// A Dart SDK for interacting with the WetroCloud API.
class WetroCloud {
  final Dio _dio;
  final String apiKey;

  WetroCloud({required this.apiKey})
      : _dio = Dio(BaseOptions(
          baseUrl: 'https://api.wetrocloud.com/v1',
          headers: {
            'Authorization': 'Bearer $apiKey',
          },
        ));

  /// Creates a new collection in WetroCloud.
  ///
  /// This method sends a POST request to the `/v1/collection/create` endpoint to create a new collection.
  /// The [collectionId] parameter is optional, and if not provided, the API will generate one.
  ///
  /// [collectionId]: The custom ID for the collection (optional).
  ///
  /// Returns a [CreateCollectionResponse] containing the [collectionId] and a success status.
  /// Throws an [Exception] if the request fails.
  Future<CreateCollectionResponse> createCollection(
      {String? collectionId}) async {
    try {
      final formData = FormData.fromMap({
        if (collectionId != null) 'collection_id': collectionId,
      });

      final response = await _dio.post('/collection/create', data: formData);

      return CreateCollectionResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(
          'Failed to create collection: ${e.response?.data ?? e.message}');
    }
  }

  /// Retrieves all existing collections.
  Future<List<ListCollectionResponse>> listCollections() async {
    throw UnimplementedError();
  }

  /// Inserts a new resource into the specified collection.
  ///
  /// [collectionId] is the ID of the collection.
  /// [resource] is the resource to insert (e.g. a URL or text).
  /// [type] defines the resource type, such as `"web"` or `"text"`.
  Future<InsertResourceResponse> insertResource({
    required String collectionId,
    required String resource,
    required String type,
  }) async {
    throw UnimplementedError();
  }

  /// Queries resources from a collection.
  ///
  /// [collectionId] is the ID of the collection.
  /// [requestQuery] is the query string.
  /// [jsonSchema], [jsonSchemaRules], [model], and [stream] are optional.
  Future<QueryResourceResponse<T>> queryResource<T>({
    required String collectionId,
    required String requestQuery,
    T? jsonSchema,
    List<T>? jsonSchemaList,
    String? jsonSchemaRules,
    String? model,
    bool stream = false,
  }) async {
    throw UnimplementedError();
  }

  /// Sends a chat message using collection context and chat history.
  ///
  /// [collectionId] is the ID of the collection.
  /// [message] is the user's input.
  /// [chatHistory] is a list of previous messages with role/content.
  Future<ChatResponse<T>> chat<T>({
    required String collectionId,
    required String message,
    required List<ChatMessage> chatHistory,
    bool stream = false,
  }) async {
    throw UnimplementedError();
  }

  /// Deletes a resource from the specified collection.
  ///
  /// [collectionId] is the collection containing the resource.
  /// [resourceId] is the unique ID of the resource to delete.
  Future<GenericResponse> deleteResource({
    required String collectionId,
    required String resourceId,
  }) async {
    throw UnimplementedError();
  }

  /// Deletes an entire collection by ID.
  Future<GenericResponse> deleteCollection({
    required String collectionId,
  }) async {
    throw UnimplementedError();
  }

  /// Categorizes a resource using a provided schema and list of categories.
  ///
  /// [resource] is the input text or URL.
  /// [type] is the resource type.
  /// [jsonSchema] defines the structure to extract.
  /// [categories] is a list of valid category labels.
  /// [prompt] is a guiding instruction.
  Future<CategorizeResponse<T>> categorize<T>({
    required String resource,
    required String type,
    required T jsonSchema,
    required List<String> categories,
    required String prompt,
  }) async {
    throw UnimplementedError();
  }

  /// Generates text using a model without RAG (retrieval-augmented generation).
  ///
  /// [model] is the name of the language model to use.
  /// [messages] is the history of messages for context.
  Future<GenericResponse> textGeneration({
    required String model,
    required List<ChatMessage> messages,
    bool stream = false,
  }) async {
    throw UnimplementedError();
  }

  /// Extracts insights or answers from an image.
  ///
  /// [imageUrl] is the image's URL.
  /// [requestQuery] is the query string for processing the image.
  Future<GenericResponse> imageToText({
    required String imageUrl,
    required String requestQuery,
  }) async {
    throw UnimplementedError();
  }

  /// Extracts structured data from a website using a JSON schema.
  ///
  /// [websiteUrl] is the target webpage.
  /// [jsonSchema] defines the expected data structure.
  Future<DataExtractionResponse<T>> extract<T>({
    required String websiteUrl,
    required T jsonSchema,
  }) async {
    throw UnimplementedError();
  }
}
