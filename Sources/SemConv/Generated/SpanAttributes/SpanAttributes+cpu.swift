// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `cpu` namespace
    var cpu: CpuAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct CpuAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `cpu.mode`: The mode of the CPU
            ///
            /// - Stability: experimental
            ///
            /// - Type: enum
            ///     - `user`
            ///     - `system`
            ///     - `nice`
            ///     - `idle`
            ///     - `iowait`
            ///     - `interrupt`
            ///     - `steal`
            ///     - `kernel`
            ///
            /// - Examples:
            ///     - `user`
            ///     - `system`
            public var mode: Self.Key<ModeEnum> { .init(name: SemConv.cpu.mode) }

            public enum ModeEnum: String, SpanAttributeConvertible {
                /// `user`
                case user
                /// `system`
                case system
                /// `nice`
                case nice
                /// `idle`
                case idle
                /// `iowait`
                case iowait
                /// `interrupt`
                case interrupt
                /// `steal`
                case steal
                /// `kernel`
                case kernel
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(rawValue)
                }
            }
        }
    }
}
