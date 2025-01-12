// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

extension SemConv {
    /// `feature_flag` namespace
    public enum feature_flag {
        /// `feature_flag.key`
        /// 
        /// The unique identifier of the feature flag.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `logo-color`
        public static let key = "feature_flag.key"
    
        /// `feature_flag.provider_name`
        /// 
        /// The name of the service provider that performs the flag evaluation.
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// - Example: `Flag Manager`
        public static let provider_name = "feature_flag.provider_name"
    
        /// `feature_flag.variant`
        /// 
        /// SHOULD be a semantic identifier for a value. If one is unavailable, a stringified version of the value can be used. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// A semantic identifier, commonly referred to as a variant, provides a means for referring to a value without including the value itself. This can provide additional context for understanding the meaning behind a value. For example, the variant `red` maybe be used for the value `#c05543`.  A stringified version of the value can be used in situations where a semantic identifier is unavailable. String representation of the value should be determined by the implementer.
        /// 
        /// - Examples:
        ///     - `red`
        ///     - `true`
        ///     - `on`
        public static let variant = "feature_flag.variant"
    
    
    }
}