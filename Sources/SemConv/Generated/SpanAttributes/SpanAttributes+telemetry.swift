// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `telemetry` namespace
    var telemetry: TelemetryAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct TelemetryAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `telemetry.distro` namespace
        public var distro: DistroAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct DistroAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `telemetry.distro.name`: The name of the auto instrumentation agent or distribution, if used.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// Official auto instrumentation agents and distributions SHOULD set the `telemetry.distro.name` attribute to a string starting with `opentelemetry-`, e.g. `opentelemetry-java-instrumentation`.
                ///
                /// - Example: `parts-unlimited-java`
                public var name: Self.Key<String> { .init(name: SemConv.telemetry.distro.name) }

                /// `telemetry.distro.version`: The version string of the auto instrumentation agent or distribution, if used.
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// - Example: `1.2.3`
                public var version: Self.Key<String> { .init(name: SemConv.telemetry.distro.version) }
            }
        }

        /// `telemetry.sdk` namespace
        public var sdk: SdkAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SdkAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `telemetry.sdk.language`: The language of the telemetry SDK.
                ///
                /// - Stability: stable
                ///
                /// - Type: enum
                ///     - `cpp`
                ///     - `dotnet`
                ///     - `erlang`
                ///     - `go`
                ///     - `java`
                ///     - `nodejs`
                ///     - `php`
                ///     - `python`
                ///     - `ruby`
                ///     - `rust`
                ///     - `swift`
                ///     - `webjs`
                public var language: Self.Key<LanguageEnum> { .init(name: SemConv.telemetry.sdk.language) }

                public enum LanguageEnum: String, SpanAttributeConvertible {
                    /// `cpp`
                    case cpp
                    /// `dotnet`
                    case dotnet
                    /// `erlang`
                    case erlang
                    /// `go`
                    case go
                    /// `java`
                    case java
                    /// `nodejs`
                    case nodejs
                    /// `php`
                    case php
                    /// `python`
                    case python
                    /// `ruby`
                    case ruby
                    /// `rust`
                    case rust
                    /// `swift`
                    case swift
                    /// `webjs`
                    case webjs
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }

                /// `telemetry.sdk.name`: The name of the telemetry SDK as defined above.
                ///
                /// - Stability: stable
                ///
                /// - Type: string
                ///
                /// The OpenTelemetry SDK MUST set the `telemetry.sdk.name` attribute to `opentelemetry`. If another SDK, like a fork or a vendor-provided implementation, is used, this SDK MUST set the `telemetry.sdk.name` attribute to the fully-qualified class or module name of this SDK's main entry point or another suitable identifier depending on the language. The identifier `opentelemetry` is reserved and MUST NOT be used in this case. All custom identifiers SHOULD be stable across different versions of an implementation.
                ///
                /// - Example: `opentelemetry`
                public var name: Self.Key<String> { .init(name: SemConv.telemetry.sdk.name) }

                /// `telemetry.sdk.version`: The version string of the telemetry SDK.
                ///
                /// - Stability: stable
                ///
                /// - Type: string
                ///
                /// - Example: `1.2.3`
                public var version: Self.Key<String> { .init(name: SemConv.telemetry.sdk.version) }
            }
        }
    }
}
