import AsyncHTTPClient
import Foundation
import HTTPTypes
import OpenAPIAsyncHTTPClient
import OpenAPIRuntime
import Testing

@testable import RevAI_AHC

#if os(Linux)
@preconcurrency import struct Foundation.URL
@preconcurrency import struct Foundation.Data
@preconcurrency import struct Foundation.Date
#else
import struct Foundation.URL
import struct Foundation.Data
import struct Foundation.Date
#endif


struct RevAI_AHC_Tests {
    let client = {
        // get api key from environment
        let apiKey = ProcessInfo.processInfo.environment["REV_ACCESS_TOKEN"]!

        let authMiddleware = AuthenticationMiddleware(apiKey: apiKey)

        return Client(
            serverURL: try! Servers.Server1.url(),
            configuration: .init(dateTranscoder: .iso8601WithFractionalSeconds),
            transport: AsyncHTTPClientTransport(),
            middlewares: [
                authMiddleware
            ]
        )
    }()

    let audioFileUrl = Bundle.module.url(forResource: "Resources/amazing-things", withExtension: "wav")!

    @Test func submitTranscriptionJob() async throws {
        let audioData = try! Data(contentsOf: audioFileUrl)
        let response = try await client.SubmitTranscriptionJob(
            body: .multipartForm(
                .init(
                    [
                        .media(
                            .init(
                                payload: .init(body: HTTPBody(audioData)),
                                filename: "audio.wav"
                            )
                        ),
                        .options(
                            .init(
                                payload: .init(
                                    body: Operations.SubmitTranscriptionJob.Input.Body.multipartFormPayload.optionsPayload.bodyPayload.init(
                                        value1: .init(
                                            value1: .init(
                                                callback_url: .init(value1: "https://www.example.com"),
                                                language: .init(value1: .en)
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    ]
                )
            )
        )

        dump(response)
    }

    @Test func getTranscriptionJob() async throws {
        let response = try await client.GetTranscriptById(path: .init(id: "0C86UfM9wwVOKDdv"))
        
        dump(response)
    }

}
