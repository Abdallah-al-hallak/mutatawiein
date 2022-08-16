const String pageSize = "10";

String getPaginationUrl(String pageNumber, {String currPageSize = pageSize}) {
  return 'ParameterPagination.PageSize=$currPageSize&ParameterPagination.PageNumber=$pageNumber';
}

String getFilterParams({
  required String propName,
  required String propValue,
  String operationType = "1",
}) {
  return 'PropertyNames=$propName&OperationTypes=$operationType&PropertyValues=$propValue';
}

enum OperationType {
  none,
  equal,
  notEqual,
  contains,
  greaterThan,
  lessThan, //
  greaterThanOrEqual,
  lessThanOrEqual,
  containsIntList,
  containsStringList,
  containsDateList,
  containsGuidList
}

// Equal = 1,
// NotEqual = 2,
// Conatins = 3,
// GreaterThan = 4,
// LessThan = 5,
// GreaterThanOrEqual = 6,
// LessThanOrEqual = 7,
// ContainsIntList = 8,
// ContainsStringList = 9,
// ContainsDateList = 10,
// ContainsGuidList = 11
