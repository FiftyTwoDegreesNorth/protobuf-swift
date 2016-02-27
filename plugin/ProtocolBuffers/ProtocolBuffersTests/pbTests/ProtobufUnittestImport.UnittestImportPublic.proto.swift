// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file unittest_import_public.proto

import Foundation
import ProtocolBuffers


public extension ProtobufUnittestImport{}

public func == (lhs: ProtobufUnittestImport.PublicImportMessage, rhs: ProtobufUnittestImport.PublicImportMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasE == rhs.hasE) && (!lhs.hasE || lhs.e == rhs.e)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension ProtobufUnittestImport {
  public struct UnittestImportPublicRoot {
    public static var sharedInstance : UnittestImportPublicRoot {
     struct Static {
         static let instance : UnittestImportPublicRoot = UnittestImportPublicRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class PublicImportMessage : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var e:Int32 = Int32(0)

    public private(set) var hasE:Bool = false
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasE {
        try output.writeInt32(1, value:e)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasE {
        serialize_size += e.computeInt32Size(1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<ProtobufUnittestImport.PublicImportMessage> {
      var mergedArray = Array<ProtobufUnittestImport.PublicImportMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> ProtobufUnittestImport.PublicImportMessage? {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFromData(data, extensionRegistry:ProtobufUnittestImport.UnittestImportPublicRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessage {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> ProtobufUnittestImport.PublicImportMessage.Builder {
      return ProtobufUnittestImport.PublicImportMessage.classBuilder() as! ProtobufUnittestImport.PublicImportMessage.Builder
    }
    public func getBuilder() -> ProtobufUnittestImport.PublicImportMessage.Builder {
      return classBuilder() as! ProtobufUnittestImport.PublicImportMessage.Builder
    }
    public override class func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.PublicImportMessage.Builder()
    }
    public override func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.PublicImportMessage.Builder()
    }
    public func toBuilder() throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
      return try ProtobufUnittestImport.PublicImportMessage.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:ProtobufUnittestImport.PublicImportMessage) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
      return try ProtobufUnittestImport.PublicImportMessage.Builder().mergeFrom(prototype)
    }
    override public func getDescription(indent:String) throws -> String {
      var output:String = ""
      if hasE {
        output += "\(indent) e: \(e) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasE {
               hashCode = (hashCode &* 31) &+ e.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "ProtobufUnittestImport.PublicImportMessage"
    }
    override public func className() -> String {
        return "ProtobufUnittestImport.PublicImportMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return ProtobufUnittestImport.PublicImportMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:ProtobufUnittestImport.PublicImportMessage = ProtobufUnittestImport.PublicImportMessage()
      public func getMessage() -> ProtobufUnittestImport.PublicImportMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasE:Bool {
           get {
                return builderResult.hasE
           }
      }
      public var e:Int32 {
           get {
                return builderResult.e
           }
           set (value) {
               builderResult.hasE = true
               builderResult.e = value
           }
      }
      public func setE(value:Int32) -> ProtobufUnittestImport.PublicImportMessage.Builder {
        self.e = value
        return self
      }
      public func clearE() -> ProtobufUnittestImport.PublicImportMessage.Builder{
           builderResult.hasE = false
           builderResult.e = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      public override func clear() -> ProtobufUnittestImport.PublicImportMessage.Builder {
        builderResult = ProtobufUnittestImport.PublicImportMessage()
        return self
      }
      public override func clone() throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
        return try ProtobufUnittestImport.PublicImportMessage.builderWithPrototype(builderResult)
      }
      public override func build() throws -> ProtobufUnittestImport.PublicImportMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> ProtobufUnittestImport.PublicImportMessage {
        let returnMe:ProtobufUnittestImport.PublicImportMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:ProtobufUnittestImport.PublicImportMessage) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
        if other == ProtobufUnittestImport.PublicImportMessage() {
         return self
        }
        if other.hasE {
             e = other.e
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      public override func mergeFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      public override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8 :
            e = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
