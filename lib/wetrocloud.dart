import 'package:dio/dio.dart';
import 'package:wetrocloud_sdk/utils/enums.dart';
import 'package:wetrocloud_sdk/utils/interceptors.dart';

import 'models/responses.dart';

/// A Dart SDK for interacting with the WetroCloud API.
class WetroCloud {
  final Dio _dio;
  final String apiKey;

  WetroCloud({required this.apiKey})
      : _dio = Dio(BaseOptions(
          baseUrl: 'https://api.wetrocloud.com/v1',
          headers: {
            'Authorization': 'Token $apiKey',
          },
        )) {
    _dio.interceptors.add(CurlLoggerInterceptor());
  }

  /// Creates a new collection in WetroCloud.
  ///
  /// This method sends a POST request to the `/v1/collection/create` endpoint to create a new collection.
  ///
  /// Returns a [CreateCollectionResponse] containing the [collectionId] and a success status.
  /// Throws an [Exception] if the request fails.
  Future<CreateCollectionResponse> createCollection() async {
    try {
      'Creating collection...'.log();

      final response = await _dio.post(
        '/collection/create/',
        options: Options(
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        ),
      );

      'Create collection response: ${response.data}'.log();

      return CreateCollectionResponse.fromJson(response.data);
    } on DioException catch (e) {
      'Failed to create collection: ${e.response?.data ?? e.message}'.log();
      throw Exception(
          'Failed to create collection: ${e.response?.data ?? e.message}');
    }
  }

  /// Lists all the collections available in WetroCloud.
  ///
  /// Sends a GET request to the `/v1/collection/all` endpoint to retrieve all collections.
  /// This list is paginated with a maximum of 20 items per request.
  ///
  /// Returns a [ListCollectionsResponse] containing the total count, pagination URLs,
  /// and a list of the collections.
  /// Throws an [Exception] if the request fails.
  Future<ListCollectionsResponse> listCollections() async {
    try {
      final response = await _dio.get('/collection/all/');

      return ListCollectionsResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(
          'Failed to list collections: ${e.response?.data ?? e.message}');
    }
  }

  /// Inserts a resource into a collection in WetroCloud.
  ///
  /// Sends a POST request to the `/v1/resource/insert` endpoint to add a resource
  /// (such as a URL, text, or other resource types) to the specified collection.
  ///
  /// [collectionId]: The ID of the collection to which the resource will be added.
  /// [resource]: The URL or content of the resource to be added.
  /// [type]: The type of resource being added (e.g., 'web', 'text', 'json', etc.).
  ///
  /// Returns an [InsertResourceResponse] containing the success status and the number of tokens used.
  /// Throws an [Exception] if the request fails.
  Future<InsertResourceResponse> insertResource({
    required String collectionId,
    required String resource,
    required String type,
  }) async {
    try {
      final response = await _dio.post(
        '/resource/insert',
        data: {
          'collection_id': collectionId,
          'resource': resource,
          'type': type,
        },
      );

      return InsertResourceResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(
          'Failed to insert resource: ${e.response?.data ?? e.message}');
    }
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
