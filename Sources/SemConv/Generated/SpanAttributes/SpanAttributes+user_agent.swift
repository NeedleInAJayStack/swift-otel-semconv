// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

extension SpanAttributes {
    /// `user_agent` namespace
    public var user_agent: UserAgentAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct UserAgentAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `user_agent.name`: Name of the user-agent extracted from original. Usually refers to the browser's name. 
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
            public var name: Self.Key<String> { .init(name: SemConv.user_agent.name) }
    
            /// `user_agent.original`: Value of the [HTTP User-Agent](https://www.rfc-editor.org/rfc/rfc9110.html#field.user-agent) header sent by the client. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `CERN-LineMode/2.15 libwww/2.17b3`
            ///     - `Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1`
            ///     - `YourApp/1.0.0 grpc-java-okhttp/1.27.2`
            public var original: Self.Key<String> { .init(name: SemConv.user_agent.original) }
    
            /// `user_agent.version`: Version of the user-agent extracted from original. Usually refers to the browser's version 
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
            public var version: Self.Key<String> { .init(name: SemConv.user_agent.version) }
        }
    
    
    }
}