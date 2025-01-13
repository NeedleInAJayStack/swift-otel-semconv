// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `peer` namespace
    var peer: PeerAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct PeerAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `peer.service`: The [`service.name`](/docs/resource/README.md#service) of the remote service. SHOULD be equal to the actual `service.name` resource attribute of the remote service if any.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `AuthTokenCache`
            public var service: Self.Key<String> { .init(name: SemConv.peer.service) }
        }
    }
}
