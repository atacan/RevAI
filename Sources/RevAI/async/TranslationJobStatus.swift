enum TranslationJobStatus: String, Codable, Sendable {
    case failed = "failed"
    case inprogress = "in_progress"
    case completed = "completed"
}

