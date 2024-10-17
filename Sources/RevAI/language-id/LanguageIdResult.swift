struct LanguageIdResult: Codable, Sendable {
    var top_language: String
    var language_confidences: [LanguageConfidence]
}

struct LanguageConfidence: Codable, Sendable {
    var language: String
    var confidence: Double
}

