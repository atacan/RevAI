struct RevAiApiClientConfig: Codable, Sendable {
    var token: String?
    var version: String?
    var deploymentConfig: RevAiApiDeploymentConfig?
    var serviceApi: String?
}

struct RevAiApiDeploymentConfig: Codable, Sendable {
    var baseUrl: String
    var baseWebsocketUrl: String
}

