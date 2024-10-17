public struct Summarization: Codable, Sendable {
    public var status: SummarizationJobStatus
    public var completed_on: String?
    public var failure: String?
}

