public struct CustomVocabularyInformation: Codable, Sendable {
    public var id: String
    public var status: CustomVocabularyStatus
    public var created_on: String
    public var callbackurl: String?
    public var failure: String?
    public var failuredetail: String?
}

