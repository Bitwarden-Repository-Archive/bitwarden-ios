/// Effects that can be processed by a `RemoveMasterPasswordProcessor`.
///
enum RemoveMasterPasswordEffect: Equatable {
    /// The continue button was tapped.
    case continueFlow
    /// The leave organization button was tapped.
    case leaveOrganizationFlow
}
