import Foundation

@testable import BitwardenKit

public class MockTokenKeychainRepository: TokenKeychainRepository {
    public var getAccessTokenResult: Result<String, Error> = .success("ACCESS_TOKEN")
    public var getRefreshTokenResult: Result<String, Error> = .success("REFRESH_TOKEN")
    public var mockStorage = [String: String]()
    public var setAccessTokenResult: Result<Void, Error> = .success(())
    public var setRefreshTokenResult: Result<Void, Error> = .success(())

    public init() {}

    public func getAccessToken(userId: String) async throws -> String {
        try getAccessTokenResult.get()
    }

    public func getRefreshToken(userId: String) async throws -> String {
        try getRefreshTokenResult.get()
    }

    public func setAccessToken(_ value: String, userId: String) async throws {
        try setAccessTokenResult.get()
//        mockStorage[formattedKey(for: .accessToken(userId: userId))] = value
    }

    public func setRefreshToken(_ value: String, userId: String) async throws {
        try setRefreshTokenResult.get()
//        mockStorage[formattedKey(for: .refreshToken(userId: userId))] = value
    }

//    func formattedKey(for item: KeychainItem) -> String {
//        String(format: storageKeyFormat, appId, item.unformattedKey)
//    }
}
