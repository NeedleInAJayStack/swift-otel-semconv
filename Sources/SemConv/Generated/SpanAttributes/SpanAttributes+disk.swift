// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `disk` namespace
    var disk: DiskAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct DiskAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `disk.io` namespace
        public var io: IoAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct IoAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `disk.io.direction`: The disk IO operation direction.
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `read`
                ///     - `write`
                ///
                /// - Example: `read`
                public var direction: Self.Key<DirectionEnum> { .init(name: SemConv.disk.io.direction) }

                public enum DirectionEnum: String, SpanAttributeConvertible {
                    /// `read`
                    case read
                    /// `write`
                    case write
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }
            }
        }
    }
}
