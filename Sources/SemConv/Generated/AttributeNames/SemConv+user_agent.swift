// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

extension SemConv {
    /// `user_agent` namespace
    public enum user_agent {
        /// `user_agent.name`
        /// 
        /// Name of the user-agent extracted from original. Usually refers to the browser's name. 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// [Example](https://www.whatsmyua.info) of extracting browser's name from original string. In the case of using a user-agent for non-browser products, such as microservices with multiple names/versions inside the `user_agent.original`, the most significant name SHOULD be selected. In such a scenario it should align with `user_agent.version` 
        /// 
        /// - Examples:
        ///     - `Safari`
        ///     - `YourApp`
        public static let name = "user_agent.name"
    
        /// `user_agent.original`
        /// 
        /// Value of the [HTTP User-Agent](https://www.rfc-editor.org/rfc/rfc9110.html#field.user-agent) header sent by the client. 
        /// 
        /// - Stability: stable
        /// 
        /// - Type: string
        /// 
        /// - Examples:
        ///     - `CERN-LineMode/2.15 libwww/2.17b3`
        ///     - `Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1`
        ///     - `YourApp/1.0.0 grpc-java-okhttp/1.27.2`
        public static let original = "user_agent.original"
    
        /// `user_agent.version`
        /// 
        /// Version of the user-agent extracted from original. Usually refers to the browser's version 
        /// 
        /// - Stability: experimental
        /// 
        /// - Type: string
        /// 
        /// [Example](https://www.whatsmyua.info) of extracting browser's version from original string. In the case of using a user-agent for non-browser products, such as microservices with multiple names/versions inside the `user_agent.original`, the most significant version SHOULD be selected. In such a scenario it should align with `user_agent.name` 
        /// 
        /// - Examples:
        ///     - `14.1.2`
        ///     - `1.0.0`
        public static let version = "user_agent.version"
    
    
    }
}