struct CustomVocabularyOptions: Codable, Sendable {
    var callback_url: String?
    var notification_config: CustomerUrlData?
    var metadata: String?
    var custom_vocabularies: [CustomVocabulary]
}

