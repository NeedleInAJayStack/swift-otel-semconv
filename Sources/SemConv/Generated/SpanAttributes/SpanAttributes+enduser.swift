// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `enduser` namespace
    var enduser: EnduserAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct EnduserAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `enduser.id`: Deprecated, use `user.id` instead.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `username`
            @available(*, deprecated, message: "Replaced by `user.id` attribute.")
            public var id: Self.Key<String> { .init(name: SemConv.enduser.id) }

            /// `enduser.role`: Deprecated, use `user.roles` instead.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `admin`
            @available(*, deprecated, message: "Replaced by `user.roles` attribute.")
            public var role: Self.Key<String> { .init(name: SemConv.enduser.role) }

            /// `enduser.scope`: Deprecated, no replacement at this time.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `read:message, write:files`
            @available(*, deprecated, message: "Removed.")
            public var scope: Self.Key<String> { .init(name: SemConv.enduser.scope) }
        }
    }
}
