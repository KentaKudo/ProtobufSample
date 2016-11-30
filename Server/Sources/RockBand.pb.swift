/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: RockBand.proto
 *
 */

import Foundation
import SwiftProtobuf


public struct Member: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Member"}
  public var protoMessageName: String {return "Member"}
  public var protoPackageName: String {return ""}
  public var jsonFieldNames: [String: Int] {return [
    "id": 1,
    "name": 2,
    "instrument": 3,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "id": 1,
    "name": 2,
    "instrument": 3,
  ]}

  public enum Instrument: ProtobufEnum {
    public typealias RawValue = Int
    case vocal // = 0
    case guitar // = 1
    case bass // = 2
    case drums // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .vocal
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .vocal
      case 1: self = .guitar
      case 2: self = .bass
      case 3: self = .drums
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public init?(name: String) {
      switch name {
      case "vocal": self = .vocal
      case "guitar": self = .guitar
      case "bass": self = .bass
      case "drums": self = .drums
      default: return nil
      }
    }

    public init?(jsonName: String) {
      switch jsonName {
      case "VOCAL": self = .vocal
      case "GUITAR": self = .guitar
      case "BASS": self = .bass
      case "DRUMS": self = .drums
      default: return nil
      }
    }

    public init?(protoName: String) {
      switch protoName {
      case "VOCAL": self = .vocal
      case "GUITAR": self = .guitar
      case "BASS": self = .bass
      case "DRUMS": self = .drums
      default: return nil
      }
    }

    public var rawValue: Int {
      get {
        switch self {
        case .vocal: return 0
        case .guitar: return 1
        case .bass: return 2
        case .drums: return 3
        case .UNRECOGNIZED(let i): return i
        }
      }
    }

    public var json: String {
      get {
        switch self {
        case .vocal: return "\"VOCAL\""
        case .guitar: return "\"GUITAR\""
        case .bass: return "\"BASS\""
        case .drums: return "\"DRUMS\""
        case .UNRECOGNIZED(let i): return String(i)
        }
      }
    }

    public var hashValue: Int { return rawValue }

    public var debugDescription: String {
      get {
        switch self {
        case .vocal: return ".vocal"
        case .guitar: return ".guitar"
        case .bass: return ".bass"
        case .drums: return ".drums"
        case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
        }
      }
    }

  }

  public var id: Int64 = 0

  public var name: String = ""

  public var instrument: Member.Instrument = Member.Instrument.vocal

  public init() {}

  public init(id: Int64? = nil,
    name: String? = nil,
    instrument: Member.Instrument? = nil)
  {
    if let v = id {
      self.id = v
    }
    if let v = name {
      self.name = v
    }
    if let v = instrument {
      self.instrument = v
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufInt64.self, value: &id)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &name)
    case 3: handled = try setter.decodeSingularField(fieldType: Member.Instrument.self, value: &instrument)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if id != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: id, protoFieldNumber: 1, protoFieldName: "id", jsonFieldName: "id", swiftFieldName: "id")
    }
    if name != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: name, protoFieldNumber: 2, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
    }
    if instrument != Member.Instrument.vocal {
      try visitor.visitSingularField(fieldType: Member.Instrument.self, value: instrument, protoFieldNumber: 3, protoFieldName: "instrument", jsonFieldName: "instrument", swiftFieldName: "instrument")
    }
  }

  public func _protoc_generated_isEqualTo(other: Member) -> Bool {
    if id != other.id {return false}
    if name != other.name {return false}
    if instrument != other.instrument {return false}
    return true
  }
}

public struct RockBand: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "RockBand"}
  public var protoMessageName: String {return "RockBand"}
  public var protoPackageName: String {return ""}
  public var jsonFieldNames: [String: Int] {return [
    "id": 1,
    "name": 2,
    "members": 3,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "id": 1,
    "name": 2,
    "members": 3,
  ]}

  public var id: Int64 = 0

  public var name: String = ""

  public var members: [Member] = []

  public init() {}

  public init(id: Int64? = nil,
    name: String? = nil,
    members: [Member] = [])
  {
    if let v = id {
      self.id = v
    }
    if let v = name {
      self.name = v
    }
    if !members.isEmpty {
      self.members = members
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufInt64.self, value: &id)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &name)
    case 3: handled = try setter.decodeRepeatedMessageField(fieldType: Member.self, value: &members)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if id != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: id, protoFieldNumber: 1, protoFieldName: "id", jsonFieldName: "id", swiftFieldName: "id")
    }
    if name != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: name, protoFieldNumber: 2, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
    }
    if !members.isEmpty {
      try visitor.visitRepeatedMessageField(value: members, protoFieldNumber: 3, protoFieldName: "members", jsonFieldName: "members", swiftFieldName: "members")
    }
  }

  public func _protoc_generated_isEqualTo(other: RockBand) -> Bool {
    if id != other.id {return false}
    if name != other.name {return false}
    if members != other.members {return false}
    return true
  }
}