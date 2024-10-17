public struct SummarizationOptions: Codable, Sendable {
    public var prompt: String?
    public var model: SummarizationModel?
    public var type: SummarizationFormattingOptions?
}

