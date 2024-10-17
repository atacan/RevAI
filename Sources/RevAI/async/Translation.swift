struct Translation: Codable, Sendable {
    var target_languages: [TranslationLanguage]
    var completed_on: String?
}

