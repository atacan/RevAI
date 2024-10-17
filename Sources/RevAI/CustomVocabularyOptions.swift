public struct CustomVocabularyOptions: Codable, Sendable {
    public var callback_url: String?
    public var notification_config: CustomerUrlData?
    public var metadata: String?
    public var custom_vocabularies: [CustomVocabulary]
}

