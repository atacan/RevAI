struct TranslationLanguage: Codable, Sendable {
    var status: TranslationJobStatus
    var failure: String?
}

