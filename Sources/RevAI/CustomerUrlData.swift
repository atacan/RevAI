struct CustomerUrlData: Codable, Sendable {
    var url: String
    var auth_headers: [String: String]?
}

