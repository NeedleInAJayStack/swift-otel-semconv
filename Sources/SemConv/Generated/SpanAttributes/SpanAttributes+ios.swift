// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `ios` namespace
    var ios: IosAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct IosAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `ios.state`: Deprecated use the `device.app.lifecycle` event definition including `ios.state` as a payload field instead.
            ///
            /// - Stability: experimental
            ///
            /// - Type: enum
            ///     - `active`: The app has become `active`. Associated with UIKit notification `applicationDidBecomeActive`.
            ///     - `inactive`: The app is now `inactive`. Associated with UIKit notification `applicationWillResignActive`.
            ///     - `background`: The app is now in the background. This value is associated with UIKit notification `applicationDidEnterBackground`.
            ///     - `foreground`: The app is now in the foreground. This value is associated with UIKit notification `applicationWillEnterForeground`.
            ///     - `terminate`: The app is about to terminate. Associated with UIKit notification `applicationWillTerminate`.
            ///
            /// The iOS lifecycle states are defined in the [UIApplicationDelegate documentation](https://developer.apple.com/documentation/uikit/uiapplicationdelegate#1656902), and from which the `OS terminology` column values are derived.
            @available(*, deprecated, message: "Moved to a payload field of `device.app.lifecycle`.")
            public var state: Self.Key<StateEnum> { .init(name: SemConv.ios.state) }

            public enum StateEnum: String, SpanAttributeConvertible {
                /// `active`: The app has become `active`. Associated with UIKit notification `applicationDidBecomeActive`.
                case active
                /// `inactive`: The app is now `inactive`. Associated with UIKit notification `applicationWillResignActive`.
                case inactive
                /// `background`: The app is now in the background. This value is associated with UIKit notification `applicationDidEnterBackground`.
                case background
                /// `foreground`: The app is now in the foreground. This value is associated with UIKit notification `applicationWillEnterForeground`.
                case foreground
                /// `terminate`: The app is about to terminate. Associated with UIKit notification `applicationWillTerminate`.
                case terminate
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(rawValue)
                }
            }
        }
    }
}
