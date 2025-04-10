/// A protocol for an object that stores token-related things in the keychain.
public protocol TokenKeychainRepository: AnyObject {
    /// Gets the stored access token for a user from the keychain.
    ///
    /// - Parameter userId: The user ID associated with the stored access token.
    /// - Returns: The user's access token.
    ///
    func getAccessToken(userId: String) async throws -> String

    /// Gets the stored refresh token for a user from the keychain.
    ///
    /// - Parameter userId: The user ID associated with the stored refresh token.
    /// - Returns: The user's refresh token.
    ///
    func getRefreshToken(userId: String) async throws -> String

    /// Stores the access token for a user in the keychain.
    ///
    /// - Parameters:
    ///   - value: The access token to store.
    ///   - userId: The user's ID, used to get back the token later on.
    ///
    func setAccessToken(_ value: String, userId: String) async throws

    /// Stores the refresh token for a user in the keychain.
    ///
    /// - Parameters:
    ///   - value: The refresh token to store.
    ///   - userId: The user's ID, used to get back the token later on.
    ///
    func setRefreshToken(_ value: String, userId: String) async throws
}
