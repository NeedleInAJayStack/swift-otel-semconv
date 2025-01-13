// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `deployment` namespace
    var deployment: DeploymentAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct DeploymentAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `deployment.environment`: 'Deprecated, use `deployment.environment.name` instead.'
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `staging`
            ///     - `production`
            @available(*, deprecated, message: "Deprecated, use `deployment.environment.name` instead.")
            public var _environment: Self.Key<String> { .init(name: SemConv.deployment._environment) }

            /// `deployment.id`: The id of the deployment.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `1208`
            public var id: Self.Key<String> { .init(name: SemConv.deployment.id) }

            /// `deployment.name`: The name of the deployment.
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `deploy my app`
            ///     - `deploy-frontend`
            public var name: Self.Key<String> { .init(name: SemConv.deployment.name) }

            /// `deployment.status`: The status of the deployment.
            ///
            /// - Stability: experimental
            ///
            /// - Type: enum
            ///     - `failed`: failed
            ///     - `succeeded`: succeeded
            public var status: Self.Key<StatusEnum> { .init(name: SemConv.deployment.status) }

            public enum StatusEnum: String, SpanAttributeConvertible {
                /// `failed`: failed
                case failed
                /// `succeeded`: succeeded
                case succeeded
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(rawValue)
                }
            }
        }

        /// `deployment.environment` namespace
        public var environment: EnvironmentAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct EnvironmentAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `deployment.environment.name`: Name of the [deployment environment](https://wikipedia.org/wiki/Deployment_environment) (aka deployment tier).
                ///
                /// - Stability: experimental
                ///
                /// - Type: string
                ///
                /// `deployment.environment.name` does not affect the uniqueness constraints defined through the `service.namespace`, `service.name` and `service.instance.id` resource attributes. This implies that resources carrying the following attribute combinations MUST be considered to be identifying the same service:  * `service.name=frontend`, `deployment.environment.name=production` * `service.name=frontend`, `deployment.environment.name=staging`.
                ///
                /// - Examples:
                ///     - `staging`
                ///     - `production`
                public var name: Self.Key<String> { .init(name: SemConv.deployment.environment.name) }
            }
        }
    }
}
