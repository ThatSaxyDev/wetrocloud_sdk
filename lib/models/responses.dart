class CreateCollectionResponse {
  // Define the properties and methods for CreateCollectionResponse
  final String collectionId;

  CreateCollectionResponse({required this.collectionId});
}

class ChatResponse<T> {
  // Define the properties and methods for ChatResponse
  final T response;

  ChatResponse({required this.response});
}

class InsertResourceResponse {
  // Define the properties and methods for InsertResourceResponse
  final String resourceId;

  InsertResourceResponse({required this.resourceId});
}

class QueryResourceResponse<T> {
  // Define the properties and methods for QueryResourceResponse
  final T data;

  QueryResourceResponse({required this.data});
}

class ListCollectionResponse {
  // Define the properties and methods for ListCollectionResponse
  final String collectionName;

  ListCollectionResponse({required this.collectionName});
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
