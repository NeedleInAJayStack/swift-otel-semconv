// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `thread` namespace
    var thread: ThreadAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct ThreadAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `thread.id`: Current "managed" thread ID (as opposed to OS thread ID).
            ///
            /// - Stability: experimental
            ///
            /// - Type: int
            ///
            /// - Example: `42`
            public var id: Self.Key<Int> { .init(name: SemConv.thread.id) }

            /// `thread.name`: Current thread name.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `main`
            public var name: Self.Key<String> { .init(name: SemConv.thread.name) }
        }
    }
}
