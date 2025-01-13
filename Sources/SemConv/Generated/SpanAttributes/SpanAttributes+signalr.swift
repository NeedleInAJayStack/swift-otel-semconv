// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `signalr` namespace
    var signalr: SignalrAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct SignalrAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `signalr.transport`: [SignalR transport type](https://github.com/dotnet/aspnetcore/blob/main/src/SignalR/docs/specs/TransportProtocols.md)
            ///
            /// - Stability: stable
            ///
            /// - Type: enum
            ///     - `server_sent_events`: ServerSentEvents protocol
            ///     - `long_polling`: LongPolling protocol
            ///     - `web_sockets`: WebSockets protocol
            ///
            /// - Examples:
            ///     - `web_sockets`
            ///     - `long_polling`
            public var transport: Self.Key<TransportEnum> { .init(name: SemConv.signalr.transport) }

            public enum TransportEnum: String, SpanAttributeConvertible {
                /// `server_sent_events`: ServerSentEvents protocol
                case server_sent_events
                /// `long_polling`: LongPolling protocol
                case long_polling
                /// `web_sockets`: WebSockets protocol
                case web_sockets
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(rawValue)
                }
            }
        }

        /// `signalr.connection` namespace
        public var connection: ConnectionAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ConnectionAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `signalr.connection.status`: SignalR HTTP connection closure status.
                ///
                /// - Stability: stable
                ///
                /// - Type: enum
                ///     - `normal_closure`: The connection was closed normally.
                ///     - `timeout`: The connection was closed due to a timeout.
                ///     - `app_shutdown`: The connection was closed because the app is shutting down.
                ///
                /// - Examples:
                ///     - `app_shutdown`
                ///     - `timeout`
                public var status: Self.Key<StatusEnum> { .init(name: SemConv.signalr.connection.status) }

                public enum StatusEnum: String, SpanAttributeConvertible {
                    /// `normal_closure`: The connection was closed normally.
                    case normal_closure
                    /// `timeout`: The connection was closed due to a timeout.
                    case timeout
                    /// `app_shutdown`: The connection was closed because the app is shutting down.
                    case app_shutdown
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(rawValue)
                    }
                }
            }
        }
    }
}
