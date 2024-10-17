public struct Translation: Codable, Sendable {
    public var target_languages: [TranslationLanguage]
    public var completed_on: String?
}

