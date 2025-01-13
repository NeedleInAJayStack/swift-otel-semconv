// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `profile` namespace
    var profile: ProfileAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct ProfileAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `profile.frame` namespace
        public var frame: FrameAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct FrameAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `profile.frame.type`: Describes the interpreter or compiler of a single frame.
                ///
                /// - Stability: experimental
                ///
                /// - Type: enum
                ///     - `dotnet`: [.NET](https://wikipedia.org/wiki/.NET)
                ///     - `jvm`: [JVM](https://wikipedia.org/wiki/Java_virtual_machine)
                ///     - `kernel`: [Kernel](https://wikipedia.org/wiki/Kernel_(operating_system))
                ///     - `native`: [C](https://wikipedia.org/wiki/C_(programming_language)), [C++](https://wikipedia.org/wiki/C%2B%2B), [Go](https://wikipedia.org/wiki/Go_(programming_language)), [Rust](https://wikipedia.org/wiki/Rust_(programming_language))
                ///     - `perl`: [Perl](https://wikipedia.org/wiki/Perl)
                ///     - `php`: [PHP](https://wikipedia.org/wiki/PHP)
                ///     - `cpython`: [Python](https://wikipedia.org/wiki/Python_(programming_language))
                ///     - `ruby`: [Ruby](https://wikipedia.org/wiki/Ruby_(programming_language))
                ///     - `v8js`: [V8JS](https://wikipedia.org/wiki/V8_(JavaScript_engine))
                ///
                /// - Example: `cpython`
                public var type: Self.Key<TypeEnum> { .init(name: SemConv.profile.frame.type) }

                public enum TypeEnum: String, SpanAttributeConvertible {
                    /// `dotnet`: [.NET](https://wikipedia.org/wiki/.NET)
                    case dotnet
                    /// `jvm`: [JVM](https://wikipedia.org/wiki/Java_virtual_machine)
                    case jvm
                    /// `kernel`: [Kernel](https://wikipedia.org/wiki/Kernel_(operating_system))
                    case kernel
                    /// `native`: [C](https://wikipedia.org/wiki/C_(programming_language)), [C++](https://wikipedia.org/wiki/C%2B%2B), [Go](https://wikipedia.org/wiki/Go_(programming_language)), [Rust](https://wikipedia.org/wiki/Rust_(programming_language))
                    case native
                    /// `perl`: [Perl](https://wikipedia.org/wiki/Perl)
                    case perl
                    /// `php`: [PHP](https://wikipedia.org/wiki/PHP)
                    case php
                    /// `cpython`: [Python](https://wikipedia.org/wiki/Python_(programming_language))
                    case cpython
                    /// `ruby`: [Ruby](https://wikipedia.org/wiki/Ruby_(programming_language))
                    case ruby
                    /// `v8js`: [V8JS](https://wikipedia.org/wiki/V8_(JavaScript_engine))
                    case v8js
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }
            }
        }
    }
}
