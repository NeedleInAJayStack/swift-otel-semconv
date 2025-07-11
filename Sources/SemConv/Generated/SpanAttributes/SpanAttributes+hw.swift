// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import Tracing

public extension SpanAttributes {
    /// `hw` namespace
    var hw: HwAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    struct HwAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `hw.id`: An identifier for the hardware component, unique within the monitored host
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `win32battery_battery_testsysa33_1`
            public var id: Self.Key<String> { .init(name: SemConv.hw.id) }

            /// `hw.name`: An easily-recognizable name for the hardware component
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `eth0`
            public var name: Self.Key<String> { .init(name: SemConv.hw.name) }

            /// `hw.parent`: Unique identifier of the parent component (typically the `hw.id` attribute of the enclosure, or disk controller)
            ///
            /// - Stability: experimental
            ///
            /// - Type: string
            ///
            /// - Example: `dellStorage_perc_0`
            public var parent: Self.Key<String> { .init(name: SemConv.hw.parent) }

            /// `hw.state`: The current state of the component
            ///
            /// - Stability: experimental
            ///
            /// - Type: enum
            ///     - `ok`: Ok
            ///     - `degraded`: Degraded
            ///     - `failed`: Failed
            public var state: Self.Key<StateEnum> { .init(name: SemConv.hw.state) }

            public enum StateEnum: String, SpanAttributeConvertible {
                /// `ok`: Ok
                case ok
                /// `degraded`: Degraded
                case degraded
                /// `failed`: Failed
                case failed
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(rawValue)
                }
            }

            /// `hw.type`: Type of the component
            ///
            /// - Stability: experimental
            ///
            /// - Type: enum
            ///     - `battery`: Battery
            ///     - `cpu`: CPU
            ///     - `disk_controller`: Disk controller
            ///     - `enclosure`: Enclosure
            ///     - `fan`: Fan
            ///     - `gpu`: GPU
            ///     - `logical_disk`: Logical disk
            ///     - `memory`: Memory
            ///     - `network`: Network
            ///     - `physical_disk`: Physical disk
            ///     - `power_supply`: Power supply
            ///     - `tape_drive`: Tape drive
            ///     - `temperature`: Temperature
            ///     - `voltage`: Voltage
            ///
            /// Describes the category of the hardware component for which `hw.state` is being reported. For example, `hw.type=temperature` along with `hw.state=degraded` would indicate that the temperature of the hardware component has been reported as `degraded`.
            public var type: Self.Key<TypeEnum> { .init(name: SemConv.hw.type) }

            public enum TypeEnum: String, SpanAttributeConvertible {
                /// `battery`: Battery
                case battery
                /// `cpu`: CPU
                case cpu
                /// `disk_controller`: Disk controller
                case disk_controller
                /// `enclosure`: Enclosure
                case enclosure
                /// `fan`: Fan
                case fan
                /// `gpu`: GPU
                case gpu
                /// `logical_disk`: Logical disk
                case logical_disk
                /// `memory`: Memory
                case memory
                /// `network`: Network
                case network
                /// `physical_disk`: Physical disk
                case physical_disk
                /// `power_supply`: Power supply
                case power_supply
                /// `tape_drive`: Tape drive
                case tape_drive
                /// `temperature`: Temperature
                case temperature
                /// `voltage`: Voltage
                case voltage
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(rawValue)
                }
            }
        }
    }
}
