struct Summarization: Codable, Sendable {
    var status: SummarizationJobStatus
    var completed_on: String?
    var failure: String?
}

