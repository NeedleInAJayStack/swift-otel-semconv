// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

public extension SemConv {
    /// `error` namespace
    enum error {
        /// `error.type`: Describes a class of error the operation ended with.
        ///
        /// - Stability: stable
        ///
        /// - Type: enum
        ///     - `_OTHER`: A fallback error value to be used when the instrumentation doesn't define a custom value.
        ///
        /// The `error.type` SHOULD be predictable, and SHOULD have low cardinality.  When `error.type` is set to a type (e.g., an exception type), its canonical class name identifying the type within the artifact SHOULD be used.  Instrumentations SHOULD document the list of errors they report.  The cardinality of `error.type` within one instrumentation library SHOULD be low. Telemetry consumers that aggregate data from multiple instrumentation libraries and applications should be prepared for `error.type` to have high cardinality at query time when no additional filters are applied.  If the operation has completed successfully, instrumentations SHOULD NOT set `error.type`.  If a specific domain defines its own set of error identifiers (such as HTTP or gRPC status codes), it's RECOMMENDED to:  - Use a domain-specific attribute - Set `error.type` to capture all errors, regardless of whether they are defined within the domain-specific set or not.
        ///
        /// - Examples:
        ///     - `timeout`
        ///     - `java.net.UnknownHostException`
        ///     - `server_certificate_invalid`
        ///     - `500`
        public static let type = "error.type"
    }
}
