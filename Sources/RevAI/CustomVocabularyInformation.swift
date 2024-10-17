struct CustomVocabularyInformation: Codable, Sendable {
    var id: String
    var status: CustomVocabularyStatus
    var created_on: String
    var callbackurl: String?
    var failure: String?
    var failuredetail: String?
}

