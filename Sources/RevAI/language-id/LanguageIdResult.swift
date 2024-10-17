public struct LanguageIdResult: Codable, Sendable {
    public var top_language: String
    public var language_confidences: [LanguageConfidence]
}

public struct LanguageConfidence: Codable, Sendable {
    public var language: String
    public var confidence: Double
}

