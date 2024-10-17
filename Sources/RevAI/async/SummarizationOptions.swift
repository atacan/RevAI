struct SummarizationOptions: Codable, Sendable {
    var prompt: String?
    var model: SummarizationModel?
    var type: SummarizationFormattingOptions?
}

