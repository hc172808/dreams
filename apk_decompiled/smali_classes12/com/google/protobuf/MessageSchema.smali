.class final Lcom/google/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "MessageSchema.java"

# interfaces
.implements Lcom/google/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final ENFORCE_UTF8_MASK:I = 0x20000000

.field private static final FIELD_TYPE_MASK:I = 0xff00000

.field private static final INTS_PER_FIELD:I = 0x3

.field private static final NO_PRESENCE_SENTINEL:I = 0xfffff

.field private static final OFFSET_BITS:I = 0x14

.field private static final OFFSET_MASK:I = 0xfffff

.field static final ONEOF_TYPE_OFFSET:I = 0x33

.field private static final REQUIRED_MASK:I = 0x10000000

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private final buffer:[I

.field private final checkInitializedCount:I

.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

.field private final extensionSchema:Lcom/google/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final intArray:[I

.field private final listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

.field private final lite:Z

.field private final mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

.field private final maxFieldNumber:I

.field private final minFieldNumber:I

.field private final newInstanceSchema:Lcom/google/protobuf/NewInstanceSchema;

.field private final objects:[Ljava/lang/Object;

.field private final proto3:Z

.field private final repeatedFieldOffsetStart:I

.field private final unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private final useCachedSizeField:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 102
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)V
    .locals 16
    .param p1, "buffer"    # [I
    .param p2, "objects"    # [Ljava/lang/Object;
    .param p3, "minFieldNumber"    # I
    .param p4, "maxFieldNumber"    # I
    .param p5, "defaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p6, "proto3"    # Z
    .param p7, "useCachedSizeField"    # Z
    .param p8, "intArray"    # [I
    .param p9, "checkInitialized"    # I
    .param p10, "mapFieldPositions"    # I
    .param p11, "newInstanceSchema"    # Lcom/google/protobuf/NewInstanceSchema;
    .param p12, "listFieldSchema"    # Lcom/google/protobuf/ListFieldSchema;
    .param p15, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/protobuf/MessageLite;",
            "ZZ[III",
            "Lcom/google/protobuf/NewInstanceSchema;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p13, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<**>;"
    .local p14, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p14

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    .line 197
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 198
    move/from16 v5, p3

    iput v5, v0, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    .line 199
    move/from16 v6, p4

    iput v6, v0, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    .line 201
    instance-of v7, v1, Lcom/google/protobuf/GeneratedMessageLite;

    iput-boolean v7, v0, Lcom/google/protobuf/MessageSchema;->lite:Z

    .line 202
    move/from16 v7, p6

    iput-boolean v7, v0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    .line 203
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/protobuf/ExtensionSchema;->hasExtensions(Lcom/google/protobuf/MessageLite;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, v0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    .line 204
    move/from16 v8, p7

    iput-boolean v8, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 206
    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    .line 207
    move/from16 v10, p9

    iput v10, v0, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .line 208
    move/from16 v11, p10

    iput v11, v0, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 210
    move-object/from16 v12, p11

    iput-object v12, v0, Lcom/google/protobuf/MessageSchema;->newInstanceSchema:Lcom/google/protobuf/NewInstanceSchema;

    .line 211
    move-object/from16 v13, p12

    iput-object v13, v0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 212
    move-object/from16 v14, p13

    iput-object v14, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 213
    iput-object v2, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 214
    iput-object v1, v0, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 215
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 216
    return-void
.end method

.method private arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 2
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 5791
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static booleanAt(Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 5766
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method private decodeMapEntry([BIILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 18
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p6, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/google/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4431
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p4, "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .local p5, "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object/from16 v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v0, p2

    invoke-static {v7, v0, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4432
    .end local p2    # "position":I
    .local v0, "position":I
    iget v11, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4433
    .local v11, "length":I
    if-ltz v11, :cond_5

    sub-int v1, v8, v0

    if-gt v11, v1, :cond_5

    .line 4436
    add-int v12, v0, v11

    .line 4437
    .local v12, "end":I
    iget-object v1, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 4438
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    move-object v13, v1

    move-object v14, v2

    .line 4439
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .local v13, "key":Ljava/lang/Object;, "TK;"
    .local v14, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    if-ge v0, v12, :cond_3

    .line 4440
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "position":I
    .local v1, "position":I
    aget-byte v0, v7, v0

    .line 4441
    .local v0, "tag":I
    if-gez v0, :cond_0

    .line 4442
    invoke-static {v0, v7, v1, v10}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 4443
    iget v0, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    move v15, v0

    move v6, v1

    goto :goto_1

    .line 4441
    :cond_0
    move v15, v0

    move v6, v1

    .line 4445
    .end local v0    # "tag":I
    .end local v1    # "position":I
    .local v6, "position":I
    .local v15, "tag":I
    :goto_1
    ushr-int/lit8 v16, v15, 0x3

    .line 4446
    .local v16, "fieldNumber":I
    and-int/lit8 v5, v15, 0x7

    .line 4447
    .local v5, "wireType":I
    packed-switch v16, :pswitch_data_0

    move/from16 v17, v6

    move/from16 p2, v11

    move v11, v5

    .end local v5    # "wireType":I
    .end local v6    # "position":I
    .local v11, "wireType":I
    .local v17, "position":I
    .local p2, "length":I
    goto :goto_2

    .line 4457
    .end local v17    # "position":I
    .end local p2    # "length":I
    .restart local v5    # "wireType":I
    .restart local v6    # "position":I
    .local v11, "length":I
    :pswitch_0
    iget-object v0, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v5, v0, :cond_1

    .line 4458
    iget-object v4, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    iget-object v0, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 4464
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    .line 4459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move/from16 v3, p3

    move/from16 p2, v11

    move v11, v5

    .end local v5    # "wireType":I
    .local v11, "wireType":I
    .restart local p2    # "length":I
    move-object/from16 v5, v17

    move/from16 v17, v6

    .end local v6    # "position":I
    .restart local v17    # "position":I
    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4466
    .end local v17    # "position":I
    .local v0, "position":I
    iget-object v14, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4467
    move/from16 v11, p2

    goto :goto_0

    .line 4457
    .end local v0    # "position":I
    .end local p2    # "length":I
    .restart local v5    # "wireType":I
    .restart local v6    # "position":I
    .local v11, "length":I
    :cond_1
    move/from16 v17, v6

    move/from16 p2, v11

    move v11, v5

    .end local v5    # "wireType":I
    .end local v6    # "position":I
    .local v11, "wireType":I
    .restart local v17    # "position":I
    .restart local p2    # "length":I
    goto :goto_2

    .line 4449
    .end local v17    # "position":I
    .end local p2    # "length":I
    .restart local v5    # "wireType":I
    .restart local v6    # "position":I
    .local v11, "length":I
    :pswitch_1
    move/from16 v17, v6

    move/from16 p2, v11

    move v11, v5

    .end local v5    # "wireType":I
    .end local v6    # "position":I
    .local v11, "wireType":I
    .restart local v17    # "position":I
    .restart local p2    # "length":I
    iget-object v0, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v11, v0, :cond_2

    .line 4450
    iget-object v4, v9, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    .line 4451
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p3

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4452
    .end local v17    # "position":I
    .restart local v0    # "position":I
    iget-object v13, v10, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4453
    move/from16 v11, p2

    goto :goto_0

    .line 4473
    .end local v0    # "position":I
    .restart local v17    # "position":I
    :cond_2
    :goto_2
    move/from16 v1, v17

    .end local v17    # "position":I
    .restart local v1    # "position":I
    invoke-static {v15, v7, v1, v8, v10}, Lcom/google/protobuf/ArrayDecoders;->skipField(I[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4474
    .end local v1    # "position":I
    .end local v11    # "wireType":I
    .end local v15    # "tag":I
    .end local v16    # "fieldNumber":I
    .restart local v0    # "position":I
    move/from16 v11, p2

    goto :goto_0

    .line 4475
    .end local p2    # "length":I
    .local v11, "length":I
    :cond_3
    move/from16 p2, v11

    .end local v11    # "length":I
    .restart local p2    # "length":I
    if-ne v0, v12, :cond_4

    .line 4478
    move-object/from16 v1, p5

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4479
    return v12

    .line 4476
    :cond_4
    move-object/from16 v1, p5

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 4433
    .end local v12    # "end":I
    .end local v13    # "key":Ljava/lang/Object;, "TK;"
    .end local v14    # "value":Ljava/lang/Object;, "TV;"
    .end local p2    # "length":I
    .restart local v11    # "length":I
    :cond_5
    move-object/from16 v1, p5

    move/from16 p2, v11

    .line 4434
    .end local v11    # "length":I
    .restart local p2    # "length":I
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeMapEntryValue([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "position"    # I
    .param p3, "limit"    # I
    .param p4, "fieldType"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p6, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4363
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p5, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/google/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p4}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4417
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4414
    :pswitch_0
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4415
    goto/16 :goto_1

    .line 4410
    :pswitch_1
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4411
    iget-wide v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4412
    goto/16 :goto_1

    .line 4406
    :pswitch_2
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4407
    iget v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4408
    goto/16 :goto_1

    .line 4403
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 4402
    invoke-static {v0, p1, p2, p3, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4404
    goto :goto_1

    .line 4397
    :pswitch_4
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4398
    iget-wide v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4399
    goto :goto_1

    .line 4392
    :pswitch_5
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4393
    iget v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4394
    goto :goto_1

    .line 4386
    :pswitch_6
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4387
    add-int/lit8 p2, p2, 0x4

    .line 4388
    goto :goto_1

    .line 4382
    :pswitch_7
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4383
    add-int/lit8 p2, p2, 0x8

    .line 4384
    goto :goto_1

    .line 4377
    :pswitch_8
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4378
    add-int/lit8 p2, p2, 0x4

    .line 4379
    goto :goto_1

    .line 4372
    :pswitch_9
    invoke-static {p1, p2}, Lcom/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4373
    add-int/lit8 p2, p2, 0x8

    .line 4374
    goto :goto_1

    .line 4369
    :pswitch_a
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4370
    goto :goto_1

    .line 4365
    :pswitch_b
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4366
    iget-wide v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p6, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4367
    nop

    .line 4419
    :goto_1
    return p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static doubleAt(Ljava/lang/Object;J)D
    .locals 2
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 5750
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 10
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 818
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 819
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 821
    .local v1, "offset":J
    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    .line 943
    return v5

    .line 938
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 940
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 939
    invoke-static {v3, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 938
    :goto_0
    return v4

    .line 918
    :pswitch_1
    nop

    .line 919
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 918
    invoke-static {v3, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 915
    :pswitch_2
    nop

    .line 916
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 915
    invoke-static {v3, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 879
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 881
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 880
    invoke-static {v3, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 879
    :goto_1
    return v4

    .line 876
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 877
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 876
    :goto_2
    return v4

    .line 873
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 874
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    nop

    .line 873
    :goto_3
    return v4

    .line 870
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 871
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 870
    :goto_4
    return v4

    .line 867
    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 868
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    nop

    .line 867
    :goto_5
    return v4

    .line 864
    :pswitch_8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 865
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    nop

    .line 864
    :goto_6
    return v4

    .line 861
    :pswitch_9
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 862
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_7

    const/4 v4, 0x1

    goto :goto_7

    :cond_7
    nop

    .line 861
    :goto_7
    return v4

    .line 857
    :pswitch_a
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 859
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 858
    invoke-static {v3, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    nop

    .line 857
    :goto_8
    return v4

    .line 853
    :pswitch_b
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 855
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 854
    invoke-static {v3, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    goto :goto_9

    :cond_9
    nop

    .line 853
    :goto_9
    return v4

    .line 849
    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 851
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 850
    invoke-static {v3, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v4, 0x1

    goto :goto_a

    :cond_a
    nop

    .line 849
    :goto_a
    return v4

    .line 846
    :pswitch_d
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 847
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v6

    if-ne v3, v6, :cond_b

    const/4 v4, 0x1

    goto :goto_b

    :cond_b
    nop

    .line 846
    :goto_b
    return v4

    .line 843
    :pswitch_e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 844
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_c

    const/4 v4, 0x1

    goto :goto_c

    :cond_c
    nop

    .line 843
    :goto_c
    return v4

    .line 840
    :pswitch_f
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 841
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_d

    const/4 v4, 0x1

    goto :goto_d

    :cond_d
    nop

    .line 840
    :goto_d
    return v4

    .line 837
    :pswitch_10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 838
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_e

    const/4 v4, 0x1

    goto :goto_e

    :cond_e
    nop

    .line 837
    :goto_e
    return v4

    .line 834
    :pswitch_11
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 835
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_f

    const/4 v4, 0x1

    goto :goto_f

    :cond_f
    nop

    .line 834
    :goto_f
    return v4

    .line 831
    :pswitch_12
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 832
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_10

    const/4 v4, 0x1

    goto :goto_10

    :cond_10
    nop

    .line 831
    :goto_10
    return v4

    .line 827
    :pswitch_13
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 828
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 829
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    if-ne v3, v6, :cond_11

    const/4 v4, 0x1

    goto :goto_11

    :cond_11
    nop

    .line 827
    :goto_11
    return v4

    .line 823
    :pswitch_14
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 824
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 825
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_12

    const/4 v4, 0x1

    goto :goto_12

    :cond_12
    nop

    .line 823
    :goto_12
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 16
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 5500
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p3, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p4, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct {v7, v8}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v9

    .line 5501
    .local v9, "fieldNumber":I
    invoke-direct {v7, v8}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    .line 5502
    .local v10, "offset":J
    move-object/from16 v12, p1

    invoke-static {v12, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    .line 5503
    .local v13, "mapField":Ljava/lang/Object;
    if-nez v13, :cond_0

    .line 5504
    return-object p3

    .line 5506
    :cond_0
    invoke-direct {v7, v8}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v14

    .line 5507
    .local v14, "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    if-nez v14, :cond_1

    .line 5508
    return-object p3

    .line 5510
    :cond_1
    iget-object v0, v7, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v0, v13}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v15

    .line 5512
    .local v15, "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    nop

    .line 5513
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v9

    move-object v3, v15

    move-object v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/MessageSchema;->filterUnknownEnumMap(IILjava/util/Map;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v0

    .line 5515
    .end local p3    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v0, "unknownFields":Ljava/lang/Object;, "TUB;"
    return-object v0
.end method

.method private final filterUnknownEnumMap(IILjava/util/Map;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 8
    .param p1, "pos"    # I
    .param p2, "number"    # I
    .param p4, "enumVerifier"    # Lcom/google/protobuf/Internal$EnumVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 5526
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p3, "mapData":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p5, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p6, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 5527
    invoke-direct {p0, p1}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    .line 5528
    .local v0, "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5529
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5530
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p4, v3}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5531
    if-nez p5, :cond_0

    .line 5532
    invoke-virtual {p6}, Lcom/google/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object p5

    .line 5534
    :cond_0
    nop

    .line 5535
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 5536
    .local v3, "entrySize":I
    invoke-static {v3}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/ByteString$CodedBuilder;

    move-result-object v4

    .line 5537
    .local v4, "codedBuilder":Lcom/google/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v4}, Lcom/google/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v5

    .line 5539
    .local v5, "codedOutput":Lcom/google/protobuf/CodedOutputStream;
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v0, v6, v7}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5543
    nop

    .line 5544
    invoke-virtual {v4}, Lcom/google/protobuf/ByteString$CodedBuilder;->build()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {p6, p5, p2, v6}, Lcom/google/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    .line 5545
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 5540
    :catch_0
    move-exception v6

    .line 5542
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 5547
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "entrySize":I
    .end local v4    # "codedBuilder":Lcom/google/protobuf/ByteString$CodedBuilder;
    .end local v5    # "codedOutput":Lcom/google/protobuf/CodedOutputStream;
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 5548
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_2
    return-object p5
.end method

.method private static floatAt(Ljava/lang/Object;J)F
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 5754
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method private getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 2
    .param p1, "pos"    # I

    .line 4869
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method private getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .locals 2
    .param p1, "pos"    # I

    .line 4865
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getMessageFieldSchema(I)Lcom/google/protobuf/Schema;
    .locals 5
    .param p1, "pos"    # I

    .line 4854
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    div-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    .line 4855
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/google/protobuf/Schema;

    .line 4856
    .local v1, "schema":Lcom/google/protobuf/Schema;
    if-eqz v1, :cond_0

    .line 4857
    return-object v1

    .line 4859
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v1

    .line 4860
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 4861
    return-object v1
.end method

.method static getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;

    .line 4346
    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 4347
    .local v0, "unknownFields":Lcom/google/protobuf/UnknownFieldSetLite;
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4348
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 4349
    move-object v1, p0

    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite;

    iput-object v0, v1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 4351
    :cond_0
    return-object v0
.end method

.method private getSerializedSizeProto2(Ljava/lang/Object;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1427
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1429
    .local v2, "size":I
    sget-object v3, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 1430
    .local v3, "unsafe":Lsun/misc/Unsafe;
    const v4, 0xfffff

    .line 1431
    .local v4, "currentPresenceFieldOffset":I
    const/4 v5, 0x0

    .line 1432
    .local v5, "currentPresenceField":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v7, v7

    if-ge v6, v7, :cond_26

    .line 1433
    invoke-direct {v0, v6}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v7

    .line 1434
    .local v7, "typeAndOffset":I
    invoke-direct {v0, v6}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v8

    .line 1436
    .local v8, "number":I
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v9

    .line 1437
    .local v9, "fieldType":I
    const/4 v10, 0x0

    .line 1438
    .local v10, "presenceMaskAndOffset":I
    const/4 v11, 0x0

    .line 1439
    .local v11, "presenceMask":I
    const/16 v12, 0x11

    const v13, 0xfffff

    const/4 v14, 0x1

    if-gt v9, v12, :cond_1

    .line 1440
    iget-object v12, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v15, v6, 0x2

    aget v10, v12, v15

    .line 1441
    and-int v12, v10, v13

    .line 1442
    .local v12, "presenceFieldOffset":I
    ushr-int/lit8 v13, v10, 0x14

    shl-int v11, v14, v13

    .line 1443
    if-eq v12, v4, :cond_0

    .line 1444
    move v4, v12

    .line 1445
    int-to-long v14, v12

    invoke-virtual {v3, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 1447
    .end local v12    # "presenceFieldOffset":I
    :cond_0
    goto :goto_1

    :cond_1
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_0

    sget-object v12, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 1448
    invoke-virtual {v12}, Lcom/google/protobuf/FieldType;->id()I

    move-result v12

    if-lt v9, v12, :cond_2

    sget-object v12, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 1449
    invoke-virtual {v12}, Lcom/google/protobuf/FieldType;->id()I

    move-result v12

    if-gt v9, v12, :cond_2

    .line 1450
    iget-object v12, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v14, v6, 0x2

    aget v12, v12, v14

    and-int v10, v12, v13

    .line 1453
    :cond_2
    :goto_1
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    .line 1455
    .local v12, "offset":J
    const/4 v14, 0x0

    packed-switch v9, :pswitch_data_0

    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .local v16, "currentPresenceFieldOffset":I
    goto/16 :goto_4

    .line 1972
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_0
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1973
    nop

    .line 1976
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/protobuf/MessageLite;

    .line 1977
    invoke-direct {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v15

    .line 1974
    invoke-static {v8, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1972
    :cond_3
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1967
    :pswitch_1
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1968
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1967
    :cond_4
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1962
    :pswitch_2
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1963
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1962
    :cond_5
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1957
    :pswitch_3
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1958
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1957
    :cond_6
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1952
    :pswitch_4
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1953
    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1952
    :cond_7
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1947
    :pswitch_5
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1948
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1947
    :cond_8
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1942
    :pswitch_6
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1943
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1942
    :cond_9
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1935
    :pswitch_7
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1936
    nop

    .line 1938
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/protobuf/ByteString;

    .line 1937
    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1935
    :cond_a
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1929
    :pswitch_8
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1930
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    .line 1931
    .local v14, "value":Ljava/lang/Object;
    invoke-direct {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v15

    invoke-static {v8, v14, v15}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)I

    move-result v15

    add-int/2addr v2, v15

    .line 1932
    .end local v14    # "value":Ljava/lang/Object;
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1929
    :cond_b
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1919
    :pswitch_9
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1920
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    .line 1921
    .restart local v14    # "value":Ljava/lang/Object;
    instance-of v15, v14, Lcom/google/protobuf/ByteString;

    if-eqz v15, :cond_c

    .line 1922
    move-object v15, v14

    check-cast v15, Lcom/google/protobuf/ByteString;

    invoke-static {v8, v15}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v15

    add-int/2addr v2, v15

    goto :goto_2

    .line 1924
    :cond_c
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    invoke-static {v8, v15}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v15

    add-int/2addr v2, v15

    .line 1926
    .end local v14    # "value":Ljava/lang/Object;
    :goto_2
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1919
    :cond_d
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1914
    :pswitch_a
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1915
    const/4 v14, 0x1

    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1914
    :cond_e
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1909
    :pswitch_b
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1910
    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1909
    :cond_f
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1904
    :pswitch_c
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 1905
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1904
    :cond_10
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1899
    :pswitch_d
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1900
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v14

    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1899
    :cond_11
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1894
    :pswitch_e
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1895
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1894
    :cond_12
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1889
    :pswitch_f
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 1890
    invoke-static {v1, v12, v13}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1889
    :cond_13
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1884
    :pswitch_10
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 1885
    const/4 v14, 0x0

    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1884
    :cond_14
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1879
    :pswitch_11
    invoke-direct {v0, v1, v8, v6}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1880
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v14

    add-int/2addr v2, v14

    move/from16 v16, v4

    goto/16 :goto_4

    .line 1879
    :cond_15
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1874
    :pswitch_12
    iget-object v14, v0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 1876
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-direct {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    .line 1875
    invoke-interface {v14, v8, v15, v4}, Lcom/google/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1877
    goto/16 :goto_4

    .line 1866
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_13
    move/from16 v16, v4

    .line 1869
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1870
    invoke-direct {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v14

    .line 1867
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1871
    goto/16 :goto_4

    .line 1851
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_14
    move/from16 v16, v4

    .line 1853
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1852
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1854
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1855
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_16

    .line 1856
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1858
    :cond_16
    nop

    .line 1859
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1860
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1835
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_15
    move/from16 v16, v4

    .line 1837
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1836
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1838
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1839
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_17

    .line 1840
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1842
    :cond_17
    nop

    .line 1843
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1844
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1819
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_16
    move/from16 v16, v4

    .line 1821
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1820
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1822
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1823
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_18

    .line 1824
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1826
    :cond_18
    nop

    .line 1827
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1828
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1803
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_17
    move/from16 v16, v4

    .line 1805
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1804
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1806
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1807
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_19

    .line 1808
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1810
    :cond_19
    nop

    .line 1811
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1812
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1787
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_18
    move/from16 v16, v4

    .line 1789
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1788
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1790
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1791
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_1a

    .line 1792
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1794
    :cond_1a
    nop

    .line 1795
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1796
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1771
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_19
    move/from16 v16, v4

    .line 1773
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1772
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1774
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1775
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_1b

    .line 1776
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1778
    :cond_1b
    nop

    .line 1779
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1780
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1755
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_1a
    move/from16 v16, v4

    .line 1757
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1756
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1758
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1759
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_1c

    .line 1760
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1762
    :cond_1c
    nop

    .line 1763
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1764
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1739
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_1b
    move/from16 v16, v4

    .line 1741
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1740
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1742
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1743
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_1d

    .line 1744
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1746
    :cond_1d
    nop

    .line 1747
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1748
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1723
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_1c
    move/from16 v16, v4

    .line 1725
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1724
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1726
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1727
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_1e

    .line 1728
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1730
    :cond_1e
    nop

    .line 1731
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1732
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1707
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_1d
    move/from16 v16, v4

    .line 1709
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1708
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1710
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1711
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_1f

    .line 1712
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1714
    :cond_1f
    nop

    .line 1715
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1716
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1691
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_1e
    move/from16 v16, v4

    .line 1693
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1692
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1694
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1695
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_20

    .line 1696
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1698
    :cond_20
    nop

    .line 1699
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1700
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1675
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_1f
    move/from16 v16, v4

    .line 1677
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1676
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1678
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1679
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_21

    .line 1680
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1682
    :cond_21
    nop

    .line 1683
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1684
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1659
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_20
    move/from16 v16, v4

    .line 1661
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1660
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1662
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1663
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_22

    .line 1664
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1666
    :cond_22
    nop

    .line 1667
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1668
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1643
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_21
    move/from16 v16, v4

    .line 1645
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1644
    invoke-static {v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v4

    .line 1646
    .local v4, "fieldSize":I
    if-lez v4, :cond_25

    .line 1647
    iget-boolean v14, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v14, :cond_23

    .line 1648
    int-to-long v14, v10

    invoke-virtual {v3, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1650
    :cond_23
    nop

    .line 1651
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v14

    .line 1652
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    add-int/2addr v2, v14

    goto/16 :goto_4

    .line 1637
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_22
    move/from16 v16, v4

    .line 1639
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1638
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1640
    goto/16 :goto_4

    .line 1632
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_23
    move/from16 v16, v4

    .line 1634
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1633
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1635
    goto/16 :goto_4

    .line 1627
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_24
    move/from16 v16, v4

    .line 1629
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1628
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1630
    goto/16 :goto_4

    .line 1622
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_25
    move/from16 v16, v4

    .line 1624
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1623
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1625
    goto/16 :goto_4

    .line 1617
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_26
    move/from16 v16, v4

    .line 1619
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1618
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1620
    goto/16 :goto_4

    .line 1612
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_27
    move/from16 v16, v4

    .line 1614
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1613
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1615
    goto/16 :goto_4

    .line 1607
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_28
    move/from16 v16, v4

    .line 1609
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1608
    invoke-static {v8, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1610
    goto/16 :goto_4

    .line 1602
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_29
    move/from16 v16, v4

    .line 1604
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v14

    .line 1603
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1605
    goto/16 :goto_4

    .line 1598
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_2a
    move/from16 v16, v4

    .line 1599
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v8, v4}, Lcom/google/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1600
    goto/16 :goto_4

    .line 1593
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_2b
    move/from16 v16, v4

    .line 1595
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1594
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1596
    goto/16 :goto_4

    .line 1588
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_2c
    move/from16 v16, v4

    .line 1590
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1589
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1591
    goto/16 :goto_4

    .line 1583
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_2d
    move/from16 v16, v4

    .line 1585
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1584
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1586
    goto/16 :goto_4

    .line 1578
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_2e
    move/from16 v16, v4

    .line 1580
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1579
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1581
    goto/16 :goto_4

    .line 1573
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_2f
    move/from16 v16, v4

    .line 1575
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1574
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1576
    goto/16 :goto_4

    .line 1568
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_30
    move/from16 v16, v4

    .line 1570
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1569
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1571
    goto/16 :goto_4

    .line 1563
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_31
    move/from16 v16, v4

    .line 1565
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1564
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1566
    goto/16 :goto_4

    .line 1558
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_32
    move/from16 v16, v4

    .line 1560
    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1559
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 1561
    goto/16 :goto_4

    .line 1549
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_33
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1550
    nop

    .line 1553
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    .line 1554
    invoke-direct {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v14

    .line 1551
    invoke-static {v8, v4, v14}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1544
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_34
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1545
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1539
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_35
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1540
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1534
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_36
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1535
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1529
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_37
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1530
    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1524
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_38
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1525
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1519
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_39
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1520
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1513
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_3a
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1514
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 1515
    .local v4, "value":Lcom/google/protobuf/ByteString;
    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    .line 1516
    .end local v4    # "value":Lcom/google/protobuf/ByteString;
    goto/16 :goto_4

    .line 1507
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_3b
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1508
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1509
    .local v4, "value":Ljava/lang/Object;
    invoke-direct {v0, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v14

    invoke-static {v8, v4, v14}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)I

    move-result v14

    add-int/2addr v2, v14

    .line 1510
    .end local v4    # "value":Ljava/lang/Object;
    goto/16 :goto_4

    .line 1497
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_3c
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1498
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1499
    .local v4, "value":Ljava/lang/Object;
    instance-of v14, v4, Lcom/google/protobuf/ByteString;

    if-eqz v14, :cond_24

    .line 1500
    move-object v14, v4

    check-cast v14, Lcom/google/protobuf/ByteString;

    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v14

    add-int/2addr v2, v14

    goto :goto_3

    .line 1502
    :cond_24
    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v14

    add-int/2addr v2, v14

    .line 1504
    .end local v4    # "value":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_4

    .line 1492
    .end local v16    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    :pswitch_3d
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1493
    const/4 v4, 0x1

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_4

    .line 1487
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_3e
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1488
    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1482
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_3f
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1483
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1477
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_40
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1478
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1472
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_41
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1473
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1467
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_42
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1468
    invoke-virtual {v3, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-static {v8, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1462
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_43
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1463
    const/4 v4, 0x0

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4

    .line 1457
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :pswitch_44
    move/from16 v16, v4

    .end local v4    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    and-int v4, v5, v11

    if-eqz v4, :cond_25

    .line 1458
    const-wide/16 v14, 0x0

    invoke-static {v8, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v2, v4

    .line 1432
    .end local v7    # "typeAndOffset":I
    .end local v8    # "number":I
    .end local v9    # "fieldType":I
    .end local v10    # "presenceMaskAndOffset":I
    .end local v11    # "presenceMask":I
    .end local v12    # "offset":J
    :cond_25
    :goto_4
    add-int/lit8 v6, v6, 0x3

    move/from16 v4, v16

    goto/16 :goto_0

    .line 1985
    .end local v6    # "i":I
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v4    # "currentPresenceFieldOffset":I
    :cond_26
    iget-object v6, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v6, v1}, Lcom/google/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v2, v6

    .line 1987
    iget-boolean v6, v0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v6, :cond_27

    .line 1988
    iget-object v6, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v6, v1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v6

    add-int/2addr v2, v6

    .line 1991
    :cond_27
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSerializedSizeProto3(Ljava/lang/Object;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1995
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 1996
    .local v2, "unsafe":Lsun/misc/Unsafe;
    const/4 v3, 0x0

    .line 1997
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v5, v5

    if-ge v4, v5, :cond_12

    .line 1998
    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    .line 1999
    .local v5, "typeAndOffset":I
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v6

    .line 2000
    .local v6, "fieldType":I
    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 2002
    .local v7, "number":I
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    .line 2003
    .local v8, "offset":J
    sget-object v10, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 2004
    invoke-virtual {v10}, Lcom/google/protobuf/FieldType;->id()I

    move-result v10

    const/4 v11, 0x0

    if-lt v6, v10, :cond_0

    sget-object v10, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    .line 2005
    invoke-virtual {v10}, Lcom/google/protobuf/FieldType;->id()I

    move-result v10

    if-gt v6, v10, :cond_0

    iget-object v10, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v12, v4, 0x2

    aget v10, v10, v12

    const v12, 0xfffff

    and-int/2addr v10, v12

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 2009
    .local v10, "cachedSizeOffset":I
    :goto_1
    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    .line 2508
    :pswitch_0
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2509
    nop

    .line 2512
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/protobuf/MessageLite;

    .line 2513
    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v12

    .line 2510
    invoke-static {v7, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2503
    :pswitch_1
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2504
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2498
    :pswitch_2
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2499
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2493
    :pswitch_3
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2494
    invoke-static {v7, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2488
    :pswitch_4
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2489
    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2483
    :pswitch_5
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2484
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2478
    :pswitch_6
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2479
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2471
    :pswitch_7
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2472
    nop

    .line 2474
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/protobuf/ByteString;

    .line 2473
    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2465
    :pswitch_8
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2466
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2467
    .local v11, "value":Ljava/lang/Object;
    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2468
    .end local v11    # "value":Ljava/lang/Object;
    goto/16 :goto_4

    .line 2455
    :pswitch_9
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2456
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2457
    .restart local v11    # "value":Ljava/lang/Object;
    instance-of v12, v11, Lcom/google/protobuf/ByteString;

    if-eqz v12, :cond_1

    .line 2458
    move-object v12, v11

    check-cast v12, Lcom/google/protobuf/ByteString;

    invoke-static {v7, v12}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_2

    .line 2460
    :cond_1
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2462
    .end local v11    # "value":Ljava/lang/Object;
    :goto_2
    goto/16 :goto_4

    .line 2450
    :pswitch_a
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2451
    invoke-static {v7, v12}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2445
    :pswitch_b
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2446
    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2440
    :pswitch_c
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2441
    invoke-static {v7, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2435
    :pswitch_d
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2436
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2430
    :pswitch_e
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2431
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2425
    :pswitch_f
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2426
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2420
    :pswitch_10
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2421
    invoke-static {v7, v13}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2415
    :pswitch_11
    invoke-direct {v0, v1, v7, v4}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2416
    const-wide/16 v11, 0x0

    invoke-static {v7, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2410
    :pswitch_12
    iget-object v11, v0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 2412
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v13

    .line 2411
    invoke-interface {v11, v7, v12, v13}, Lcom/google/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2413
    goto/16 :goto_4

    .line 2404
    :pswitch_13
    nop

    .line 2406
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v12

    .line 2405
    invoke-static {v7, v11, v12}, Lcom/google/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2407
    goto/16 :goto_4

    .line 2389
    :pswitch_14
    nop

    .line 2391
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2390
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2392
    .local v11, "fieldSize":I
    if-lez v11, :cond_11

    .line 2393
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_2

    .line 2394
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2396
    :cond_2
    nop

    .line 2397
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2398
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2373
    .end local v11    # "fieldSize":I
    :pswitch_15
    nop

    .line 2375
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2374
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2376
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2377
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_3

    .line 2378
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2380
    :cond_3
    nop

    .line 2381
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2382
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2357
    .end local v11    # "fieldSize":I
    :pswitch_16
    nop

    .line 2359
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2358
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2360
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2361
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_4

    .line 2362
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2364
    :cond_4
    nop

    .line 2365
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2366
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2341
    .end local v11    # "fieldSize":I
    :pswitch_17
    nop

    .line 2343
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2342
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2344
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2345
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_5

    .line 2346
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2348
    :cond_5
    nop

    .line 2349
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2350
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2325
    .end local v11    # "fieldSize":I
    :pswitch_18
    nop

    .line 2327
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2326
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2328
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2329
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_6

    .line 2330
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2332
    :cond_6
    nop

    .line 2333
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2334
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2309
    .end local v11    # "fieldSize":I
    :pswitch_19
    nop

    .line 2311
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2310
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2312
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2313
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_7

    .line 2314
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2316
    :cond_7
    nop

    .line 2317
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2318
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2293
    .end local v11    # "fieldSize":I
    :pswitch_1a
    nop

    .line 2295
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2294
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2296
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2297
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_8

    .line 2298
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2300
    :cond_8
    nop

    .line 2301
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2302
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2277
    .end local v11    # "fieldSize":I
    :pswitch_1b
    nop

    .line 2279
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2278
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2280
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2281
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_9

    .line 2282
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2284
    :cond_9
    nop

    .line 2285
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2286
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2261
    .end local v11    # "fieldSize":I
    :pswitch_1c
    nop

    .line 2263
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2262
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2264
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2265
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_a

    .line 2266
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2268
    :cond_a
    nop

    .line 2269
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2270
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2245
    .end local v11    # "fieldSize":I
    :pswitch_1d
    nop

    .line 2247
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2246
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2248
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2249
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_b

    .line 2250
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2252
    :cond_b
    nop

    .line 2253
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2254
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2229
    .end local v11    # "fieldSize":I
    :pswitch_1e
    nop

    .line 2231
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2230
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2232
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2233
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_c

    .line 2234
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2236
    :cond_c
    nop

    .line 2237
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2238
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2213
    .end local v11    # "fieldSize":I
    :pswitch_1f
    nop

    .line 2215
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2214
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2216
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2217
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_d

    .line 2218
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2220
    :cond_d
    nop

    .line 2221
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2222
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2197
    .end local v11    # "fieldSize":I
    :pswitch_20
    nop

    .line 2199
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2198
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2200
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2201
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_e

    .line 2202
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2204
    :cond_e
    nop

    .line 2205
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2206
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2181
    .end local v11    # "fieldSize":I
    :pswitch_21
    nop

    .line 2183
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2182
    invoke-static {v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v11

    .line 2184
    .restart local v11    # "fieldSize":I
    if-lez v11, :cond_11

    .line 2185
    iget-boolean v12, v0, Lcom/google/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_f

    .line 2186
    int-to-long v12, v10

    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2188
    :cond_f
    nop

    .line 2189
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v12

    .line 2190
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    goto/16 :goto_4

    .line 2176
    .end local v11    # "fieldSize":I
    :pswitch_22
    nop

    .line 2177
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2178
    goto/16 :goto_4

    .line 2171
    :pswitch_23
    nop

    .line 2173
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2172
    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2174
    goto/16 :goto_4

    .line 2168
    :pswitch_24
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2169
    goto/16 :goto_4

    .line 2165
    :pswitch_25
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2166
    goto/16 :goto_4

    .line 2160
    :pswitch_26
    nop

    .line 2162
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2161
    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2163
    goto/16 :goto_4

    .line 2155
    :pswitch_27
    nop

    .line 2157
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2156
    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2158
    goto/16 :goto_4

    .line 2150
    :pswitch_28
    nop

    .line 2152
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    .line 2151
    invoke-static {v7, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2153
    goto/16 :goto_4

    .line 2145
    :pswitch_29
    nop

    .line 2147
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v12

    .line 2146
    invoke-static {v7, v11, v12}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2148
    goto/16 :goto_4

    .line 2142
    :pswitch_2a
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v11

    add-int/2addr v3, v11

    .line 2143
    goto/16 :goto_4

    .line 2139
    :pswitch_2b
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2140
    goto/16 :goto_4

    .line 2136
    :pswitch_2c
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2137
    goto/16 :goto_4

    .line 2133
    :pswitch_2d
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2134
    goto/16 :goto_4

    .line 2128
    :pswitch_2e
    nop

    .line 2130
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    .line 2129
    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2131
    goto/16 :goto_4

    .line 2124
    :pswitch_2f
    nop

    .line 2125
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2126
    goto/16 :goto_4

    .line 2120
    :pswitch_30
    nop

    .line 2121
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2122
    goto/16 :goto_4

    .line 2117
    :pswitch_31
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2118
    goto/16 :goto_4

    .line 2114
    :pswitch_32
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v12

    invoke-static {v7, v12, v11}, Lcom/google/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v11

    add-int/2addr v3, v11

    .line 2115
    goto/16 :goto_4

    .line 2105
    :pswitch_33
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2106
    nop

    .line 2109
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/protobuf/MessageLite;

    .line 2110
    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v12

    .line 2107
    invoke-static {v7, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2099
    :pswitch_34
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2100
    nop

    .line 2101
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2094
    :pswitch_35
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2095
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2089
    :pswitch_36
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2090
    invoke-static {v7, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2084
    :pswitch_37
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2085
    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2079
    :pswitch_38
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2080
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2074
    :pswitch_39
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2075
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto/16 :goto_4

    .line 2068
    :pswitch_3a
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2069
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/protobuf/ByteString;

    .line 2070
    .local v11, "value":Lcom/google/protobuf/ByteString;
    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2071
    .end local v11    # "value":Lcom/google/protobuf/ByteString;
    goto/16 :goto_4

    .line 2062
    :pswitch_3b
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2063
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2064
    .local v11, "value":Ljava/lang/Object;
    invoke-direct {v0, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/google/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2065
    .end local v11    # "value":Ljava/lang/Object;
    goto/16 :goto_4

    .line 2052
    :pswitch_3c
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2053
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 2054
    .restart local v11    # "value":Ljava/lang/Object;
    instance-of v12, v11, Lcom/google/protobuf/ByteString;

    if-eqz v12, :cond_10

    .line 2055
    move-object v12, v11

    check-cast v12, Lcom/google/protobuf/ByteString;

    invoke-static {v7, v12}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_3

    .line 2057
    :cond_10
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v12

    add-int/2addr v3, v12

    .line 2059
    .end local v11    # "value":Ljava/lang/Object;
    :goto_3
    goto/16 :goto_4

    .line 2047
    :pswitch_3d
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2048
    invoke-static {v7, v12}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 2042
    :pswitch_3e
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2043
    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 2037
    :pswitch_3f
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2038
    invoke-static {v7, v14, v15}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 2032
    :pswitch_40
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2033
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v7, v11}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 2026
    :pswitch_41
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2027
    nop

    .line 2028
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 2021
    :pswitch_42
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2022
    invoke-static {v1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 2016
    :pswitch_43
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2017
    invoke-static {v7, v13}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_4

    .line 2011
    :pswitch_44
    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2012
    const-wide/16 v11, 0x0

    invoke-static {v7, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v11

    add-int/2addr v3, v11

    .line 1997
    .end local v5    # "typeAndOffset":I
    .end local v6    # "fieldType":I
    .end local v7    # "number":I
    .end local v8    # "offset":J
    .end local v10    # "cachedSizeOffset":I
    :cond_11
    :goto_4
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_0

    .line 2521
    .end local v4    # "i":I
    :cond_12
    iget-object v4, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v4, v1}, Lcom/google/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2523
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUnknownFieldsSerializedSize(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 2528
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "schema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2529
    .local v0, "unknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p1, v0}, Lcom/google/protobuf/UnknownFieldSchema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private static intAt(Ljava/lang/Object;J)I
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5758
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static isEnforceUtf8(I)Z
    .locals 1
    .param p0, "value"    # I

    .line 5742
    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFieldPresent(Ljava/lang/Object;I)Z
    .locals 13
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 5804
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2}, Lcom/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5805
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    .line 5806
    .local v2, "presenceFieldOffset":J
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_11

    .line 5807
    invoke-direct {p0, p2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    .line 5808
    .local v1, "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    .line 5809
    .local v6, "offset":J
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v8

    const-wide/16 v9, 0x0

    packed-switch v8, :pswitch_data_0

    .line 5854
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 5852
    :pswitch_0
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 5850
    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    .line 5848
    :pswitch_2
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4

    .line 5846
    :pswitch_3
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_3

    const/4 v4, 0x1

    :cond_3
    return v4

    .line 5844
    :pswitch_4
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    if-eqz v8, :cond_4

    const/4 v4, 0x1

    :cond_4
    return v4

    .line 5842
    :pswitch_5
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    if-eqz v8, :cond_5

    const/4 v4, 0x1

    :cond_5
    return v4

    .line 5840
    :pswitch_6
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    if-eqz v8, :cond_6

    const/4 v4, 0x1

    :cond_6
    return v4

    .line 5838
    :pswitch_7
    sget-object v4, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    return v4

    .line 5836
    :pswitch_8
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    const/4 v4, 0x1

    :cond_7
    return v4

    .line 5827
    :pswitch_9
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 5828
    .local v4, "value":Ljava/lang/Object;
    instance-of v8, v4, Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 5829
    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    xor-int/2addr v5, v8

    return v5

    .line 5830
    :cond_8
    instance-of v8, v4, Lcom/google/protobuf/ByteString;

    if-eqz v8, :cond_9

    .line 5831
    sget-object v8, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {v8, v4}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v5, v8

    return v5

    .line 5833
    :cond_9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 5825
    .end local v4    # "value":Ljava/lang/Object;
    :pswitch_a
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v4

    return v4

    .line 5823
    :pswitch_b
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    if-eqz v8, :cond_a

    const/4 v4, 0x1

    :cond_a
    return v4

    .line 5821
    :pswitch_c
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_b

    const/4 v4, 0x1

    :cond_b
    return v4

    .line 5819
    :pswitch_d
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    if-eqz v8, :cond_c

    const/4 v4, 0x1

    :cond_c
    return v4

    .line 5817
    :pswitch_e
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_d

    const/4 v4, 0x1

    :cond_d
    return v4

    .line 5815
    :pswitch_f
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_e

    const/4 v4, 0x1

    :cond_e
    return v4

    .line 5813
    :pswitch_10
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_f

    const/4 v4, 0x1

    :cond_f
    return v4

    .line 5811
    :pswitch_11
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    if-eqz v12, :cond_10

    const/4 v4, 0x1

    :cond_10
    return v4

    .line 5857
    .end local v1    # "typeAndOffset":I
    .end local v6    # "offset":J
    :cond_11
    ushr-int/lit8 v6, v0, 0x14

    shl-int v6, v5, v6

    .line 5858
    .local v6, "presenceMask":I
    and-int/2addr v1, v0

    int-to-long v7, v1

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    and-int/2addr v1, v6

    if-eqz v1, :cond_12

    const/4 v4, 0x1

    :cond_12
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isFieldPresent(Ljava/lang/Object;IIII)Z
    .locals 1
    .param p2, "pos"    # I
    .param p3, "presenceFieldOffset"    # I
    .param p4, "presenceField"    # I
    .param p5, "presenceMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    .line 5796
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 5797
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 5799
    :cond_0
    and-int v0, p4, p5

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isInitialized(Ljava/lang/Object;ILcom/google/protobuf/Schema;)Z
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "typeAndOffset"    # I
    .param p2, "schema"    # Lcom/google/protobuf/Schema;

    .line 5622
    invoke-static {p1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 5623
    .local v0, "nested":Ljava/lang/Object;
    invoke-interface {p2, v0}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isListInitialized(Ljava/lang/Object;II)Z
    .locals 6
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    .line 5628
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5629
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TN;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5630
    return v2

    .line 5633
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    .line 5634
    .local v1, "schema":Lcom/google/protobuf/Schema;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 5635
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 5636
    .local v4, "nested":Ljava/lang/Object;, "TN;"
    invoke-interface {v1, v4}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5637
    const/4 v2, 0x0

    return v2

    .line 5634
    .end local v4    # "nested":Ljava/lang/Object;, "TN;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5640
    .end local v3    # "i":I
    :cond_2
    return v2
.end method

.method private isMapInitialized(Ljava/lang/Object;II)Z
    .locals 9
    .param p2, "typeAndOffset"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 5644
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 5645
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5646
    return v2

    .line 5648
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    .line 5649
    .local v1, "mapDefaultEntry":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v3, v1}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v3

    .line 5650
    .local v3, "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<**>;"
    iget-object v4, v3, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-eq v4, v5, :cond_1

    .line 5651
    return v2

    .line 5654
    :cond_1
    const/4 v4, 0x0

    .line 5655
    .local v4, "schema":Lcom/google/protobuf/Schema;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 5656
    .local v6, "nested":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 5657
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v4

    .line 5659
    :cond_2
    invoke-interface {v4, v6}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 5660
    const/4 v2, 0x0

    return v2

    .line 5662
    .end local v6    # "nested":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 5663
    :cond_4
    return v2
.end method

.method private isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 5
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 5881
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5882
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    and-int/2addr v1, v0

    int-to-long v3, v1

    .line 5883
    invoke-static {p2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5882
    :goto_0
    return v1
.end method

.method private isOneofPresent(Ljava/lang/Object;II)Z
    .locals 3
    .param p2, "fieldNumber"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 5876
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5877
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isRequired(I)Z
    .locals 1
    .param p0, "value"    # I

    .line 5738
    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static listAt(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 2533
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static longAt(Ljava/lang/Object;J)J
    .locals 2
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5762
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 18
    .param p4, "reader"    # Lcom/google/protobuf/Reader;
    .param p5, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3870
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TET;>;"
    .local p3, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    const/4 v1, 0x0

    .line 3871
    .local v1, "unknownFields":Ljava/lang/Object;, "TUB;"
    const/4 v2, 0x0

    move-object v13, v1

    move-object v14, v2

    .line 3874
    .end local v1    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v13, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v14, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v1

    move v15, v1

    .line 3875
    .local v15, "number":I
    invoke-direct {v8, v15}, Lcom/google/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v7, v1

    .line 3876
    .local v7, "pos":I
    if-gez v7, :cond_b

    .line 3877
    const v1, 0x7fffffff

    if-ne v15, v1, :cond_2

    .line 4334
    iget v1, v8, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .local v1, "i":I
    :goto_1
    iget v2, v8, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v1, v2, :cond_0

    .line 4335
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v1

    .line 4336
    invoke-direct {v8, v10, v2, v13, v9}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4334
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4338
    .end local v1    # "i":I
    :cond_0
    if-eqz v13, :cond_1

    .line 4339
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3878
    :cond_1
    return-void

    .line 3881
    :cond_2
    :try_start_1
    iget-boolean v1, v8, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    move-object/from16 v6, p2

    goto :goto_2

    :cond_3
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 3884
    move-object/from16 v6, p2

    invoke-virtual {v6, v12, v1, v15}, Lcom/google/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    move-object/from16 v16, v1

    .line 3886
    .local v16, "extension":Ljava/lang/Object;
    if-eqz v16, :cond_5

    .line 3887
    if-nez v14, :cond_4

    .line 3888
    :try_start_2
    invoke-virtual/range {p2 .. p3}, Lcom/google/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v1

    .end local v14    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    .local v1, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    goto :goto_3

    .line 4334
    .end local v1    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    .end local v7    # "pos":I
    .end local v15    # "number":I
    .end local v16    # "extension":Ljava/lang/Object;
    .restart local v14    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_f

    .line 3890
    .restart local v7    # "pos":I
    .restart local v15    # "number":I
    .restart local v16    # "extension":Ljava/lang/Object;
    :cond_4
    :goto_3
    nop

    .line 3891
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, v16

    move-object/from16 v4, p5

    move-object v5, v14

    move-object v6, v13

    move-object/from16 v17, v14

    move v14, v7

    .end local v7    # "pos":I
    .local v14, "pos":I
    .local v17, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    move-object/from16 v7, p1

    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/ExtensionSchema;->parseExtension(Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 3898
    move-object/from16 v14, v17

    goto :goto_0

    .line 3900
    .end local v17    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    .restart local v7    # "pos":I
    .local v14, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    :cond_5
    move-object/from16 v17, v14

    move v14, v7

    .end local v7    # "pos":I
    .local v14, "pos":I
    .restart local v17    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    invoke-virtual {v9, v11}, Lcom/google/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/google/protobuf/Reader;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3901
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->skipField()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3902
    move-object/from16 v14, v17

    goto :goto_0

    .line 3905
    :cond_6
    if-nez v13, :cond_7

    .line 3906
    invoke-virtual {v9, v10}, Lcom/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 3909
    :cond_7
    invoke-virtual {v9, v13, v11}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_8

    .line 3910
    move-object/from16 v14, v17

    goto/16 :goto_0

    .line 4334
    :cond_8
    iget v1, v8, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .local v1, "i":I
    :goto_4
    iget v2, v8, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v1, v2, :cond_9

    .line 4335
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v1

    .line 4336
    invoke-direct {v8, v10, v2, v13, v9}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4334
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4338
    .end local v1    # "i":I
    :cond_9
    if-eqz v13, :cond_a

    .line 4339
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3914
    :cond_a
    return-void

    .line 3916
    .end local v16    # "extension":Ljava/lang/Object;
    .end local v17    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    .restart local v7    # "pos":I
    .local v14, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    :cond_b
    move-object/from16 v17, v14

    move v14, v7

    .end local v7    # "pos":I
    .local v14, "pos":I
    .restart local v17    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    :try_start_4
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v7, v1

    .line 3919
    .local v7, "typeAndOffset":I
    :try_start_5
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v1
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    packed-switch v1, :pswitch_data_0

    .line 4308
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .local v1, "typeAndOffset":I
    if-nez v13, :cond_13

    .line 4309
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object v2
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_8

    .line 4300
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_0
    nop

    .line 4302
    :try_start_7
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 4303
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v3

    invoke-interface {v11, v3, v12}, Lcom/google/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 4300
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4304
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4305
    move v1, v7

    goto/16 :goto_a

    .line 4295
    :pswitch_1
    nop

    .line 4296
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4295
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4297
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4298
    move v1, v7

    goto/16 :goto_a

    .line 4290
    :pswitch_2
    nop

    .line 4291
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4290
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4292
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4293
    move v1, v7

    goto/16 :goto_a

    .line 4285
    :pswitch_3
    nop

    .line 4286
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4285
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4287
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4288
    move v1, v7

    goto/16 :goto_a

    .line 4280
    :pswitch_4
    nop

    .line 4281
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4280
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4282
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4283
    move v1, v7

    goto/16 :goto_a

    .line 4267
    :pswitch_5
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readEnum()I

    move-result v1

    .line 4268
    .local v1, "enumValue":I
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    .line 4269
    .local v2, "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    if-eqz v2, :cond_d

    invoke-interface {v2, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_5

    .line 4273
    :cond_c
    nop

    .line 4274
    invoke-static {v15, v1, v13, v9}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    .line 4277
    move v1, v7

    goto/16 :goto_a

    .line 4270
    :cond_d
    :goto_5
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4271
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move v1, v7

    goto/16 :goto_a

    .line 4261
    .end local v1    # "enumValue":I
    .end local v2    # "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    :pswitch_6
    nop

    .line 4262
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4261
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4263
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4264
    move v1, v7

    goto/16 :goto_a

    .line 4257
    :pswitch_7
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4258
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4259
    move v1, v7

    goto/16 :goto_a

    .line 4239
    :pswitch_8
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4240
    nop

    .line 4242
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 4244
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 4243
    invoke-interface {v11, v2, v12}, Lcom/google/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 4241
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4245
    .local v1, "mergedResult":Ljava/lang/Object;
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4246
    .end local v1    # "mergedResult":Ljava/lang/Object;
    goto :goto_6

    .line 4247
    :cond_e
    nop

    .line 4249
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 4251
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v3

    .line 4250
    invoke-interface {v11, v3, v12}, Lcom/google/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 4247
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4252
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4254
    :goto_6
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4255
    move v1, v7

    goto/16 :goto_a

    .line 4235
    :pswitch_9
    invoke-direct {v8, v10, v7, v11}, Lcom/google/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    .line 4236
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4237
    move v1, v7

    goto/16 :goto_a

    .line 4230
    :pswitch_a
    nop

    .line 4231
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 4230
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4232
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4233
    move v1, v7

    goto/16 :goto_a

    .line 4225
    :pswitch_b
    nop

    .line 4226
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4225
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4227
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4228
    move v1, v7

    goto/16 :goto_a

    .line 4220
    :pswitch_c
    nop

    .line 4221
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4220
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4222
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4223
    move v1, v7

    goto/16 :goto_a

    .line 4215
    :pswitch_d
    nop

    .line 4216
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4215
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4217
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4218
    move v1, v7

    goto/16 :goto_a

    .line 4210
    :pswitch_e
    nop

    .line 4211
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4210
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4212
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4213
    move v1, v7

    goto/16 :goto_a

    .line 4205
    :pswitch_f
    nop

    .line 4206
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4205
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4207
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4208
    move v1, v7

    goto/16 :goto_a

    .line 4200
    :pswitch_10
    nop

    .line 4201
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 4200
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4202
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4203
    move v1, v7

    goto/16 :goto_a

    .line 4195
    :pswitch_11
    nop

    .line 4196
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 4195
    invoke-static {v10, v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4197
    invoke-direct {v8, v10, v15, v14}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4198
    move v1, v7

    goto/16 :goto_a

    .line 4192
    :pswitch_12
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v14

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V
    :try_end_7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4193
    move v1, v7

    goto/16 :goto_a

    .line 4316
    :catch_0
    move-exception v0

    move-object v2, v0

    move v1, v7

    goto/16 :goto_b

    .line 4183
    :pswitch_13
    nop

    .line 4185
    :try_start_8
    invoke-static {v7}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    .line 4187
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v6
    :try_end_8
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4183
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .local v16, "typeAndOffset":I
    move-object/from16 v7, p5

    :try_start_9
    invoke-direct/range {v1 .. v7}, Lcom/google/protobuf/MessageSchema;->readGroupList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4189
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4316
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :catch_1
    move-exception v0

    move-object v2, v0

    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    goto/16 :goto_b

    .line 4178
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_14
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4179
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4178
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 4180
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4174
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_15
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4175
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4174
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 4176
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4170
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_16
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4171
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4170
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 4172
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4166
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_17
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4167
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4166
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    .line 4168
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4153
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_18
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4154
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4155
    .local v1, "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 4156
    nop

    .line 4160
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    .line 4157
    invoke-static {v15, v1, v2, v13, v9}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    .line 4163
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4148
    .end local v1    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_19
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4149
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4148
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 4150
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4144
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_1a
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4145
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4144
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 4146
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4140
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_1b
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4141
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4140
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 4142
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4136
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_1c
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4137
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4136
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 4138
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4132
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_1d
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4133
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4132
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 4134
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4128
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_1e
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4129
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4128
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 4130
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4124
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_1f
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4125
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4124
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 4126
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4120
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_20
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4121
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4120
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 4122
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4116
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_21
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4117
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4116
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 4118
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4112
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_22
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4113
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4112
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 4114
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4108
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_23
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4109
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4108
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 4110
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4104
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_24
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4105
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4104
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 4106
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4100
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_25
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4101
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4100
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    .line 4102
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4087
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_26
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4088
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4089
    .restart local v1    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 4090
    nop

    .line 4094
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    .line 4091
    invoke-static {v15, v1, v2, v13, v9}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    .line 4097
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4082
    .end local v1    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_27
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4083
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4082
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 4084
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4078
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_28
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4079
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 4078
    invoke-interface {v11, v1}, Lcom/google/protobuf/Reader;->readBytesList(Ljava/util/List;)V

    .line 4080
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4069
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_29
    move/from16 v16, v7

    .line 4073
    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v5

    .line 4069
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, v16

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->readMessageList(Ljava/lang/Object;ILcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4075
    move/from16 v1, v16

    goto/16 :goto_a

    .line 4316
    :catch_2
    move-exception v0

    move-object v2, v0

    move/from16 v1, v16

    goto/16 :goto_b

    .line 4065
    .end local v16    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2a
    move/from16 v16, v7

    .end local v7    # "typeAndOffset":I
    .restart local v16    # "typeAndOffset":I
    move/from16 v1, v16

    .end local v16    # "typeAndOffset":I
    .local v1, "typeAndOffset":I
    :try_start_a
    invoke-direct {v8, v10, v1, v11}, Lcom/google/protobuf/MessageSchema;->readStringList(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    .line 4066
    goto/16 :goto_a

    .line 4061
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2b
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4062
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4061
    invoke-interface {v11, v2}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 4063
    goto/16 :goto_a

    .line 4057
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2c
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4058
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4057
    invoke-interface {v11, v2}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 4059
    goto/16 :goto_a

    .line 4053
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2d
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4054
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4053
    invoke-interface {v11, v2}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 4055
    goto/16 :goto_a

    .line 4049
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2e
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4050
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4049
    invoke-interface {v11, v2}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 4051
    goto/16 :goto_a

    .line 4045
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_2f
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4046
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4045
    invoke-interface {v11, v2}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 4047
    goto/16 :goto_a

    .line 4041
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_30
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4042
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4041
    invoke-interface {v11, v2}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 4043
    goto/16 :goto_a

    .line 4037
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_31
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4038
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4037
    invoke-interface {v11, v2}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 4039
    goto/16 :goto_a

    .line 4033
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_32
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    iget-object v2, v8, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 4034
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v10, v3, v4}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4033
    invoke-interface {v11, v2}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 4035
    goto/16 :goto_a

    .line 4015
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_33
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4016
    nop

    .line 4018
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4020
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v3

    .line 4019
    invoke-interface {v11, v3, v12}, Lcom/google/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 4017
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4021
    .local v2, "mergedResult":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v10, v3, v4, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4022
    .end local v2    # "mergedResult":Ljava/lang/Object;
    goto/16 :goto_a

    .line 4023
    :cond_f
    nop

    .line 4025
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    .line 4027
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    .line 4026
    invoke-interface {v11, v4, v12}, Lcom/google/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 4023
    invoke-static {v10, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4028
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4030
    goto/16 :goto_a

    .line 4010
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_34
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 4011
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4012
    goto/16 :goto_a

    .line 4006
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_35
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 4007
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4008
    goto/16 :goto_a

    .line 4002
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_36
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 4003
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4004
    goto/16 :goto_a

    .line 3998
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_37
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3999
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4000
    goto/16 :goto_a

    .line 3985
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_38
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readEnum()I

    move-result v2

    .line 3986
    .local v2, "enumValue":I
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 3987
    .local v3, "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    if-eqz v3, :cond_11

    invoke-interface {v3, v2}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_7

    .line 3991
    :cond_10
    nop

    .line 3992
    invoke-static {v15, v2, v13, v9}, Lcom/google/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    .line 3995
    goto/16 :goto_a

    .line 3988
    :cond_11
    :goto_7
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3989
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_a

    .line 3980
    .end local v1    # "typeAndOffset":I
    .end local v2    # "enumValue":I
    .end local v3    # "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    .restart local v7    # "typeAndOffset":I
    :pswitch_39
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3981
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3982
    goto/16 :goto_a

    .line 3976
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3a
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3977
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3978
    goto/16 :goto_a

    .line 3958
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3b
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3959
    nop

    .line 3961
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 3963
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v3

    .line 3962
    invoke-interface {v11, v3, v12}, Lcom/google/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 3960
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3964
    .local v2, "mergedResult":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-static {v10, v3, v4, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3965
    .end local v2    # "mergedResult":Ljava/lang/Object;
    goto/16 :goto_a

    .line 3966
    :cond_12
    nop

    .line 3968
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    .line 3970
    invoke-direct {v8, v14}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    .line 3969
    invoke-interface {v11, v4, v12}, Lcom/google/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 3966
    invoke-static {v10, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3971
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3973
    goto/16 :goto_a

    .line 3953
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3c
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-direct {v8, v10, v1, v11}, Lcom/google/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    .line 3954
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3955
    goto/16 :goto_a

    .line 3949
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3d
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 3950
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3951
    goto/16 :goto_a

    .line 3945
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3e
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3946
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3947
    goto/16 :goto_a

    .line 3941
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_3f
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3942
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3943
    goto/16 :goto_a

    .line 3937
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_40
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3938
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3939
    goto :goto_a

    .line 3933
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_41
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3934
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3935
    goto :goto_a

    .line 3929
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_42
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3930
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3931
    goto :goto_a

    .line 3925
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_43
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v4

    invoke-static {v10, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 3926
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3927
    goto :goto_a

    .line 3921
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :pswitch_44
    move v1, v7

    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v4

    invoke-static {v10, v2, v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 3922
    invoke-direct {v8, v10, v14}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3923
    goto :goto_a

    .line 4316
    :catch_3
    move-exception v0

    move-object v2, v0

    goto :goto_b

    .line 4309
    :goto_8
    move-object v13, v2

    .line 4311
    :cond_13
    invoke-virtual {v9, v13, v11}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    move-result v2
    :try_end_a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v2, :cond_16

    .line 4334
    iget v2, v8, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .local v2, "i":I
    :goto_9
    iget v3, v8, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v2, v3, :cond_14

    .line 4335
    iget-object v3, v8, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    .line 4336
    invoke-direct {v8, v10, v3, v13, v9}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4334
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4338
    .end local v2    # "i":I
    :cond_14
    if-eqz v13, :cond_15

    .line 4339
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4312
    :cond_15
    return-void

    .line 4331
    :cond_16
    :goto_a
    goto :goto_e

    .line 4316
    .end local v1    # "typeAndOffset":I
    .restart local v7    # "typeAndOffset":I
    :catch_4
    move-exception v0

    move v1, v7

    move-object v2, v0

    .line 4319
    .end local v7    # "typeAndOffset":I
    .restart local v1    # "typeAndOffset":I
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :goto_b
    :try_start_b
    invoke-virtual {v9, v11}, Lcom/google/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/google/protobuf/Reader;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 4320
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->skipField()Z

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-nez v3, :cond_1d

    .line 4334
    iget v3, v8, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .local v3, "i":I
    :goto_c
    iget v4, v8, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v3, v4, :cond_17

    .line 4335
    iget-object v4, v8, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v4, v4, v3

    .line 4336
    invoke-direct {v8, v10, v4, v13, v9}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4334
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 4338
    .end local v3    # "i":I
    :cond_17
    if-eqz v13, :cond_18

    .line 4339
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4321
    :cond_18
    return-void

    .line 4324
    :cond_19
    if-nez v13, :cond_1a

    .line 4325
    :try_start_c
    invoke-virtual {v9, v10}, Lcom/google/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    .line 4327
    :cond_1a
    invoke-virtual {v9, v13, v11}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-nez v3, :cond_1d

    .line 4334
    iget v3, v8, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .restart local v3    # "i":I
    :goto_d
    iget v4, v8, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v3, v4, :cond_1b

    .line 4335
    iget-object v4, v8, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v4, v4, v3

    .line 4336
    invoke-direct {v8, v10, v4, v13, v9}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4334
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 4338
    .end local v3    # "i":I
    :cond_1b
    if-eqz v13, :cond_1c

    .line 4339
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4328
    :cond_1c
    return-void

    .line 4332
    .end local v1    # "typeAndOffset":I
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .end local v14    # "pos":I
    .end local v15    # "number":I
    :cond_1d
    :goto_e
    move-object/from16 v14, v17

    goto/16 :goto_0

    .line 4334
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v14, v17

    goto :goto_f

    .end local v17    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    .local v14, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v17, v14

    move-object v1, v0

    :goto_f
    iget v2, v8, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .local v2, "i":I
    :goto_10
    iget v3, v8, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v2, v3, :cond_1e

    .line 4335
    iget-object v3, v8, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    .line 4336
    invoke-direct {v8, v10, v3, v13, v9}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    .line 4334
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 4338
    .end local v2    # "i":I
    :cond_1e
    if-eqz v13, :cond_1f

    .line 4339
    invoke-virtual {v9, v10, v13}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4341
    :cond_1f
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "pos"    # I
    .param p3, "mapDefaultEntry"    # Ljava/lang/Object;
    .param p4, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p5, "reader"    # Lcom/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5477
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    invoke-direct {p0, p2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5478
    .local v0, "offset":J
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5483
    .local v2, "mapField":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 5484
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v3, p3}, Lcom/google/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5485
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 5486
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v3, v2}, Lcom/google/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5487
    move-object v3, v2

    .line 5488
    .local v3, "oldMapField":Ljava/lang/Object;
    iget-object v4, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v4, p3}, Lcom/google/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5489
    iget-object v4, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v4, v2, v3}, Lcom/google/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5490
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5492
    .end local v3    # "oldMapField":Ljava/lang/Object;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 5493
    invoke-interface {v3, v2}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 5494
    invoke-interface {v4, p3}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    .line 5492
    invoke-interface {p5, v3, v4, p4}, Lcom/google/protobuf/Reader;->readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5496
    return-void
.end method

.method private mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1378
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1379
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 1381
    .local v1, "offset":J
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1382
    return-void

    .line 1385
    :cond_0
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 1386
    .local v3, "mine":Ljava/lang/Object;
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1387
    .local v4, "theirs":Ljava/lang/Object;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 1388
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1389
    .local v5, "merged":Ljava/lang/Object;
    invoke-static {p1, v1, v2, v5}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1390
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .end local v5    # "merged":Ljava/lang/Object;
    goto :goto_0

    .line 1391
    :cond_1
    if-eqz v4, :cond_2

    .line 1392
    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1393
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1391
    :cond_2
    :goto_0
    nop

    .line 1395
    :goto_1
    return-void
.end method

.method private mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 7
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1398
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1399
    .local v0, "typeAndOffset":I
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v1

    .line 1400
    .local v1, "number":I
    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    .line 1402
    .local v2, "offset":J
    invoke-direct {p0, p2, v1, p3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1403
    return-void

    .line 1405
    :cond_0
    const/4 v4, 0x0

    .line 1406
    .local v4, "mine":Ljava/lang/Object;
    invoke-direct {p0, p1, v1, p3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1407
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1409
    :cond_1
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 1410
    .local v5, "theirs":Ljava/lang/Object;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 1411
    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1412
    .local v6, "merged":Ljava/lang/Object;
    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1413
    invoke-direct {p0, p1, v1, p3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .end local v6    # "merged":Ljava/lang/Object;
    goto :goto_0

    .line 1414
    :cond_2
    if-eqz v5, :cond_3

    .line 1415
    invoke-static {p1, v2, v3, v5}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1416
    invoke-direct {p0, p1, v1, p3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_1

    .line 1414
    :cond_3
    :goto_0
    nop

    .line 1418
    :goto_1
    return-void
.end method

.method private mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1195
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1196
    .local v0, "typeAndOffset":I
    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 1197
    .local v1, "offset":J
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 1199
    .local v3, "number":I
    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 1370
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1371
    goto/16 :goto_0

    .line 1364
    :pswitch_1
    invoke-direct {p0, p2, v3, p3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1365
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1366
    invoke-direct {p0, p1, v3, p3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 1355
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1356
    goto/16 :goto_0

    .line 1348
    :pswitch_3
    invoke-direct {p0, p2, v3, p3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1349
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1350
    invoke-direct {p0, p1, v3, p3}, Lcom/google/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 1337
    :pswitch_4
    iget-object v4, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-static {v4, p1, p2, v1, v2}, Lcom/google/protobuf/SchemaUtil;->mergeMap(Lcom/google/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 1338
    goto/16 :goto_0

    .line 1334
    :pswitch_5
    iget-object v4, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    invoke-virtual {v4, p1, p2, v1, v2}, Lcom/google/protobuf/ListFieldSchema;->mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 1335
    goto/16 :goto_0

    .line 1300
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1301
    goto/16 :goto_0

    .line 1294
    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1295
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1296
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1288
    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1289
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1290
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1282
    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1283
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1284
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1276
    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1277
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1278
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1270
    :pswitch_b
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1271
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1272
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1264
    :pswitch_c
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1265
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1266
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1258
    :pswitch_d
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1259
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1260
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1255
    :pswitch_e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1256
    goto/16 :goto_0

    .line 1249
    :pswitch_f
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1250
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1251
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1243
    :pswitch_10
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1244
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1245
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1237
    :pswitch_11
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1238
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1239
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1231
    :pswitch_12
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1232
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1233
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1225
    :pswitch_13
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1226
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1227
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1219
    :pswitch_14
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1220
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1221
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1213
    :pswitch_15
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1214
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1215
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1207
    :pswitch_16
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1208
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 1209
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1201
    :pswitch_17
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1202
    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v1, v2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 1203
    invoke-direct {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 1375
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static newSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;
    .locals 7
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .param p2, "newInstanceSchema"    # Lcom/google/protobuf/NewInstanceSchema;
    .param p3, "listFieldSchema"    # Lcom/google/protobuf/ListFieldSchema;
    .param p6, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            "Lcom/google/protobuf/NewInstanceSchema;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 226
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<**>;"
    .local p5, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<*>;"
    instance-of v0, p1, Lcom/google/protobuf/RawMessageInfo;

    if-eqz v0, :cond_0

    .line 227
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/RawMessageInfo;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->newSchemaForRawMessageInfo(Lcom/google/protobuf/RawMessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/StructuralMessageInfo;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->newSchemaForMessageInfo(Lcom/google/protobuf/StructuralMessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;

    move-result-object v0

    return-object v0
.end method

.method static newSchemaForMessageInfo(Lcom/google/protobuf/StructuralMessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;
    .locals 32
    .param p0, "messageInfo"    # Lcom/google/protobuf/StructuralMessageInfo;
    .param p1, "newInstanceSchema"    # Lcom/google/protobuf/NewInstanceSchema;
    .param p2, "listFieldSchema"    # Lcom/google/protobuf/ListFieldSchema;
    .param p5, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/StructuralMessageInfo;",
            "Lcom/google/protobuf/NewInstanceSchema;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 625
    .local p3, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<**>;"
    .local p4, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<*>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 626
    .local v10, "isProto3":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getFields()[Lcom/google/protobuf/FieldInfo;

    move-result-object v0

    .line 629
    .local v0, "fis":[Lcom/google/protobuf/FieldInfo;
    array-length v1, v0

    if-nez v1, :cond_1

    .line 630
    const/4 v1, 0x0

    .line 631
    .local v1, "minFieldNumber":I
    const/4 v3, 0x0

    .local v3, "maxFieldNumber":I
    goto :goto_1

    .line 633
    .end local v1    # "minFieldNumber":I
    .end local v3    # "maxFieldNumber":I
    :cond_1
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v1

    .line 634
    .restart local v1    # "minFieldNumber":I
    array-length v4, v0

    sub-int/2addr v4, v3

    aget-object v3, v0, v4

    invoke-virtual {v3}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v3

    .line 637
    .restart local v3    # "maxFieldNumber":I
    :goto_1
    array-length v15, v0

    .line 639
    .local v15, "numEntries":I
    mul-int/lit8 v4, v15, 0x3

    new-array v14, v4, [I

    .line 640
    .local v14, "buffer":[I
    mul-int/lit8 v4, v15, 0x2

    new-array v13, v4, [Ljava/lang/Object;

    .line 642
    .local v13, "objects":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 643
    .local v4, "mapFieldCount":I
    const/4 v5, 0x0

    .line 644
    .local v5, "repeatedFieldCount":I
    array-length v6, v0

    const/4 v7, 0x0

    :goto_2
    const/16 v8, 0x31

    const/16 v9, 0x12

    if-ge v7, v6, :cond_4

    aget-object v11, v0, v7

    .line 645
    .local v11, "fi":Lcom/google/protobuf/FieldInfo;
    invoke-virtual {v11}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v12

    sget-object v2, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    if-ne v12, v2, :cond_2

    .line 646
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 647
    :cond_2
    invoke-virtual {v11}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/FieldType;->id()I

    move-result v2

    if-lt v2, v9, :cond_3

    invoke-virtual {v11}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/FieldType;->id()I

    move-result v2

    if-gt v2, v8, :cond_3

    .line 650
    add-int/lit8 v5, v5, 0x1

    .line 644
    .end local v11    # "fi":Lcom/google/protobuf/FieldInfo;
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto :goto_2

    .line 653
    :cond_4
    const/4 v2, 0x0

    if-lez v4, :cond_5

    new-array v6, v4, [I

    goto :goto_4

    :cond_5
    move-object v6, v2

    .line 654
    .local v6, "mapFieldPositions":[I
    :goto_4
    if-lez v5, :cond_6

    new-array v2, v5, [I

    .line 655
    .local v2, "repeatedFieldOffsets":[I
    :cond_6
    const/4 v4, 0x0

    .line 656
    const/4 v5, 0x0

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getCheckInitialized()[I

    move-result-object v7

    .line 659
    .local v7, "checkInitialized":[I
    if-nez v7, :cond_7

    .line 660
    sget-object v7, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v12, v7

    goto :goto_5

    .line 659
    :cond_7
    move-object v12, v7

    .line 662
    .end local v7    # "checkInitialized":[I
    .local v12, "checkInitialized":[I
    :goto_5
    const/4 v7, 0x0

    .line 664
    .local v7, "checkInitializedIndex":I
    const/4 v11, 0x0

    .line 665
    .local v11, "fieldIndex":I
    const/16 v17, 0x0

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v4, v17

    move/from16 v31, v11

    move v11, v7

    move/from16 v7, v31

    .end local v5    # "repeatedFieldCount":I
    .local v4, "bufferIndex":I
    .local v7, "fieldIndex":I
    .local v11, "checkInitializedIndex":I
    .local v20, "mapFieldCount":I
    .local v21, "repeatedFieldCount":I
    :goto_6
    array-length v5, v0

    if-ge v7, v5, :cond_b

    .line 666
    aget-object v5, v0, v7

    .line 667
    .local v5, "fi":Lcom/google/protobuf/FieldInfo;
    invoke-virtual {v5}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v8

    .line 671
    .local v8, "fieldNumber":I
    invoke-static {v5, v14, v4, v13}, Lcom/google/protobuf/MessageSchema;->storeFieldData(Lcom/google/protobuf/FieldInfo;[II[Ljava/lang/Object;)V

    .line 674
    array-length v9, v12

    if-ge v11, v9, :cond_8

    aget v9, v12, v11

    if-ne v9, v8, :cond_8

    .line 676
    add-int/lit8 v9, v11, 0x1

    .end local v11    # "checkInitializedIndex":I
    .local v9, "checkInitializedIndex":I
    aput v4, v12, v11

    move v11, v9

    .line 679
    .end local v9    # "checkInitializedIndex":I
    .restart local v11    # "checkInitializedIndex":I
    :cond_8
    invoke-virtual {v5}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v9

    move-object/from16 v22, v0

    .end local v0    # "fis":[Lcom/google/protobuf/FieldInfo;
    .local v22, "fis":[Lcom/google/protobuf/FieldInfo;
    sget-object v0, Lcom/google/protobuf/FieldType;->MAP:Lcom/google/protobuf/FieldType;

    if-ne v9, v0, :cond_9

    .line 680
    add-int/lit8 v0, v20, 0x1

    .end local v20    # "mapFieldCount":I
    .local v0, "mapFieldCount":I
    aput v4, v6, v20

    move/from16 v20, v0

    move/from16 v23, v10

    goto :goto_7

    .line 681
    .end local v0    # "mapFieldCount":I
    .restart local v20    # "mapFieldCount":I
    :cond_9
    invoke-virtual {v5}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->id()I

    move-result v0

    const/16 v9, 0x12

    if-lt v0, v9, :cond_a

    invoke-virtual {v5}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->id()I

    move-result v0

    const/16 v9, 0x31

    if-gt v0, v9, :cond_a

    .line 684
    add-int/lit8 v0, v21, 0x1

    .line 685
    .end local v21    # "repeatedFieldCount":I
    .local v0, "repeatedFieldCount":I
    invoke-virtual {v5}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v17

    move/from16 v23, v10

    .end local v10    # "isProto3":Z
    .local v23, "isProto3":Z
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v10, v9

    aput v10, v2, v21

    move/from16 v21, v0

    goto :goto_7

    .line 681
    .end local v0    # "repeatedFieldCount":I
    .end local v23    # "isProto3":Z
    .restart local v10    # "isProto3":Z
    .restart local v21    # "repeatedFieldCount":I
    :cond_a
    move/from16 v23, v10

    .line 688
    .end local v10    # "isProto3":Z
    .restart local v23    # "isProto3":Z
    :goto_7
    nop

    .end local v5    # "fi":Lcom/google/protobuf/FieldInfo;
    .end local v8    # "fieldNumber":I
    add-int/lit8 v7, v7, 0x1

    .line 665
    add-int/lit8 v4, v4, 0x3

    move-object/from16 v0, v22

    move/from16 v10, v23

    const/16 v8, 0x31

    const/16 v9, 0x12

    goto :goto_6

    .end local v22    # "fis":[Lcom/google/protobuf/FieldInfo;
    .end local v23    # "isProto3":Z
    .local v0, "fis":[Lcom/google/protobuf/FieldInfo;
    .restart local v10    # "isProto3":Z
    :cond_b
    move-object/from16 v22, v0

    move/from16 v23, v10

    .line 691
    .end local v0    # "fis":[Lcom/google/protobuf/FieldInfo;
    .end local v4    # "bufferIndex":I
    .end local v10    # "isProto3":Z
    .restart local v22    # "fis":[Lcom/google/protobuf/FieldInfo;
    .restart local v23    # "isProto3":Z
    if-nez v6, :cond_c

    .line 692
    sget-object v6, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move-object v0, v6

    goto :goto_8

    .line 691
    :cond_c
    move-object v0, v6

    .line 694
    .end local v6    # "mapFieldPositions":[I
    .local v0, "mapFieldPositions":[I
    :goto_8
    if-nez v2, :cond_d

    .line 695
    sget-object v2, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 697
    :cond_d
    array-length v4, v12

    array-length v5, v0

    add-int/2addr v4, v5

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v10, v4, [I

    .line 699
    .local v10, "combined":[I
    array-length v4, v12

    const/4 v5, 0x0

    invoke-static {v12, v5, v10, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    array-length v4, v12

    array-length v6, v0

    invoke-static {v0, v5, v10, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    array-length v4, v12

    array-length v6, v0

    add-int/2addr v4, v6

    array-length v6, v2

    invoke-static {v2, v5, v10, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    new-instance v24, Lcom/google/protobuf/MessageSchema;

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/StructuralMessageInfo;->getDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v9

    const/16 v16, 0x1

    array-length v8, v12

    array-length v4, v12

    array-length v5, v0

    add-int v17, v4, v5

    move-object/from16 v4, v24

    move-object v5, v14

    move-object v6, v13

    move/from16 v25, v7

    .end local v7    # "fieldIndex":I
    .local v25, "fieldIndex":I
    move v7, v1

    move/from16 v18, v8

    move v8, v3

    move/from16 v26, v11

    .end local v11    # "checkInitializedIndex":I
    .local v26, "checkInitializedIndex":I
    move/from16 v11, v16

    move-object/from16 v27, v12

    .end local v12    # "checkInitialized":[I
    .local v27, "checkInitialized":[I
    move-object v12, v10

    move-object/from16 v28, v13

    .end local v13    # "objects":[Ljava/lang/Object;
    .local v28, "objects":[Ljava/lang/Object;
    move/from16 v13, v18

    move-object/from16 v29, v14

    .end local v14    # "buffer":[I
    .local v29, "buffer":[I
    move/from16 v14, v17

    move/from16 v30, v15

    .end local v15    # "numEntries":I
    .local v30, "numEntries":I
    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move/from16 v31, v23

    move-object/from16 v23, v10

    move/from16 v10, v31

    .local v10, "isProto3":Z
    .local v23, "combined":[I
    invoke-direct/range {v4 .. v19}, Lcom/google/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)V

    .line 709
    return-object v24
.end method

.method static newSchemaForRawMessageInfo(Lcom/google/protobuf/RawMessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;
    .locals 43
    .param p0, "messageInfo"    # Lcom/google/protobuf/RawMessageInfo;
    .param p1, "newInstanceSchema"    # Lcom/google/protobuf/NewInstanceSchema;
    .param p2, "listFieldSchema"    # Lcom/google/protobuf/ListFieldSchema;
    .param p5, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/RawMessageInfo;",
            "Lcom/google/protobuf/NewInstanceSchema;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/google/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 253
    .local p3, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<**>;"
    .local p4, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<*>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 255
    .local v0, "isProto3":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->getStringInfo()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "info":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    .line 257
    .local v15, "length":I
    const/4 v4, 0x0

    .line 259
    .local v4, "i":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 260
    .local v4, "next":I
    const v6, 0xd800

    if-lt v4, v6, :cond_2

    .line 261
    and-int/lit16 v7, v4, 0x1fff

    .line 262
    .local v7, "result":I
    const/16 v8, 0xd

    .line 263
    .local v8, "shift":I
    :goto_1
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    if-lt v5, v6, :cond_1

    .line 264
    and-int/lit16 v5, v4, 0x1fff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    .line 265
    add-int/lit8 v8, v8, 0xd

    move v5, v9

    goto :goto_1

    .line 267
    :cond_1
    shl-int v5, v4, v8

    or-int v4, v7, v5

    move v5, v9

    .line 269
    .end local v7    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v5    # "i":I
    :cond_2
    move/from16 v20, v4

    .line 271
    .local v20, "unusedFlags":I
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 272
    if-lt v4, v6, :cond_4

    .line 273
    and-int/lit16 v5, v4, 0x1fff

    .line 274
    .local v5, "result":I
    const/16 v8, 0xd

    .line 275
    .restart local v8    # "shift":I
    :goto_2
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    if-lt v7, v6, :cond_3

    .line 276
    and-int/lit16 v7, v4, 0x1fff

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    .line 277
    add-int/lit8 v8, v8, 0xd

    move v7, v9

    goto :goto_2

    .line 279
    :cond_3
    shl-int v7, v4, v8

    or-int v4, v5, v7

    move v7, v9

    .line 281
    .end local v5    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v7    # "i":I
    :cond_4
    move/from16 v21, v4

    .line 293
    .local v21, "fieldCount":I
    if-nez v21, :cond_5

    .line 294
    const/4 v5, 0x0

    .line 295
    .local v5, "oneofCount":I
    const/4 v8, 0x0

    .line 296
    .local v8, "hasBitsCount":I
    const/4 v9, 0x0

    .line 297
    .local v9, "minFieldNumber":I
    const/4 v10, 0x0

    .line 298
    .local v10, "maxFieldNumber":I
    const/4 v11, 0x0

    .line 299
    .local v11, "numEntries":I
    const/4 v12, 0x0

    .line 300
    .local v12, "mapFieldCount":I
    const/4 v13, 0x0

    .line 301
    .local v13, "repeatedFieldCount":I
    const/4 v14, 0x0

    .line 302
    .local v14, "checkInitialized":I
    sget-object v16, Lcom/google/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 303
    .local v16, "intArray":[I
    const/16 v17, 0x0

    move v2, v5

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v29, v16

    move/from16 v16, v17

    .local v17, "objectsPosition":I
    goto/16 :goto_b

    .line 305
    .end local v5    # "oneofCount":I
    .end local v8    # "hasBitsCount":I
    .end local v9    # "minFieldNumber":I
    .end local v10    # "maxFieldNumber":I
    .end local v11    # "numEntries":I
    .end local v12    # "mapFieldCount":I
    .end local v13    # "repeatedFieldCount":I
    .end local v14    # "checkInitialized":I
    .end local v16    # "intArray":[I
    .end local v17    # "objectsPosition":I
    :cond_5
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "i":I
    .local v5, "i":I
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 306
    if-lt v4, v6, :cond_7

    .line 307
    and-int/lit16 v7, v4, 0x1fff

    .line 308
    .local v7, "result":I
    const/16 v8, 0xd

    .line 309
    .local v8, "shift":I
    :goto_3
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    if-lt v5, v6, :cond_6

    .line 310
    and-int/lit16 v5, v4, 0x1fff

    shl-int/2addr v5, v8

    or-int/2addr v7, v5

    .line 311
    add-int/lit8 v8, v8, 0xd

    move v5, v9

    goto :goto_3

    .line 313
    :cond_6
    shl-int v5, v4, v8

    or-int v4, v7, v5

    move v5, v9

    .line 315
    .end local v7    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v5    # "i":I
    :cond_7
    move v7, v4

    .line 317
    .local v7, "oneofCount":I
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 318
    if-lt v4, v6, :cond_9

    .line 319
    and-int/lit16 v5, v4, 0x1fff

    .line 320
    .local v5, "result":I
    const/16 v9, 0xd

    .line 321
    .local v9, "shift":I
    :goto_4
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "i":I
    .local v10, "i":I
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    if-lt v8, v6, :cond_8

    .line 322
    and-int/lit16 v8, v4, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    .line 323
    add-int/lit8 v9, v9, 0xd

    move v8, v10

    goto :goto_4

    .line 325
    :cond_8
    shl-int v8, v4, v9

    or-int v4, v5, v8

    move v8, v10

    .line 327
    .end local v5    # "result":I
    .end local v9    # "shift":I
    .end local v10    # "i":I
    .restart local v8    # "i":I
    :cond_9
    move v5, v4

    .line 329
    .local v5, "hasBitsCount":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 330
    if-lt v4, v6, :cond_b

    .line 331
    and-int/lit16 v8, v4, 0x1fff

    .line 332
    .local v8, "result":I
    const/16 v10, 0xd

    .line 333
    .local v10, "shift":I
    :goto_5
    add-int/lit8 v11, v9, 0x1

    .end local v9    # "i":I
    .local v11, "i":I
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v4, v9

    if-lt v9, v6, :cond_a

    .line 334
    and-int/lit16 v9, v4, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    .line 335
    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_5

    .line 337
    :cond_a
    shl-int v9, v4, v10

    or-int v4, v8, v9

    move v9, v11

    .line 339
    .end local v8    # "result":I
    .end local v10    # "shift":I
    .end local v11    # "i":I
    .restart local v9    # "i":I
    :cond_b
    move v8, v4

    .line 341
    .local v8, "minFieldNumber":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 342
    if-lt v4, v6, :cond_d

    .line 343
    and-int/lit16 v9, v4, 0x1fff

    .line 344
    .local v9, "result":I
    const/16 v11, 0xd

    .line 345
    .local v11, "shift":I
    :goto_6
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "i":I
    .local v12, "i":I
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v4, v10

    if-lt v10, v6, :cond_c

    .line 346
    and-int/lit16 v10, v4, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    .line 347
    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_6

    .line 349
    :cond_c
    shl-int v10, v4, v11

    or-int v4, v9, v10

    move v10, v12

    .line 351
    .end local v9    # "result":I
    .end local v11    # "shift":I
    .end local v12    # "i":I
    .restart local v10    # "i":I
    :cond_d
    move v9, v4

    .line 353
    .local v9, "maxFieldNumber":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 354
    if-lt v4, v6, :cond_f

    .line 355
    and-int/lit16 v10, v4, 0x1fff

    .line 356
    .local v10, "result":I
    const/16 v12, 0xd

    .line 357
    .local v12, "shift":I
    :goto_7
    add-int/lit8 v13, v11, 0x1

    .end local v11    # "i":I
    .local v13, "i":I
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v4, v11

    if-lt v11, v6, :cond_e

    .line 358
    and-int/lit16 v11, v4, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    .line 359
    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_7

    .line 361
    :cond_e
    shl-int v11, v4, v12

    or-int v4, v10, v11

    move v11, v13

    .line 363
    .end local v10    # "result":I
    .end local v12    # "shift":I
    .end local v13    # "i":I
    .restart local v11    # "i":I
    :cond_f
    move v10, v4

    .line 365
    .local v10, "numEntries":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .local v12, "i":I
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 366
    if-lt v4, v6, :cond_11

    .line 367
    and-int/lit16 v11, v4, 0x1fff

    .line 368
    .local v11, "result":I
    const/16 v13, 0xd

    .line 369
    .local v13, "shift":I
    :goto_8
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "i":I
    .local v14, "i":I
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v4, v12

    if-lt v12, v6, :cond_10

    .line 370
    and-int/lit16 v12, v4, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    .line 371
    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_8

    .line 373
    :cond_10
    shl-int v12, v4, v13

    or-int v4, v11, v12

    move v12, v14

    .line 375
    .end local v11    # "result":I
    .end local v13    # "shift":I
    .end local v14    # "i":I
    .restart local v12    # "i":I
    :cond_11
    move v11, v4

    .line 377
    .local v11, "mapFieldCount":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "i":I
    .local v13, "i":I
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 378
    if-lt v4, v6, :cond_13

    .line 379
    and-int/lit16 v12, v4, 0x1fff

    .line 380
    .local v12, "result":I
    const/16 v14, 0xd

    .line 381
    .local v14, "shift":I
    :goto_9
    add-int/lit8 v16, v13, 0x1

    .end local v13    # "i":I
    .local v16, "i":I
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v4, v13

    if-lt v13, v6, :cond_12

    .line 382
    and-int/lit16 v13, v4, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    .line 383
    add-int/lit8 v14, v14, 0xd

    move/from16 v13, v16

    goto :goto_9

    .line 385
    :cond_12
    shl-int v13, v4, v14

    or-int v4, v12, v13

    move/from16 v13, v16

    .line 387
    .end local v12    # "result":I
    .end local v14    # "shift":I
    .end local v16    # "i":I
    .restart local v13    # "i":I
    :cond_13
    move v12, v4

    .line 389
    .local v12, "repeatedFieldCount":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "i":I
    .local v14, "i":I
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 390
    if-lt v4, v6, :cond_15

    .line 391
    and-int/lit16 v13, v4, 0x1fff

    .line 392
    .local v13, "result":I
    const/16 v16, 0xd

    .line 393
    .local v16, "shift":I
    :goto_a
    add-int/lit8 v17, v14, 0x1

    .end local v14    # "i":I
    .local v17, "i":I
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move v4, v14

    if-lt v14, v6, :cond_14

    .line 394
    and-int/lit16 v14, v4, 0x1fff

    shl-int v14, v14, v16

    or-int/2addr v13, v14

    .line 395
    add-int/lit8 v16, v16, 0xd

    move/from16 v14, v17

    goto :goto_a

    .line 397
    :cond_14
    shl-int v14, v4, v16

    or-int v4, v13, v14

    move/from16 v14, v17

    .line 399
    .end local v13    # "result":I
    .end local v16    # "shift":I
    .end local v17    # "i":I
    .restart local v14    # "i":I
    :cond_15
    move v13, v4

    .line 400
    .local v13, "checkInitialized":I
    add-int v16, v13, v11

    add-int v2, v16, v12

    new-array v2, v2, [I

    .line 402
    .local v2, "intArray":[I
    mul-int/lit8 v16, v7, 0x2

    add-int v16, v16, v5

    move-object/from16 v29, v2

    move/from16 v22, v5

    move v2, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    move v7, v14

    .line 405
    .end local v5    # "hasBitsCount":I
    .end local v8    # "minFieldNumber":I
    .end local v9    # "maxFieldNumber":I
    .end local v10    # "numEntries":I
    .end local v11    # "mapFieldCount":I
    .end local v12    # "repeatedFieldCount":I
    .end local v13    # "checkInitialized":I
    .end local v14    # "i":I
    .local v2, "oneofCount":I
    .local v7, "i":I
    .local v16, "objectsPosition":I
    .local v22, "hasBitsCount":I
    .local v23, "minFieldNumber":I
    .local v24, "maxFieldNumber":I
    .local v25, "numEntries":I
    .local v26, "mapFieldCount":I
    .local v27, "repeatedFieldCount":I
    .local v28, "checkInitialized":I
    .local v29, "intArray":[I
    :goto_b
    sget-object v14, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 406
    .local v14, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->getObjects()[Ljava/lang/Object;

    move-result-object v30

    .line 407
    .local v30, "messageInfoObjects":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 408
    .local v5, "checkInitializedPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 409
    .local v13, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    mul-int/lit8 v8, v25, 0x3

    new-array v12, v8, [I

    .line 410
    .local v12, "buffer":[I
    mul-int/lit8 v8, v25, 0x2

    new-array v11, v8, [Ljava/lang/Object;

    .line 412
    .local v11, "objects":[Ljava/lang/Object;
    move/from16 v8, v28

    .line 413
    .local v8, "mapFieldIndex":I
    add-int v9, v28, v26

    .line 415
    .local v9, "repeatedFieldIndex":I
    const/4 v10, 0x0

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v36, v16

    move v10, v7

    .line 416
    .end local v4    # "next":I
    .end local v5    # "checkInitializedPosition":I
    .end local v7    # "i":I
    .end local v8    # "mapFieldIndex":I
    .end local v9    # "repeatedFieldIndex":I
    .end local v16    # "objectsPosition":I
    .local v10, "i":I
    .local v31, "next":I
    .local v32, "checkInitializedPosition":I
    .local v33, "mapFieldIndex":I
    .local v34, "repeatedFieldIndex":I
    .local v35, "bufferIndex":I
    .local v36, "objectsPosition":I
    :goto_c
    if-ge v10, v15, :cond_34

    .line 421
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "i":I
    .local v4, "i":I
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 422
    .end local v31    # "next":I
    .local v5, "next":I
    if-lt v5, v6, :cond_17

    .line 423
    and-int/lit16 v7, v5, 0x1fff

    .line 424
    .local v7, "result":I
    const/16 v8, 0xd

    .line 425
    .local v8, "shift":I
    :goto_d
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "i":I
    .local v9, "i":I
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v4

    if-lt v4, v6, :cond_16

    .line 426
    and-int/lit16 v4, v5, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v7, v4

    .line 427
    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_d

    .line 429
    :cond_16
    shl-int v4, v5, v8

    or-int v5, v7, v4

    move v4, v9

    .line 431
    .end local v7    # "result":I
    .end local v8    # "shift":I
    .end local v9    # "i":I
    .restart local v4    # "i":I
    :cond_17
    move v7, v5

    .line 433
    .local v7, "fieldNumber":I
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .local v8, "i":I
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 434
    .end local v5    # "next":I
    .local v4, "next":I
    if-lt v4, v6, :cond_19

    .line 435
    and-int/lit16 v5, v4, 0x1fff

    .line 436
    .local v5, "result":I
    const/16 v9, 0xd

    .line 437
    .local v9, "shift":I
    :goto_e
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    if-lt v8, v6, :cond_18

    .line 438
    and-int/lit16 v8, v4, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    .line 439
    add-int/lit8 v9, v9, 0xd

    move v8, v10

    goto :goto_e

    .line 441
    :cond_18
    shl-int v8, v4, v9

    or-int v4, v5, v8

    move v8, v10

    .line 443
    .end local v5    # "result":I
    .end local v9    # "shift":I
    .end local v10    # "i":I
    .restart local v8    # "i":I
    :cond_19
    move v5, v4

    .line 444
    .local v5, "fieldTypeWithExtraBits":I
    and-int/lit16 v9, v5, 0xff

    .line 446
    .local v9, "fieldType":I
    and-int/lit16 v10, v5, 0x400

    if-eqz v10, :cond_1a

    .line 447
    add-int/lit8 v10, v32, 0x1

    .end local v32    # "checkInitializedPosition":I
    .local v10, "checkInitializedPosition":I
    aput v35, v29, v32

    move/from16 v32, v10

    .line 455
    .end local v10    # "checkInitializedPosition":I
    .restart local v32    # "checkInitializedPosition":I
    :cond_1a
    const/16 v10, 0x33

    if-lt v9, v10, :cond_22

    .line 456
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "i":I
    .local v10, "i":I
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 457
    if-lt v4, v6, :cond_1c

    .line 458
    and-int/lit16 v8, v4, 0x1fff

    .line 459
    .local v8, "result":I
    const/16 v31, 0xd

    .line 460
    .local v31, "shift":I
    :goto_f
    add-int/lit8 v37, v10, 0x1

    .end local v10    # "i":I
    .local v37, "i":I
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v4, v10

    if-lt v10, v6, :cond_1b

    .line 461
    and-int/lit16 v10, v4, 0x1fff

    shl-int v10, v10, v31

    or-int/2addr v8, v10

    .line 462
    add-int/lit8 v31, v31, 0xd

    move/from16 v10, v37

    goto :goto_f

    .line 464
    :cond_1b
    shl-int v10, v4, v31

    or-int v4, v8, v10

    move/from16 v10, v37

    .line 466
    .end local v8    # "result":I
    .end local v31    # "shift":I
    .end local v37    # "i":I
    .restart local v10    # "i":I
    :cond_1c
    move v8, v4

    .line 468
    .local v8, "oneofIndex":I
    add-int/lit8 v6, v9, -0x33

    .line 469
    .local v6, "oneofFieldType":I
    const/16 v3, 0x9

    if-eq v6, v3, :cond_1e

    const/16 v3, 0x11

    if-ne v6, v3, :cond_1d

    goto :goto_10

    .line 472
    :cond_1d
    const/16 v3, 0xc

    if-ne v6, v3, :cond_1f

    .line 473
    if-nez v0, :cond_1f

    .line 474
    div-int/lit8 v3, v35, 0x3

    mul-int/lit8 v3, v3, 0x2

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v18, v36, 0x1

    .end local v36    # "objectsPosition":I
    .local v18, "objectsPosition":I
    aget-object v19, v30, v36

    aput-object v19, v11, v3

    move/from16 v36, v18

    goto :goto_11

    .line 471
    .end local v18    # "objectsPosition":I
    .restart local v36    # "objectsPosition":I
    :cond_1e
    :goto_10
    div-int/lit8 v3, v35, 0x3

    mul-int/lit8 v3, v3, 0x2

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v18, v36, 0x1

    .end local v36    # "objectsPosition":I
    .restart local v18    # "objectsPosition":I
    aget-object v19, v30, v36

    aput-object v19, v11, v3

    move/from16 v36, v18

    .line 479
    .end local v18    # "objectsPosition":I
    .restart local v36    # "objectsPosition":I
    :cond_1f
    :goto_11
    mul-int/lit8 v3, v8, 0x2

    .line 480
    .local v3, "index":I
    move/from16 v18, v4

    .end local v4    # "next":I
    .local v18, "next":I
    aget-object v4, v30, v3

    .line 481
    .local v4, "o":Ljava/lang/Object;
    move/from16 v19, v6

    .end local v6    # "oneofFieldType":I
    .local v19, "oneofFieldType":I
    instance-of v6, v4, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_20

    .line 482
    move-object v6, v4

    check-cast v6, Ljava/lang/reflect/Field;

    .local v6, "oneofField":Ljava/lang/reflect/Field;
    goto :goto_12

    .line 484
    .end local v6    # "oneofField":Ljava/lang/reflect/Field;
    :cond_20
    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-static {v13, v6}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 489
    .restart local v6    # "oneofField":Ljava/lang/reflect/Field;
    aput-object v6, v30, v3

    .line 492
    :goto_12
    move/from16 v38, v7

    move/from16 v31, v8

    .end local v7    # "fieldNumber":I
    .end local v8    # "oneofIndex":I
    .local v31, "oneofIndex":I
    .local v38, "fieldNumber":I
    invoke-virtual {v14, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    .line 495
    .local v8, "fieldOffset":I
    add-int/lit8 v3, v3, 0x1

    .line 496
    aget-object v4, v30, v3

    .line 497
    instance-of v7, v4, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_21

    .line 498
    move-object v7, v4

    check-cast v7, Ljava/lang/reflect/Field;

    .local v7, "oneofCaseField":Ljava/lang/reflect/Field;
    goto :goto_13

    .line 500
    .end local v7    # "oneofCaseField":Ljava/lang/reflect/Field;
    :cond_21
    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v13, v7}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 501
    .restart local v7    # "oneofCaseField":Ljava/lang/reflect/Field;
    aput-object v7, v30, v3

    .line 504
    :goto_13
    move/from16 v39, v3

    move-object/from16 v40, v4

    .end local v3    # "index":I
    .end local v4    # "o":Ljava/lang/Object;
    .local v39, "index":I
    .local v40, "o":Ljava/lang/Object;
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v4, v3

    .line 505
    .local v4, "presenceFieldOffset":I
    const/4 v3, 0x0

    .line 506
    .end local v6    # "oneofField":Ljava/lang/reflect/Field;
    .end local v7    # "oneofCaseField":Ljava/lang/reflect/Field;
    .end local v19    # "oneofFieldType":I
    .end local v31    # "oneofIndex":I
    .end local v39    # "index":I
    .end local v40    # "o":Ljava/lang/Object;
    .local v3, "presenceMaskShift":I
    move-object/from16 v39, v1

    move/from16 v40, v2

    move/from16 v31, v18

    const/16 v16, 0x1

    goto/16 :goto_1d

    .line 507
    .end local v3    # "presenceMaskShift":I
    .end local v10    # "i":I
    .end local v18    # "next":I
    .end local v38    # "fieldNumber":I
    .local v4, "next":I
    .local v7, "fieldNumber":I
    .local v8, "i":I
    :cond_22
    move/from16 v38, v7

    .end local v7    # "fieldNumber":I
    .restart local v38    # "fieldNumber":I
    add-int/lit8 v3, v36, 0x1

    .end local v36    # "objectsPosition":I
    .local v3, "objectsPosition":I
    aget-object v6, v30, v36

    check-cast v6, Ljava/lang/String;

    invoke-static {v13, v6}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 508
    .local v6, "field":Ljava/lang/reflect/Field;
    const/16 v7, 0x31

    const/16 v10, 0x9

    if-eq v9, v10, :cond_2b

    const/16 v10, 0x11

    if-ne v9, v10, :cond_23

    goto/16 :goto_16

    .line 510
    :cond_23
    const/16 v10, 0x1b

    if-eq v9, v10, :cond_2a

    if-ne v9, v7, :cond_24

    goto :goto_15

    .line 513
    :cond_24
    const/16 v10, 0xc

    if-eq v9, v10, :cond_28

    const/16 v10, 0x1e

    if-eq v9, v10, :cond_28

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_25

    goto :goto_14

    .line 519
    :cond_25
    const/16 v10, 0x32

    if-ne v9, v10, :cond_27

    .line 520
    add-int/lit8 v10, v33, 0x1

    .end local v33    # "mapFieldIndex":I
    .local v10, "mapFieldIndex":I
    aput v35, v29, v33

    .line 521
    div-int/lit8 v18, v35, 0x3

    mul-int/lit8 v18, v18, 0x2

    add-int/lit8 v19, v3, 0x1

    .end local v3    # "objectsPosition":I
    .local v19, "objectsPosition":I
    aget-object v3, v30, v3

    aput-object v3, v11, v18

    .line 522
    and-int/lit16 v3, v5, 0x800

    if-eqz v3, :cond_26

    .line 523
    div-int/lit8 v3, v35, 0x3

    mul-int/lit8 v3, v3, 0x2

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "objectsPosition":I
    .local v18, "objectsPosition":I
    aget-object v19, v30, v19

    aput-object v19, v11, v3

    move/from16 v33, v10

    move/from16 v3, v18

    const/16 v16, 0x1

    goto :goto_17

    .line 522
    .end local v18    # "objectsPosition":I
    .restart local v19    # "objectsPosition":I
    :cond_26
    move/from16 v33, v10

    move/from16 v3, v19

    const/16 v16, 0x1

    goto :goto_17

    .line 519
    .end local v10    # "mapFieldIndex":I
    .end local v19    # "objectsPosition":I
    .restart local v3    # "objectsPosition":I
    .restart local v33    # "mapFieldIndex":I
    :cond_27
    const/16 v16, 0x1

    goto :goto_17

    .line 516
    :cond_28
    :goto_14
    if-nez v0, :cond_29

    .line 517
    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v18, v3, 0x1

    .end local v3    # "objectsPosition":I
    .restart local v18    # "objectsPosition":I
    aget-object v3, v30, v3

    aput-object v3, v11, v10

    move/from16 v3, v18

    const/16 v16, 0x1

    goto :goto_17

    .line 516
    .end local v18    # "objectsPosition":I
    .restart local v3    # "objectsPosition":I
    :cond_29
    const/16 v16, 0x1

    goto :goto_17

    .line 512
    :cond_2a
    :goto_15
    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v18, v3, 0x1

    .end local v3    # "objectsPosition":I
    .restart local v18    # "objectsPosition":I
    aget-object v3, v30, v3

    aput-object v3, v11, v10

    move/from16 v3, v18

    const/16 v16, 0x1

    goto :goto_17

    .line 509
    .end local v18    # "objectsPosition":I
    .restart local v3    # "objectsPosition":I
    :cond_2b
    :goto_16
    div-int/lit8 v10, v35, 0x3

    mul-int/lit8 v10, v10, 0x2

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    aput-object v18, v11, v10

    .line 527
    :goto_17
    move v10, v8

    .end local v8    # "i":I
    .local v10, "i":I
    invoke-virtual {v14, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    .line 528
    .local v8, "fieldOffset":I
    and-int/lit16 v7, v5, 0x1000

    move/from16 v19, v3

    .end local v3    # "objectsPosition":I
    .restart local v19    # "objectsPosition":I
    const/16 v3, 0x1000

    if-ne v7, v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_18

    :cond_2c
    const/4 v3, 0x0

    .line 529
    .local v3, "hasHasBit":Z
    :goto_18
    if-eqz v3, :cond_30

    const/16 v7, 0x11

    if-gt v9, v7, :cond_30

    .line 530
    add-int/lit8 v7, v10, 0x1

    .local v7, "i":I
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 531
    .end local v10    # "i":I
    const v10, 0xd800

    if-lt v4, v10, :cond_2e

    .line 532
    and-int/lit16 v10, v4, 0x1fff

    .line 533
    .local v10, "result":I
    const/16 v31, 0xd

    .line 534
    .local v31, "shift":I
    :goto_19
    add-int/lit8 v36, v7, 0x1

    .end local v7    # "i":I
    .local v36, "i":I
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    move-object/from16 v39, v1

    const v1, 0xd800

    .end local v1    # "info":Ljava/lang/String;
    .local v39, "info":Ljava/lang/String;
    if-lt v7, v1, :cond_2d

    .line 535
    and-int/lit16 v7, v4, 0x1fff

    shl-int v7, v7, v31

    or-int/2addr v10, v7

    .line 536
    add-int/lit8 v31, v31, 0xd

    move/from16 v7, v36

    move-object/from16 v1, v39

    goto :goto_19

    .line 538
    :cond_2d
    shl-int v7, v4, v31

    or-int v4, v10, v7

    goto :goto_1a

    .line 531
    .end local v10    # "result":I
    .end local v31    # "shift":I
    .end local v36    # "i":I
    .end local v39    # "info":Ljava/lang/String;
    .restart local v1    # "info":Ljava/lang/String;
    .restart local v7    # "i":I
    :cond_2e
    move-object/from16 v39, v1

    const v1, 0xd800

    .end local v1    # "info":Ljava/lang/String;
    .restart local v39    # "info":Ljava/lang/String;
    move/from16 v36, v7

    .line 540
    .end local v7    # "i":I
    .restart local v36    # "i":I
    :goto_1a
    move v7, v4

    .line 543
    .local v7, "hasBitsIndex":I
    mul-int/lit8 v10, v2, 0x2

    div-int/lit8 v31, v7, 0x20

    add-int v10, v10, v31

    .line 544
    .local v10, "index":I
    aget-object v1, v30, v10

    .line 545
    .local v1, "o":Ljava/lang/Object;
    move/from16 v40, v2

    .end local v2    # "oneofCount":I
    .local v40, "oneofCount":I
    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2f

    .line 546
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/Field;

    .local v2, "hasBitsField":Ljava/lang/reflect/Field;
    goto :goto_1b

    .line 548
    .end local v2    # "hasBitsField":Ljava/lang/reflect/Field;
    :cond_2f
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v13, v2}, Lcom/google/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 549
    .restart local v2    # "hasBitsField":Ljava/lang/reflect/Field;
    aput-object v2, v30, v10

    .line 552
    :goto_1b
    move/from16 v31, v3

    move/from16 v41, v4

    .end local v3    # "hasHasBit":Z
    .end local v4    # "next":I
    .local v31, "hasHasBit":Z
    .local v41, "next":I
    invoke-virtual {v14, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v4, v3

    .line 553
    .local v4, "presenceFieldOffset":I
    rem-int/lit8 v7, v7, 0x20

    .line 554
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "hasBitsField":Ljava/lang/reflect/Field;
    .end local v10    # "index":I
    .local v7, "presenceMaskShift":I
    move v3, v7

    move/from16 v10, v36

    goto :goto_1c

    .line 529
    .end local v7    # "presenceMaskShift":I
    .end local v31    # "hasHasBit":Z
    .end local v36    # "i":I
    .end local v39    # "info":Ljava/lang/String;
    .end local v40    # "oneofCount":I
    .end local v41    # "next":I
    .local v1, "info":Ljava/lang/String;
    .local v2, "oneofCount":I
    .restart local v3    # "hasHasBit":Z
    .local v4, "next":I
    .local v10, "i":I
    :cond_30
    move-object/from16 v39, v1

    move/from16 v40, v2

    move/from16 v31, v3

    .line 555
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "oneofCount":I
    .end local v3    # "hasHasBit":Z
    .restart local v31    # "hasHasBit":Z
    .restart local v39    # "info":Ljava/lang/String;
    .restart local v40    # "oneofCount":I
    const v1, 0xfffff

    .line 556
    .local v1, "presenceFieldOffset":I
    const/4 v2, 0x0

    move v3, v2

    move/from16 v41, v4

    move v4, v1

    .line 559
    .end local v1    # "presenceFieldOffset":I
    .local v3, "presenceMaskShift":I
    .local v4, "presenceFieldOffset":I
    .restart local v41    # "next":I
    :goto_1c
    const/16 v1, 0x12

    if-lt v9, v1, :cond_31

    const/16 v1, 0x31

    if-gt v9, v1, :cond_31

    .line 562
    add-int/lit8 v1, v34, 0x1

    .end local v34    # "repeatedFieldIndex":I
    .local v1, "repeatedFieldIndex":I
    aput v8, v29, v34

    move/from16 v34, v1

    move/from16 v36, v19

    move/from16 v31, v41

    goto :goto_1d

    .line 566
    .end local v1    # "repeatedFieldIndex":I
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v31    # "hasHasBit":Z
    .restart local v34    # "repeatedFieldIndex":I
    :cond_31
    move/from16 v36, v19

    move/from16 v31, v41

    .end local v19    # "objectsPosition":I
    .end local v41    # "next":I
    .local v31, "next":I
    .local v36, "objectsPosition":I
    :goto_1d
    add-int/lit8 v1, v35, 0x1

    .end local v35    # "bufferIndex":I
    .local v1, "bufferIndex":I
    aput v38, v12, v35

    .line 567
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bufferIndex":I
    .local v2, "bufferIndex":I
    and-int/lit16 v6, v5, 0x200

    if-eqz v6, :cond_32

    const/high16 v6, 0x20000000

    goto :goto_1e

    :cond_32
    const/4 v6, 0x0

    :goto_1e
    and-int/lit16 v7, v5, 0x100

    if-eqz v7, :cond_33

    const/high16 v7, 0x10000000

    goto :goto_1f

    :cond_33
    const/4 v7, 0x0

    :goto_1f
    or-int/2addr v6, v7

    shl-int/lit8 v7, v9, 0x14

    or-int/2addr v6, v7

    or-int/2addr v6, v8

    aput v6, v12, v1

    .line 572
    add-int/lit8 v35, v2, 0x1

    .end local v2    # "bufferIndex":I
    .restart local v35    # "bufferIndex":I
    shl-int/lit8 v1, v3, 0x14

    or-int/2addr v1, v4

    aput v1, v12, v2

    .line 573
    .end local v3    # "presenceMaskShift":I
    .end local v4    # "presenceFieldOffset":I
    .end local v5    # "fieldTypeWithExtraBits":I
    .end local v8    # "fieldOffset":I
    .end local v9    # "fieldType":I
    .end local v38    # "fieldNumber":I
    move-object/from16 v1, v39

    move/from16 v2, v40

    const v6, 0xd800

    goto/16 :goto_c

    .line 575
    .end local v39    # "info":Ljava/lang/String;
    .end local v40    # "oneofCount":I
    .local v1, "info":Ljava/lang/String;
    .local v2, "oneofCount":I
    :cond_34
    move-object/from16 v39, v1

    move/from16 v40, v2

    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "oneofCount":I
    .restart local v39    # "info":Ljava/lang/String;
    .restart local v40    # "oneofCount":I
    new-instance v1, Lcom/google/protobuf/MessageSchema;

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v9

    const/4 v2, 0x0

    add-int v3, v28, v26

    move-object v4, v1

    move-object v5, v12

    move-object v6, v11

    move/from16 v7, v23

    move/from16 v8, v24

    move/from16 v37, v10

    .end local v10    # "i":I
    .restart local v37    # "i":I
    move v10, v0

    move-object/from16 v38, v11

    .end local v11    # "objects":[Ljava/lang/Object;
    .local v38, "objects":[Ljava/lang/Object;
    move v11, v2

    move-object v2, v12

    .end local v12    # "buffer":[I
    .local v2, "buffer":[I
    move-object/from16 v12, v29

    move-object/from16 v41, v13

    .end local v13    # "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v41, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v13, v28

    move-object/from16 v42, v14

    .end local v14    # "unsafe":Lsun/misc/Unsafe;
    .local v42, "unsafe":Lsun/misc/Unsafe;
    move v14, v3

    move v3, v15

    .end local v15    # "length":I
    .local v3, "length":I
    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/google/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;ZZ[IIILcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)V

    .line 575
    return-object v1
.end method

.method private numberAt(I)I
    .locals 1
    .param p1, "pos"    # I

    .line 5722
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    aget v0, v0, p1

    return v0
.end method

.method private static offset(I)J
    .locals 2
    .param p0, "value"    # I

    .line 5746
    const v0, 0xfffff

    and-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static oneofBooleanAt(Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 5786
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static oneofDoubleAt(Ljava/lang/Object;J)D
    .locals 2
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 5770
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static oneofFloatAt(Ljava/lang/Object;J)F
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 5774
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static oneofIntAt(Ljava/lang/Object;J)I
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5778
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static oneofLongAt(Ljava/lang/Object;J)J
    .locals 2
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5782
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 15
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "bufferPosition"    # I
    .param p6, "fieldOffset"    # J
    .param p8, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4669
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p6

    sget-object v11, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4670
    .local v11, "unsafe":Lsun/misc/Unsafe;
    move/from16 v12, p5

    invoke-direct {p0, v12}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v13

    .line 4671
    .local v13, "mapDefaultEntry":Ljava/lang/Object;
    invoke-virtual {v11, v8, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 4672
    .local v0, "mapField":Ljava/lang/Object;
    iget-object v1, v7, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v1, v0}, Lcom/google/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4673
    move-object v1, v0

    .line 4674
    .local v1, "oldMapField":Ljava/lang/Object;
    iget-object v2, v7, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v2, v13}, Lcom/google/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4675
    iget-object v2, v7, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v2, v0, v1}, Lcom/google/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4676
    invoke-virtual {v11, v8, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v14, v0

    goto :goto_0

    .line 4672
    .end local v1    # "oldMapField":Ljava/lang/Object;
    :cond_0
    move-object v14, v0

    .line 4678
    .end local v0    # "mapField":Ljava/lang/Object;
    .local v14, "mapField":Ljava/lang/Object;
    :goto_0
    iget-object v0, v7, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 4682
    invoke-interface {v0, v13}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    iget-object v0, v7, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 4683
    invoke-interface {v0, v14}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 4678
    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/MessageSchema;->decodeMapEntry([BIILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    return v0
.end method

.method private parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 22
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "tag"    # I
    .param p6, "number"    # I
    .param p7, "wireType"    # I
    .param p8, "typeAndOffset"    # I
    .param p9, "fieldType"    # I
    .param p10, "fieldOffset"    # J
    .param p12, "bufferPosition"    # I
    .param p13, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4701
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p10

    move/from16 v15, p12

    move-object/from16 v7, p13

    sget-object v6, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4702
    .local v6, "unsafe":Lsun/misc/Unsafe;
    iget-object v2, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v3, v15, 0x2

    aget v2, v2, v3

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v4, v2

    .line 4703
    .local v4, "oneofCaseOffset":J
    const/16 v16, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    packed-switch p9, :pswitch_data_0

    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    goto/16 :goto_9

    .line 4829
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_0
    const/4 v2, 0x3

    if-ne v12, v2, :cond_2

    .line 4830
    and-int/lit8 v2, v10, -0x8

    or-int/lit8 v17, v2, 0x4

    .line 4831
    .local v17, "endTag":I
    nop

    .line 4833
    invoke-direct {v0, v15}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 4832
    move-object/from16 v3, p2

    move-wide v8, v4

    .end local v4    # "oneofCaseOffset":J
    .local v8, "oneofCaseOffset":J
    move/from16 v4, p3

    move/from16 v5, p4

    move-object v10, v6

    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .local v10, "unsafe":Lsun/misc/Unsafe;
    move/from16 v6, v17

    move-object v0, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeGroupField(Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4834
    .end local p3    # "position":I
    .local v2, "position":I
    nop

    .line 4835
    invoke-virtual {v10, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v11, :cond_0

    .line 4836
    invoke-virtual {v10, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move-object/from16 v3, v16

    .line 4838
    .local v3, "oldValue":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 4839
    iget-object v4, v0, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 4841
    :cond_1
    iget-object v4, v0, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4842
    invoke-static {v3, v4}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4841
    invoke-virtual {v10, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4844
    :goto_1
    invoke-virtual {v10, v1, v8, v9, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4845
    .end local v3    # "oldValue":Ljava/lang/Object;
    .end local v17    # "endTag":I
    move-wide v6, v8

    move-object v4, v10

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object v8, v0

    move v0, v2

    goto/16 :goto_a

    .line 4829
    .end local v2    # "position":I
    .end local v8    # "oneofCaseOffset":J
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "oneofCaseOffset":J
    .restart local v6    # "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :cond_2
    move-wide v8, v4

    move-object v10, v6

    move-object v0, v7

    .end local v4    # "oneofCaseOffset":J
    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .restart local v8    # "oneofCaseOffset":J
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    move/from16 v5, p3

    move-wide v6, v8

    move-object v4, v10

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object v8, v0

    goto/16 :goto_9

    .line 4822
    .end local v8    # "oneofCaseOffset":J
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "oneofCaseOffset":J
    .restart local v6    # "unsafe":Lsun/misc/Unsafe;
    :pswitch_1
    move-wide v8, v4

    move-object v10, v6

    move-object v0, v7

    .end local v4    # "oneofCaseOffset":J
    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .restart local v8    # "oneofCaseOffset":J
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    if-nez v12, :cond_3

    .line 4823
    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide v6, v8

    .end local v8    # "oneofCaseOffset":J
    .local v6, "oneofCaseOffset":J
    invoke-static {v4, v5, v0}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4824
    .end local p3    # "position":I
    .restart local v2    # "position":I
    iget-wide v8, v0, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v8, v9}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4825
    invoke-virtual {v10, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v8, v0

    move v0, v2

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_a

    .line 4822
    .end local v2    # "position":I
    .end local v6    # "oneofCaseOffset":J
    .restart local v8    # "oneofCaseOffset":J
    .restart local p3    # "position":I
    :cond_3
    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide v6, v8

    .end local v8    # "oneofCaseOffset":J
    .restart local v6    # "oneofCaseOffset":J
    move-object v8, v0

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_9

    .line 4815
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_2
    move-object v10, v6

    move-object v0, v7

    move-wide v6, v4

    move-object v4, v8

    move v5, v9

    .end local v4    # "oneofCaseOffset":J
    .local v6, "oneofCaseOffset":J
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    if-nez v12, :cond_4

    .line 4816
    invoke-static {v4, v5, v0}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4817
    .end local p3    # "position":I
    .restart local v2    # "position":I
    iget v3, v0, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v3}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4818
    invoke-virtual {v10, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v8, v0

    move v0, v2

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_a

    .line 4815
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_4
    move-object v8, v0

    move-object v9, v4

    move-object v4, v10

    move/from16 v10, p5

    goto/16 :goto_9

    .line 4801
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_3
    move-object v10, v6

    move-object v0, v7

    move-wide v6, v4

    move-object v4, v8

    move v5, v9

    .end local v4    # "oneofCaseOffset":J
    .local v6, "oneofCaseOffset":J
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    if-nez v12, :cond_7

    .line 4802
    invoke-static {v4, v5, v0}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4803
    .end local p3    # "position":I
    .restart local v2    # "position":I
    iget v3, v0, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4804
    .local v3, "enumValue":I
    move-object v8, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    .line 4805
    .local v5, "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    if-eqz v5, :cond_6

    invoke-interface {v5, v3}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object/from16 p3, v5

    move-object v5, v10

    move/from16 v10, p5

    goto :goto_2

    .line 4810
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v9

    move-object/from16 p3, v5

    .end local v5    # "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    .local p3, "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, v10

    move/from16 v10, p5

    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual {v9, v10, v4}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_3

    .line 4805
    .end local p3    # "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    .local v5, "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    :cond_6
    move-object/from16 p3, v5

    move-object v5, v10

    move/from16 v10, p5

    .line 4806
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v1, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4807
    invoke-virtual {v5, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4812
    .end local v3    # "enumValue":I
    .end local p3    # "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    :goto_3
    move-object/from16 v9, p2

    move v0, v2

    move-object v4, v5

    goto/16 :goto_a

    .line 4801
    .end local v2    # "position":I
    .end local v5    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    .local p3, "position":I
    :cond_7
    move-object v8, v0

    move-object v4, v10

    move-object/from16 v0, p0

    move/from16 v10, p5

    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .local v4, "unsafe":Lsun/misc/Unsafe;
    move-object/from16 v9, p2

    goto/16 :goto_9

    .line 4794
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_4
    move-object v8, v7

    move-wide/from16 v20, v4

    move-object v4, v6

    move-wide/from16 v6, v20

    move v5, v9

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v3, :cond_8

    .line 4795
    move-object/from16 v9, p2

    invoke-static {v9, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4796
    .end local p3    # "position":I
    .restart local v2    # "position":I
    iget-object v3, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4797
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v2

    goto/16 :goto_a

    .line 4794
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_8
    move-object/from16 v9, p2

    goto/16 :goto_9

    .line 4776
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_5
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v3, :cond_b

    .line 4777
    nop

    .line 4779
    invoke-direct {v0, v15}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 4778
    move/from16 v3, p4

    invoke-static {v2, v9, v5, v3, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4780
    .end local p3    # "position":I
    .restart local v2    # "position":I
    nop

    .line 4781
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    if-ne v5, v11, :cond_9

    .line 4782
    invoke-virtual {v4, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    goto :goto_4

    :cond_9
    nop

    :goto_4
    move-object/from16 v5, v16

    .line 4784
    .local v5, "oldValue":Ljava/lang/Object;
    if-nez v5, :cond_a

    .line 4785
    iget-object v0, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 4787
    :cond_a
    iget-object v0, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4788
    invoke-static {v5, v0}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4787
    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4790
    :goto_5
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4791
    .end local v5    # "oldValue":Ljava/lang/Object;
    move v0, v2

    goto/16 :goto_a

    .line 4776
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_b
    move/from16 v3, p4

    goto/16 :goto_9

    .line 4758
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    :pswitch_6
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v3, :cond_10

    .line 4759
    invoke-static {v9, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4760
    .end local p3    # "position":I
    .local v0, "position":I
    iget v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4761
    .local v2, "length":I
    if-nez v2, :cond_c

    .line 4762
    const-string v3, ""

    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 4764
    :cond_c
    const/high16 v3, 0x20000000

    and-int v3, p8, v3

    if-eqz v3, :cond_e

    add-int v3, v0, v2

    .line 4765
    invoke-static {v9, v0, v3}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6

    .line 4766
    :cond_d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3

    .line 4768
    :cond_e
    :goto_6
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v9, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4769
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v4, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4770
    add-int/2addr v0, v2

    .line 4772
    .end local v3    # "value":Ljava/lang/String;
    :goto_7
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4773
    .end local v2    # "length":I
    goto/16 :goto_a

    .line 4751
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_7
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-nez v12, :cond_10

    .line 4752
    invoke-static {v9, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4753
    .end local p3    # "position":I
    .restart local v0    # "position":I
    iget-wide v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v18, 0x0

    cmp-long v5, v2, v18

    if-eqz v5, :cond_f

    const/4 v3, 0x1

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4754
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    .line 4744
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_8
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v2, :cond_10

    .line 4745
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4746
    add-int/lit8 v0, v5, 0x4

    .line 4747
    .end local p3    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    .line 4736
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_9
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    const/4 v0, 0x1

    if-ne v12, v0, :cond_10

    .line 4737
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4738
    add-int/lit8 v0, v5, 0x8

    .line 4739
    .end local p3    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    .line 4728
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_a
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-nez v12, :cond_10

    .line 4729
    invoke-static {v9, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4730
    .end local p3    # "position":I
    .restart local v0    # "position":I
    iget v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4731
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    .line 4720
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_b
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-nez v12, :cond_10

    .line 4721
    invoke-static {v9, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4722
    .end local p3    # "position":I
    .restart local v0    # "position":I
    iget-wide v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4723
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    .line 4712
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_c
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    if-ne v12, v2, :cond_10

    .line 4713
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4714
    add-int/lit8 v0, v5, 0x4

    .line 4715
    .end local p3    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    .line 4705
    .end local v0    # "position":I
    .local v4, "oneofCaseOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "position":I
    :pswitch_d
    move-wide/from16 v20, v4

    move-object v4, v6

    move v5, v9

    move-object v9, v8

    move-object v8, v7

    move-wide/from16 v6, v20

    .local v4, "unsafe":Lsun/misc/Unsafe;
    .local v6, "oneofCaseOffset":J
    const/4 v0, 0x1

    if-ne v12, v0, :cond_10

    .line 4706
    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v4, v1, v13, v14, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4707
    add-int/lit8 v0, v5, 0x8

    .line 4708
    .end local p3    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v4, v1, v6, v7, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    .line 4850
    .end local v0    # "position":I
    .restart local p3    # "position":I
    :cond_10
    :goto_9
    move v0, v5

    .end local p3    # "position":I
    .restart local v0    # "position":I
    :goto_a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseProto3Message(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 31
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5189
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 5190
    .local v9, "unsafe":Lsun/misc/Unsafe;
    const v0, 0xfffff

    .line 5191
    .local v0, "currentPresenceFieldOffset":I
    const/4 v1, 0x0

    .line 5192
    .local v1, "currentPresenceField":I
    const/4 v2, 0x0

    .line 5193
    .local v2, "tag":I
    const/4 v3, -0x1

    .line 5194
    .local v3, "oldNumber":I
    const/4 v4, 0x0

    move v10, v0

    move v8, v1

    move/from16 v0, p3

    .line 5195
    .end local v1    # "currentPresenceField":I
    .end local p3    # "position":I
    .local v0, "position":I
    .local v4, "pos":I
    .local v8, "currentPresenceField":I
    .local v10, "currentPresenceFieldOffset":I
    :goto_0
    if-ge v0, v13, :cond_1e

    .line 5196
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "position":I
    .local v5, "position":I
    aget-byte v0, v12, v0

    .line 5197
    .end local v2    # "tag":I
    .local v0, "tag":I
    if-gez v0, :cond_0

    .line 5198
    invoke-static {v0, v12, v5, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 5199
    iget v0, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    move/from16 v16, v0

    move v7, v5

    goto :goto_1

    .line 5197
    :cond_0
    move/from16 v16, v0

    move v7, v5

    .line 5201
    .end local v0    # "tag":I
    .end local v5    # "position":I
    .local v7, "position":I
    .local v16, "tag":I
    :goto_1
    ushr-int/lit8 v6, v16, 0x3

    .line 5202
    .local v6, "number":I
    and-int/lit8 v5, v16, 0x7

    .line 5203
    .local v5, "wireType":I
    if-le v6, v3, :cond_1

    .line 5204
    div-int/lit8 v0, v4, 0x3

    invoke-direct {v15, v6, v0}, Lcom/google/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v0

    move v4, v0

    .end local v4    # "pos":I
    .local v0, "pos":I
    goto :goto_2

    .line 5206
    .end local v0    # "pos":I
    .restart local v4    # "pos":I
    :cond_1
    invoke-direct {v15, v6}, Lcom/google/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v0

    move v4, v0

    .line 5208
    :goto_2
    move/from16 v17, v6

    .line 5209
    .end local v3    # "oldNumber":I
    .local v17, "oldNumber":I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_2

    .line 5211
    const/4 v0, 0x0

    move/from16 v19, v0

    move v15, v5

    move/from16 v18, v6

    move-object/from16 v29, v9

    .end local v4    # "pos":I
    .restart local v0    # "pos":I
    goto/16 :goto_c

    .line 5213
    .end local v0    # "pos":I
    .restart local v4    # "pos":I
    :cond_2
    iget-object v0, v15, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v2, v4, 0x1

    aget v2, v0, v2

    .line 5214
    .local v2, "typeAndOffset":I
    invoke-static {v2}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v3

    .line 5215
    .local v3, "fieldType":I
    move/from16 v18, v6

    move/from16 p3, v7

    .end local v6    # "number":I
    .end local v7    # "position":I
    .local v18, "number":I
    .restart local p3    # "position":I
    invoke-static {v2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    .line 5216
    .local v6, "fieldOffset":J
    const/16 v0, 0x11

    if-gt v3, v0, :cond_13

    .line 5218
    iget-object v0, v15, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v20, v4, 0x2

    aget v20, v0, v20

    .line 5219
    .local v20, "presenceMaskAndOffset":I
    ushr-int/lit8 v0, v20, 0x14

    const/4 v1, 0x1

    shl-int v22, v1, v0

    .line 5220
    .local v22, "presenceMask":I
    const v0, 0xfffff

    and-int v13, v20, v0

    .line 5226
    .local v13, "presenceFieldOffset":I
    if-eq v13, v10, :cond_5

    .line 5227
    if-eq v10, v0, :cond_3

    .line 5228
    move/from16 v19, v2

    .end local v2    # "typeAndOffset":I
    .local v19, "typeAndOffset":I
    int-to-long v1, v10

    invoke-virtual {v9, v14, v1, v2, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    .line 5227
    .end local v19    # "typeAndOffset":I
    .restart local v2    # "typeAndOffset":I
    :cond_3
    move/from16 v19, v2

    .line 5230
    .end local v2    # "typeAndOffset":I
    .restart local v19    # "typeAndOffset":I
    :goto_3
    if-eq v13, v0, :cond_4

    .line 5231
    int-to-long v0, v13

    invoke-virtual {v9, v14, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v8, v0

    .line 5233
    :cond_4
    move v0, v13

    move v10, v0

    .end local v10    # "currentPresenceFieldOffset":I
    .local v0, "currentPresenceFieldOffset":I
    goto :goto_4

    .line 5226
    .end local v0    # "currentPresenceFieldOffset":I
    .end local v19    # "typeAndOffset":I
    .restart local v2    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    :cond_5
    move/from16 v19, v2

    .line 5235
    .end local v2    # "typeAndOffset":I
    .restart local v19    # "typeAndOffset":I
    :goto_4
    const/4 v0, 0x5

    packed-switch v3, :pswitch_data_0

    move/from16 v25, v3

    move/from16 v24, v13

    move/from16 v26, v19

    move/from16 v13, p3

    move/from16 p3, v4

    move/from16 v19, v10

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .local v10, "wireType":I
    .local v13, "position":I
    .local v19, "currentPresenceFieldOffset":I
    .local v24, "presenceFieldOffset":I
    .local v25, "fieldType":I
    .local v26, "typeAndOffset":I
    .local p3, "pos":I
    goto/16 :goto_8

    .line 5350
    .end local v24    # "presenceFieldOffset":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_0
    if-nez v5, :cond_6

    .line 5351
    move/from16 v2, p3

    .end local p3    # "position":I
    .local v2, "position":I
    invoke-static {v12, v2, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v21

    .line 5352
    .end local v2    # "position":I
    .local v21, "position":I
    iget-wide v0, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 5353
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v23

    .line 5352
    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 p3, v13

    move/from16 v13, v19

    move/from16 v19, v10

    move v10, v3

    .end local v3    # "fieldType":I
    .local v10, "fieldType":I
    .local v13, "typeAndOffset":I
    .local v19, "currentPresenceFieldOffset":I
    .local p3, "presenceFieldOffset":I
    move-wide v2, v6

    move/from16 v25, v10

    move/from16 v26, v13

    move v13, v4

    move v10, v5

    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .local v10, "wireType":I
    .local v13, "pos":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5354
    or-int v8, v8, v22

    .line 5355
    move v4, v13

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    move/from16 v0, v21

    move/from16 v13, p4

    goto/16 :goto_0

    .line 5350
    .end local v21    # "position":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .local p3, "position":I
    :cond_6
    move/from16 v2, p3

    move/from16 v25, v3

    move/from16 p3, v13

    move/from16 v26, v19

    move v13, v4

    move/from16 v19, v10

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .restart local v2    # "position":I
    .local v10, "wireType":I
    .local v13, "pos":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "presenceFieldOffset":I
    move/from16 p3, v13

    move v13, v2

    goto/16 :goto_8

    .line 5341
    .end local v2    # "position":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_1
    move/from16 v2, p3

    move/from16 v25, v3

    move/from16 p3, v13

    move/from16 v26, v19

    move v13, v4

    move/from16 v19, v10

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .restart local v2    # "position":I
    .local v10, "wireType":I
    .local v13, "pos":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "presenceFieldOffset":I
    if-nez v10, :cond_7

    .line 5342
    invoke-static {v12, v2, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5343
    .end local v2    # "position":I
    .local v0, "position":I
    iget v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5344
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    .line 5343
    invoke-virtual {v9, v14, v6, v7, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5345
    or-int v8, v8, v22

    .line 5346
    move v4, v13

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    move/from16 v13, p4

    goto/16 :goto_0

    .line 5341
    .end local v0    # "position":I
    .restart local v2    # "position":I
    :cond_7
    move/from16 p3, v13

    move v13, v2

    goto/16 :goto_8

    .line 5333
    .end local v2    # "position":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_2
    move/from16 v2, p3

    move/from16 v25, v3

    move/from16 p3, v13

    move/from16 v26, v19

    move v13, v4

    move/from16 v19, v10

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .restart local v2    # "position":I
    .local v10, "wireType":I
    .local v13, "pos":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "presenceFieldOffset":I
    if-nez v10, :cond_8

    .line 5334
    invoke-static {v12, v2, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5335
    .end local v2    # "position":I
    .restart local v0    # "position":I
    iget v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v9, v14, v6, v7, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5336
    or-int v8, v8, v22

    .line 5337
    move v4, v13

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    move/from16 v13, p4

    goto/16 :goto_0

    .line 5333
    .end local v0    # "position":I
    .restart local v2    # "position":I
    :cond_8
    move/from16 p3, v13

    move v13, v2

    goto/16 :goto_8

    .line 5325
    .end local v2    # "position":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_3
    move/from16 v2, p3

    move/from16 v25, v3

    move/from16 p3, v13

    move/from16 v26, v19

    move v13, v4

    move/from16 v19, v10

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .restart local v2    # "position":I
    .local v10, "wireType":I
    .local v13, "pos":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "presenceFieldOffset":I
    const/4 v0, 0x2

    if-ne v10, v0, :cond_9

    .line 5326
    invoke-static {v12, v2, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5327
    .end local v2    # "position":I
    .restart local v0    # "position":I
    iget-object v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5328
    or-int v8, v8, v22

    .line 5329
    move v4, v13

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    move/from16 v13, p4

    goto/16 :goto_0

    .line 5325
    .end local v0    # "position":I
    .restart local v2    # "position":I
    :cond_9
    move/from16 p3, v13

    move v13, v2

    goto/16 :goto_8

    .line 5309
    .end local v2    # "position":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_4
    move/from16 v2, p3

    move/from16 v25, v3

    move/from16 p3, v13

    move/from16 v26, v19

    move v13, v4

    move/from16 v19, v10

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .restart local v2    # "position":I
    .local v10, "wireType":I
    .local v13, "pos":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "presenceFieldOffset":I
    const/4 v0, 0x2

    if-ne v10, v0, :cond_b

    .line 5310
    nop

    .line 5312
    invoke-direct {v15, v13}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 5311
    move/from16 v24, p3

    move/from16 v4, p4

    .end local p3    # "presenceFieldOffset":I
    .restart local v24    # "presenceFieldOffset":I
    invoke-static {v0, v12, v2, v4, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5313
    .end local v2    # "position":I
    .restart local v0    # "position":I
    invoke-virtual {v9, v14, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 5314
    .local v1, "oldValue":Ljava/lang/Object;
    if-nez v1, :cond_a

    .line 5315
    iget-object v2, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 5317
    :cond_a
    iget-object v2, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 5318
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5317
    invoke-virtual {v9, v14, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5320
    :goto_5
    or-int v8, v8, v22

    .line 5321
    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    move/from16 v30, v13

    move v13, v4

    move/from16 v4, v30

    goto/16 :goto_0

    .line 5309
    .end local v0    # "position":I
    .end local v1    # "oldValue":Ljava/lang/Object;
    .end local v24    # "presenceFieldOffset":I
    .restart local v2    # "position":I
    .restart local p3    # "presenceFieldOffset":I
    :cond_b
    move/from16 v24, p3

    move/from16 v4, p4

    .end local p3    # "presenceFieldOffset":I
    .restart local v24    # "presenceFieldOffset":I
    move/from16 p3, v13

    move v13, v2

    goto/16 :goto_8

    .line 5297
    .end local v2    # "position":I
    .end local v24    # "presenceFieldOffset":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_5
    move/from16 v2, p3

    move/from16 v25, v3

    move/from16 v24, v13

    move/from16 v26, v19

    move v13, v4

    move/from16 v19, v10

    move/from16 v4, p4

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .end local p3    # "position":I
    .restart local v2    # "position":I
    .local v10, "wireType":I
    .local v13, "pos":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v24    # "presenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    const/4 v0, 0x2

    if-ne v10, v0, :cond_d

    .line 5298
    const/high16 v0, 0x20000000

    and-int v0, v26, v0

    if-nez v0, :cond_c

    .line 5299
    invoke-static {v12, v2, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeString([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .end local v2    # "position":I
    .restart local v0    # "position":I
    goto :goto_6

    .line 5301
    .end local v0    # "position":I
    .restart local v2    # "position":I
    :cond_c
    invoke-static {v12, v2, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5303
    .end local v2    # "position":I
    .restart local v0    # "position":I
    :goto_6
    iget-object v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v14, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5304
    or-int v8, v8, v22

    .line 5305
    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    move/from16 v30, v13

    move v13, v4

    move/from16 v4, v30

    goto/16 :goto_0

    .line 5297
    .end local v0    # "position":I
    .restart local v2    # "position":I
    :cond_d
    move/from16 p3, v13

    move v13, v2

    goto/16 :goto_8

    .line 5289
    .end local v2    # "position":I
    .end local v24    # "presenceFieldOffset":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_6
    move/from16 v2, p3

    move/from16 v25, v3

    move/from16 v24, v13

    move/from16 v26, v19

    move v13, v4

    move/from16 v19, v10

    move/from16 v4, p4

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .end local p3    # "position":I
    .restart local v2    # "position":I
    .local v10, "wireType":I
    .local v13, "pos":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v24    # "presenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    if-nez v10, :cond_f

    .line 5290
    invoke-static {v12, v2, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5291
    .end local v2    # "position":I
    .restart local v0    # "position":I
    iget-wide v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v27, 0x0

    cmp-long v3, v1, v27

    if-eqz v3, :cond_e

    const/4 v1, 0x1

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    :goto_7
    invoke-static {v14, v6, v7, v1}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 5292
    or-int v8, v8, v22

    .line 5293
    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    move/from16 v30, v13

    move v13, v4

    move/from16 v4, v30

    goto/16 :goto_0

    .line 5289
    .end local v0    # "position":I
    .restart local v2    # "position":I
    :cond_f
    move/from16 p3, v13

    move v13, v2

    goto/16 :goto_8

    .line 5281
    .end local v2    # "position":I
    .end local v24    # "presenceFieldOffset":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_7
    move/from16 v2, p3

    move/from16 v25, v3

    move/from16 v24, v13

    move/from16 v26, v19

    move v13, v4

    move/from16 v19, v10

    move/from16 v4, p4

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .end local p3    # "position":I
    .restart local v2    # "position":I
    .local v10, "wireType":I
    .local v13, "pos":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v24    # "presenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    if-ne v10, v0, :cond_10

    .line 5282
    invoke-static {v12, v2}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v9, v14, v6, v7, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5283
    add-int/lit8 v0, v2, 0x4

    .line 5284
    .end local v2    # "position":I
    .restart local v0    # "position":I
    or-int v8, v8, v22

    .line 5285
    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    move/from16 v30, v13

    move v13, v4

    move/from16 v4, v30

    goto/16 :goto_0

    .line 5281
    .end local v0    # "position":I
    .restart local v2    # "position":I
    :cond_10
    move/from16 p3, v13

    move v13, v2

    goto/16 :goto_8

    .line 5272
    .end local v2    # "position":I
    .end local v24    # "presenceFieldOffset":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_8
    move/from16 v2, p3

    move/from16 v25, v3

    move/from16 v24, v13

    move/from16 v26, v19

    move v13, v4

    move/from16 v19, v10

    move/from16 v4, p4

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .end local p3    # "position":I
    .restart local v2    # "position":I
    .local v10, "wireType":I
    .local v13, "pos":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v24    # "presenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_11

    .line 5273
    invoke-static {v12, v2}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v27

    move-object v0, v9

    move-object/from16 v1, p1

    move v5, v2

    .end local v2    # "position":I
    .local v5, "position":I
    move-wide v2, v6

    move/from16 p3, v13

    move v13, v5

    .end local v5    # "position":I
    .local v13, "position":I
    .local p3, "pos":I
    move-wide/from16 v4, v27

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5274
    add-int/lit8 v0, v13, 0x8

    .line 5275
    .end local v13    # "position":I
    .restart local v0    # "position":I
    or-int v8, v8, v22

    .line 5276
    move/from16 v4, p3

    move/from16 v13, p4

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    goto/16 :goto_0

    .line 5272
    .end local v0    # "position":I
    .end local p3    # "pos":I
    .restart local v2    # "position":I
    .local v13, "pos":I
    :cond_11
    move/from16 p3, v13

    move v13, v2

    .end local v2    # "position":I
    .local v13, "position":I
    .restart local p3    # "pos":I
    goto/16 :goto_8

    .line 5263
    .end local v24    # "presenceFieldOffset":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .local v5, "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_9
    move/from16 v25, v3

    move/from16 v24, v13

    move/from16 v26, v19

    move/from16 v13, p3

    move/from16 p3, v4

    move/from16 v19, v10

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .local v10, "wireType":I
    .local v13, "position":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v24    # "presenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "pos":I
    if-nez v10, :cond_12

    .line 5264
    invoke-static {v12, v13, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5265
    .end local v13    # "position":I
    .restart local v0    # "position":I
    iget v1, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v9, v14, v6, v7, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5266
    or-int v8, v8, v22

    .line 5267
    move/from16 v4, p3

    move/from16 v13, p4

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    goto/16 :goto_0

    .line 5254
    .end local v0    # "position":I
    .end local v24    # "presenceFieldOffset":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_a
    move/from16 v25, v3

    move/from16 v24, v13

    move/from16 v26, v19

    move/from16 v13, p3

    move/from16 p3, v4

    move/from16 v19, v10

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .local v10, "wireType":I
    .local v13, "position":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v24    # "presenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "pos":I
    if-nez v10, :cond_12

    .line 5255
    invoke-static {v12, v13, v11}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v13

    .line 5256
    iget-wide v4, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5257
    or-int v8, v8, v22

    .line 5258
    move/from16 v4, p3

    move v0, v13

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    move/from16 v13, p4

    goto/16 :goto_0

    .line 5245
    .end local v24    # "presenceFieldOffset":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_b
    move/from16 v25, v3

    move/from16 v24, v13

    move/from16 v26, v19

    move/from16 v13, p3

    move/from16 p3, v4

    move/from16 v19, v10

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .local v10, "wireType":I
    .local v13, "position":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v24    # "presenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "pos":I
    if-ne v10, v0, :cond_12

    .line 5246
    invoke-static {v12, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v6, v7, v0}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 5247
    add-int/lit8 v0, v13, 0x4

    .line 5248
    .end local v13    # "position":I
    .restart local v0    # "position":I
    or-int v8, v8, v22

    .line 5249
    move/from16 v4, p3

    move/from16 v13, p4

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    goto/16 :goto_0

    .line 5237
    .end local v0    # "position":I
    .end local v24    # "presenceFieldOffset":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v19, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_c
    move/from16 v25, v3

    move/from16 v24, v13

    move/from16 v26, v19

    move/from16 v13, p3

    move/from16 p3, v4

    move/from16 v19, v10

    move v10, v5

    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .local v10, "wireType":I
    .local v13, "position":I
    .local v19, "currentPresenceFieldOffset":I
    .restart local v24    # "presenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "pos":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_12

    .line 5238
    invoke-static {v12, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v6, v7, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 5239
    add-int/lit8 v0, v13, 0x8

    .line 5240
    .end local v13    # "position":I
    .restart local v0    # "position":I
    or-int v8, v8, v22

    .line 5241
    move/from16 v4, p3

    move/from16 v13, p4

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    goto/16 :goto_0

    .line 5361
    .end local v0    # "position":I
    .end local v20    # "presenceMaskAndOffset":I
    .end local v22    # "presenceMask":I
    .end local v24    # "presenceFieldOffset":I
    .restart local v13    # "position":I
    :cond_12
    :goto_8
    move-object/from16 v29, v9

    move v15, v10

    move v7, v13

    move/from16 v10, v19

    move/from16 v19, p3

    goto/16 :goto_c

    .end local v13    # "position":I
    .end local v19    # "currentPresenceFieldOffset":I
    .end local v25    # "fieldType":I
    .end local v26    # "typeAndOffset":I
    .local v2, "typeAndOffset":I
    .restart local v3    # "fieldType":I
    .restart local v4    # "pos":I
    .restart local v5    # "wireType":I
    .local v10, "currentPresenceFieldOffset":I
    .local p3, "position":I
    :cond_13
    move/from16 v13, p3

    move/from16 v26, v2

    move/from16 v25, v3

    move/from16 p3, v4

    move/from16 v19, v10

    move v10, v5

    .end local v2    # "typeAndOffset":I
    .end local v3    # "fieldType":I
    .end local v4    # "pos":I
    .end local v5    # "wireType":I
    .local v10, "wireType":I
    .restart local v13    # "position":I
    .restart local v19    # "currentPresenceFieldOffset":I
    .restart local v25    # "fieldType":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "pos":I
    const/16 v0, 0x1b

    move/from16 v5, v25

    .end local v25    # "fieldType":I
    .local v5, "fieldType":I
    if-ne v5, v0, :cond_17

    .line 5363
    const/4 v0, 0x2

    if-ne v10, v0, :cond_16

    .line 5364
    invoke-virtual {v9, v14, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$ProtobufList;

    .line 5365
    .local v0, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_15

    .line 5366
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 5367
    .local v1, "size":I
    if-nez v1, :cond_14

    const/16 v2, 0xa

    goto :goto_9

    :cond_14
    mul-int/lit8 v2, v1, 0x2

    .line 5368
    :goto_9
    invoke-interface {v0, v2}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 5370
    invoke-virtual {v9, v14, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v20, v0

    goto :goto_a

    .line 5365
    .end local v1    # "size":I
    :cond_15
    move-object/from16 v20, v0

    .line 5372
    .end local v0    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .local v20, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    :goto_a
    nop

    .line 5374
    move/from16 v4, p3

    .end local p3    # "pos":I
    .restart local v4    # "pos":I
    invoke-direct {v15, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 5373
    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v13

    move/from16 v22, v4

    .end local v4    # "pos":I
    .local v22, "pos":I
    move/from16 v4, p4

    move-object/from16 v23, v9

    move v9, v5

    .end local v5    # "fieldType":I
    .local v9, "fieldType":I
    .local v23, "unsafe":Lsun/misc/Unsafe;
    move-object/from16 v5, v20

    move-wide/from16 v24, v6

    .end local v6    # "fieldOffset":J
    .local v24, "fieldOffset":J
    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5375
    .end local v13    # "position":I
    .local v0, "position":I
    move/from16 v13, p4

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v10, v19

    move/from16 v4, v22

    move-object/from16 v9, v23

    goto/16 :goto_0

    .line 5363
    .end local v0    # "position":I
    .end local v20    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .end local v22    # "pos":I
    .end local v23    # "unsafe":Lsun/misc/Unsafe;
    .end local v24    # "fieldOffset":J
    .restart local v5    # "fieldType":I
    .restart local v6    # "fieldOffset":J
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .restart local v13    # "position":I
    .restart local p3    # "pos":I
    :cond_16
    move/from16 v22, p3

    move-wide/from16 v24, v6

    move-object/from16 v23, v9

    move v9, v5

    .end local v5    # "fieldType":I
    .end local v6    # "fieldOffset":J
    .end local p3    # "pos":I
    .local v9, "fieldType":I
    .restart local v22    # "pos":I
    .restart local v23    # "unsafe":Lsun/misc/Unsafe;
    .restart local v24    # "fieldOffset":J
    move/from16 v28, v8

    move v15, v10

    move/from16 v27, v13

    move-object/from16 v29, v23

    move/from16 v23, v19

    move/from16 v19, v22

    goto/16 :goto_b

    .line 5377
    .end local v22    # "pos":I
    .end local v23    # "unsafe":Lsun/misc/Unsafe;
    .end local v24    # "fieldOffset":J
    .restart local v5    # "fieldType":I
    .restart local v6    # "fieldOffset":J
    .local v9, "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "pos":I
    :cond_17
    move/from16 v22, p3

    move-wide/from16 v24, v6

    move-object/from16 v23, v9

    move v9, v5

    .end local v5    # "fieldType":I
    .end local v6    # "fieldOffset":J
    .end local p3    # "pos":I
    .local v9, "fieldType":I
    .restart local v22    # "pos":I
    .restart local v23    # "unsafe":Lsun/misc/Unsafe;
    .restart local v24    # "fieldOffset":J
    const/16 v0, 0x31

    if-gt v9, v0, :cond_19

    .line 5379
    move v7, v13

    .line 5380
    .local v7, "oldPosition":I
    move/from16 v6, v26

    .end local v26    # "typeAndOffset":I
    .local v6, "typeAndOffset":I
    int-to-long v4, v6

    .line 5381
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move-wide/from16 v20, v4

    move/from16 v4, p4

    move/from16 v5, v16

    .end local v6    # "typeAndOffset":I
    .restart local v26    # "typeAndOffset":I
    move/from16 v6, v18

    move/from16 v27, v13

    .end local v7    # "oldPosition":I
    .local v13, "oldPosition":I
    .local v27, "position":I
    move v7, v10

    move v15, v8

    .end local v8    # "currentPresenceField":I
    .local v15, "currentPresenceField":I
    move/from16 v8, v22

    move/from16 p3, v9

    move/from16 v28, v15

    move-object/from16 v29, v23

    move v15, v10

    move/from16 v23, v19

    .end local v9    # "fieldType":I
    .end local v10    # "wireType":I
    .end local v19    # "currentPresenceFieldOffset":I
    .local v15, "wireType":I
    .local v23, "currentPresenceFieldOffset":I
    .local v28, "currentPresenceField":I
    .local v29, "unsafe":Lsun/misc/Unsafe;
    .local p3, "fieldType":I
    move-wide/from16 v9, v20

    move/from16 v11, p3

    move/from16 v19, v22

    move/from16 v20, v26

    move/from16 v22, v15

    move v15, v13

    .end local v13    # "oldPosition":I
    .end local v26    # "typeAndOffset":I
    .local v15, "oldPosition":I
    .local v19, "pos":I
    .local v20, "typeAndOffset":I
    .local v22, "wireType":I
    move-wide/from16 v12, v24

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5394
    .end local v27    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v15, :cond_18

    .line 5395
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v10, v23

    move/from16 v8, v28

    move-object/from16 v9, v29

    goto/16 :goto_0

    .line 5397
    .end local v15    # "oldPosition":I
    :cond_18
    move v7, v0

    move/from16 v15, v22

    move/from16 v10, v23

    move/from16 v8, v28

    goto/16 :goto_c

    .end local v0    # "position":I
    .end local v20    # "typeAndOffset":I
    .end local v28    # "currentPresenceField":I
    .end local v29    # "unsafe":Lsun/misc/Unsafe;
    .end local p3    # "fieldType":I
    .restart local v8    # "currentPresenceField":I
    .restart local v9    # "fieldType":I
    .restart local v10    # "wireType":I
    .local v13, "position":I
    .local v19, "currentPresenceFieldOffset":I
    .local v22, "pos":I
    .local v23, "unsafe":Lsun/misc/Unsafe;
    .restart local v26    # "typeAndOffset":I
    :cond_19
    move/from16 v28, v8

    move/from16 p3, v9

    move/from16 v27, v13

    move-object/from16 v29, v23

    move/from16 v20, v26

    move/from16 v23, v19

    move/from16 v19, v22

    move/from16 v22, v10

    .end local v8    # "currentPresenceField":I
    .end local v9    # "fieldType":I
    .end local v10    # "wireType":I
    .end local v13    # "position":I
    .end local v26    # "typeAndOffset":I
    .local v19, "pos":I
    .restart local v20    # "typeAndOffset":I
    .local v22, "wireType":I
    .local v23, "currentPresenceFieldOffset":I
    .restart local v27    # "position":I
    .restart local v28    # "currentPresenceField":I
    .restart local v29    # "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "fieldType":I
    const/16 v0, 0x32

    move/from16 v14, p3

    .end local p3    # "fieldType":I
    .local v14, "fieldType":I
    if-ne v14, v0, :cond_1c

    .line 5398
    move/from16 v15, v22

    const/4 v0, 0x2

    .end local v22    # "wireType":I
    .local v15, "wireType":I
    if-ne v15, v0, :cond_1b

    .line 5399
    move/from16 v9, v27

    .line 5400
    .local v9, "oldPosition":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v27

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v24

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5401
    .end local v27    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v9, :cond_1a

    .line 5402
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v10, v23

    move/from16 v8, v28

    move-object/from16 v9, v29

    goto/16 :goto_0

    .line 5404
    .end local v9    # "oldPosition":I
    :cond_1a
    move v7, v0

    move/from16 v10, v23

    move/from16 v8, v28

    goto :goto_c

    .line 5426
    .end local v0    # "position":I
    .end local v14    # "fieldType":I
    .end local v15    # "wireType":I
    .end local v20    # "typeAndOffset":I
    .end local v24    # "fieldOffset":J
    .end local v28    # "currentPresenceField":I
    .end local v29    # "unsafe":Lsun/misc/Unsafe;
    .restart local v8    # "currentPresenceField":I
    .restart local v10    # "wireType":I
    .restart local v13    # "position":I
    .local v19, "currentPresenceFieldOffset":I
    .local v22, "pos":I
    .local v23, "unsafe":Lsun/misc/Unsafe;
    :cond_1b
    :goto_b
    move/from16 v10, v23

    move/from16 v7, v27

    move/from16 v8, v28

    .end local v8    # "currentPresenceField":I
    .end local v10    # "wireType":I
    .end local v13    # "position":I
    .end local v22    # "pos":I
    .restart local v15    # "wireType":I
    .local v19, "pos":I
    .local v23, "currentPresenceFieldOffset":I
    .restart local v27    # "position":I
    .restart local v28    # "currentPresenceField":I
    .restart local v29    # "unsafe":Lsun/misc/Unsafe;
    goto :goto_c

    .line 5406
    .end local v15    # "wireType":I
    .restart local v14    # "fieldType":I
    .restart local v20    # "typeAndOffset":I
    .local v22, "wireType":I
    .restart local v24    # "fieldOffset":J
    :cond_1c
    move/from16 v15, v22

    .end local v22    # "wireType":I
    .restart local v15    # "wireType":I
    move/from16 v13, v27

    .line 5407
    .local v13, "oldPosition":I
    nop

    .line 5408
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v27

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v18

    move v7, v15

    move/from16 v8, v20

    move v9, v14

    move-wide/from16 v10, v24

    move/from16 v12, v19

    move/from16 p3, v14

    move v14, v13

    .end local v13    # "oldPosition":I
    .local v14, "oldPosition":I
    .restart local p3    # "fieldType":I
    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5421
    .end local v27    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v14, :cond_1d

    .line 5422
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v10, v23

    move/from16 v8, v28

    move-object/from16 v9, v29

    goto/16 :goto_0

    .line 5421
    :cond_1d
    move v7, v0

    move/from16 v10, v23

    move/from16 v8, v28

    .line 5426
    .end local v0    # "position":I
    .end local v14    # "oldPosition":I
    .end local v20    # "typeAndOffset":I
    .end local v23    # "currentPresenceFieldOffset":I
    .end local v24    # "fieldOffset":J
    .end local v28    # "currentPresenceField":I
    .end local p3    # "fieldType":I
    .local v7, "position":I
    .restart local v8    # "currentPresenceField":I
    .local v10, "currentPresenceFieldOffset":I
    :goto_c
    nop

    .line 5427
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 5426
    move/from16 v0, v16

    move-object/from16 v1, p2

    move v2, v7

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5428
    .end local v7    # "position":I
    .end local v15    # "wireType":I
    .end local v18    # "number":I
    .restart local v0    # "position":I
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v19

    move-object/from16 v9, v29

    goto/16 :goto_0

    .line 5429
    .end local v16    # "tag":I
    .end local v17    # "oldNumber":I
    .end local v19    # "pos":I
    .end local v29    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "tag":I
    .local v3, "oldNumber":I
    .restart local v4    # "pos":I
    .local v9, "unsafe":Lsun/misc/Unsafe;
    :cond_1e
    move/from16 v28, v8

    move-object/from16 v29, v9

    move/from16 v23, v10

    .end local v8    # "currentPresenceField":I
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .end local v10    # "currentPresenceFieldOffset":I
    .restart local v23    # "currentPresenceFieldOffset":I
    .restart local v28    # "currentPresenceField":I
    .restart local v29    # "unsafe":Lsun/misc/Unsafe;
    const v1, 0xfffff

    .end local v23    # "currentPresenceFieldOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    if-eq v10, v1, :cond_1f

    .line 5430
    int-to-long v5, v10

    move-object/from16 v1, p1

    move/from16 v8, v28

    move-object/from16 v7, v29

    .end local v28    # "currentPresenceField":I
    .end local v29    # "unsafe":Lsun/misc/Unsafe;
    .local v7, "unsafe":Lsun/misc/Unsafe;
    .restart local v8    # "currentPresenceField":I
    invoke-virtual {v7, v1, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_d

    .line 5429
    .end local v7    # "unsafe":Lsun/misc/Unsafe;
    .end local v8    # "currentPresenceField":I
    .restart local v28    # "currentPresenceField":I
    .restart local v29    # "unsafe":Lsun/misc/Unsafe;
    :cond_1f
    move-object/from16 v1, p1

    move/from16 v8, v28

    move-object/from16 v7, v29

    .line 5432
    .end local v28    # "currentPresenceField":I
    .end local v29    # "unsafe":Lsun/misc/Unsafe;
    .restart local v7    # "unsafe":Lsun/misc/Unsafe;
    .restart local v8    # "currentPresenceField":I
    :goto_d
    move/from16 v5, p4

    if-ne v0, v5, :cond_20

    .line 5435
    return v0

    .line 5433
    :cond_20
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 16
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "tag"    # I
    .param p6, "number"    # I
    .param p7, "wireType"    # I
    .param p8, "bufferPosition"    # I
    .param p9, "typeAndOffset"    # J
    .param p11, "fieldType"    # I
    .param p12, "fieldOffset"    # J
    .param p14, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4497
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p7

    move/from16 v12, p8

    move-wide/from16 v13, p12

    move-object/from16 v15, p14

    sget-object v2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Internal$ProtobufList;

    .line 4498
    .local v3, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v3}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4499
    invoke-interface {v3}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v4

    .line 4500
    .local v4, "size":I
    if-nez v4, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v5, v4, 0x2

    .line 4501
    :goto_0
    invoke-interface {v3, v5}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v3

    .line 4503
    invoke-virtual {v2, v1, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v8, v3

    goto :goto_1

    .line 4498
    .end local v4    # "size":I
    :cond_1
    move-object v8, v3

    .line 4505
    .end local v3    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .local v8, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    :goto_1
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch p11, :pswitch_data_0

    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .local v13, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    goto/16 :goto_3

    .line 4642
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    :pswitch_0
    const/4 v2, 0x3

    if-ne v11, v2, :cond_2

    .line 4643
    nop

    .line 4645
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 4644
    move/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v8

    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move-object/from16 v8, p14

    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/ArrayDecoders;->decodeGroupList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .local v2, "position":I
    goto/16 :goto_4

    .line 4642
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :cond_2
    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    move/from16 v14, p6

    goto/16 :goto_3

    .line 4635
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    :pswitch_1
    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_3

    .line 4636
    invoke-static {v9, v10, v13, v15}, Lcom/google/protobuf/ArrayDecoders;->decodePackedSInt64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4637
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_3
    if-nez v11, :cond_4

    .line 4638
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeSInt64List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4637
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_4
    move/from16 v14, p6

    goto/16 :goto_3

    .line 4627
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    :pswitch_2
    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_5

    .line 4628
    invoke-static {v9, v10, v13, v15}, Lcom/google/protobuf/ArrayDecoders;->decodePackedSInt32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4629
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_5
    if-nez v11, :cond_6

    .line 4630
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeSInt32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v14, p6

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4629
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_6
    move/from16 v14, p6

    goto/16 :goto_3

    .line 4599
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    :pswitch_3
    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_7

    .line 4600
    invoke-static {v9, v10, v13, v15}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_2

    .line 4601
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_7
    if-nez v11, :cond_9

    .line 4602
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4606
    .end local p3    # "position":I
    .restart local v2    # "position":I
    :goto_2
    move-object v3, v1

    check-cast v3, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v3, v3, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    .line 4607
    .local v3, "unknownFields":Lcom/google/protobuf/UnknownFieldSetLite;
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    if-ne v3, v4, :cond_8

    .line 4612
    const/4 v3, 0x0

    .line 4614
    :cond_8
    nop

    .line 4618
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v4

    iget-object v5, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 4615
    move/from16 v14, p6

    invoke-static {v14, v13, v4, v3, v5}, Lcom/google/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 4621
    if-eqz v3, :cond_13

    .line 4622
    move-object v4, v1

    check-cast v4, Lcom/google/protobuf/GeneratedMessageLite;

    iput-object v3, v4, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    goto/16 :goto_4

    .line 4601
    .end local v2    # "position":I
    .end local v3    # "unknownFields":Lcom/google/protobuf/UnknownFieldSetLite;
    .restart local p3    # "position":I
    :cond_9
    move/from16 v14, p6

    goto/16 :goto_3

    .line 4593
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    :pswitch_4
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_12

    .line 4594
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeBytesList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4580
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_5
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_12

    .line 4581
    nop

    .line 4583
    invoke-direct {v0, v12}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 4582
    move/from16 v3, p5

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v13

    move-object/from16 v8, p14

    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4571
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_6
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_12

    .line 4572
    const-wide/32 v2, 0x20000000

    and-long v2, p9, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    .line 4573
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeStringList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4575
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_a
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeStringListRequireUtf8(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4564
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_7
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_b

    .line 4565
    invoke-static {v9, v10, v13, v15}, Lcom/google/protobuf/ArrayDecoders;->decodePackedBoolList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4566
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_b
    if-nez v11, :cond_12

    .line 4567
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeBoolList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4556
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_8
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_c

    .line 4557
    invoke-static {v9, v10, v13, v15}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFixed32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4558
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_c
    if-ne v11, v2, :cond_12

    .line 4559
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4546
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_9
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_d

    .line 4547
    invoke-static {v9, v10, v13, v15}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFixed64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4548
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_d
    if-ne v11, v3, :cond_12

    .line 4549
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4536
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_a
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_e

    .line 4537
    invoke-static {v9, v10, v13, v15}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4538
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_e
    if-nez v11, :cond_12

    .line 4539
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto/16 :goto_4

    .line 4526
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_b
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_f

    .line 4527
    invoke-static {v9, v10, v13, v15}, Lcom/google/protobuf/ArrayDecoders;->decodePackedVarint64List([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_4

    .line 4528
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_f
    if-nez v11, :cond_12

    .line 4529
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64List(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_4

    .line 4516
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_c
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_10

    .line 4517
    invoke-static {v9, v10, v13, v15}, Lcom/google/protobuf/ArrayDecoders;->decodePackedFloatList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_4

    .line 4518
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_10
    if-ne v11, v2, :cond_12

    .line 4519
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeFloatList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_4

    .line 4508
    .end local v2    # "position":I
    .end local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local p3    # "position":I
    :pswitch_d
    move/from16 v14, p6

    move-object v13, v8

    .end local v8    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .restart local v13    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    if-ne v11, v4, :cond_11

    .line 4509
    invoke-static {v9, v10, v13, v15}, Lcom/google/protobuf/ArrayDecoders;->decodePackedDoubleList([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_4

    .line 4510
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_11
    if-ne v11, v3, :cond_12

    .line 4511
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeDoubleList(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .end local p3    # "position":I
    .restart local v2    # "position":I
    goto :goto_4

    .line 4657
    .end local v2    # "position":I
    .restart local p3    # "position":I
    :cond_12
    :goto_3
    move v2, v10

    .end local p3    # "position":I
    .restart local v2    # "position":I
    :cond_13
    :goto_4
    return v2

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private positionForFieldNumber(I)I
    .locals 1
    .param p1, "number"    # I

    .line 5892
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    iget v0, p0, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_0

    .line 5893
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    return v0

    .line 5895
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private positionForFieldNumber(II)I
    .locals 1
    .param p1, "number"    # I
    .param p2, "min"    # I

    .line 5899
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    iget v0, p0, Lcom/google/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_0

    .line 5900
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result v0

    return v0

    .line 5902
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private presenceMaskAndOffsetAt(I)I
    .locals 2
    .param p1, "pos"    # I

    .line 5730
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private readGroupList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "reader"    # Lcom/google/protobuf/Reader;
    .param p6, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/Schema<",
            "TE;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5717
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p5, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TE;>;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 5718
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 5717
    invoke-interface {p4, v0, p5, p6}, Lcom/google/protobuf/Reader;->readGroupList(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5719
    return-void
.end method

.method private readMessageList(Ljava/lang/Object;ILcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Lcom/google/protobuf/Reader;
    .param p5, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/Schema<",
            "TE;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5705
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p4, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TE;>;"
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5706
    .local v0, "offset":J
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 5707
    invoke-virtual {v2, p1, v0, v1}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 5706
    invoke-interface {p3, v2, p4, p5}, Lcom/google/protobuf/Reader;->readMessageList(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5708
    return-void
.end method

.method private readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Lcom/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5675
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5677
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 5678
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->lite:Z

    if-eqz v0, :cond_1

    .line 5681
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 5685
    :cond_1
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5687
    :goto_0
    return-void
.end method

.method private readStringList(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Lcom/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5690
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5691
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 5692
    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 5691
    invoke-interface {p3, v0}, Lcom/google/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    goto :goto_0

    .line 5694
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    invoke-static {p2}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/protobuf/Reader;->readStringList(Ljava/util/List;)V

    .line 5696
    :goto_0
    return-void
.end method

.method private static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 595
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 596
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 600
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 601
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 602
    return-object v4

    .line 600
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 608
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found. Known fields are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setFieldPresent(Ljava/lang/Object;I)V
    .locals 6
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 5863
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2}, Lcom/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5864
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    .line 5865
    .local v1, "presenceFieldOffset":J
    const-wide/32 v3, 0xfffff

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 5866
    return-void

    .line 5868
    :cond_0
    const/4 v3, 0x1

    ushr-int/lit8 v4, v0, 0x14

    shl-int/2addr v3, v4

    .line 5869
    .local v3, "presenceMask":I
    nop

    .line 5872
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v4

    or-int/2addr v4, v3

    .line 5869
    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 5873
    return-void
.end method

.method private setOneofPresent(Ljava/lang/Object;II)V
    .locals 3
    .param p2, "fieldNumber"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 5887
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 5888
    .local v0, "presenceMaskAndOffset":I
    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 5889
    return-void
.end method

.method private slowPositionForFieldNumber(II)I
    .locals 4
    .param p1, "number"    # I
    .param p2, "min"    # I

    .line 5906
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    .line 5907
    .local v0, "max":I
    :goto_0
    if-gt p2, v0, :cond_2

    .line 5909
    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    .line 5910
    .local v1, "mid":I
    mul-int/lit8 v2, v1, 0x3

    .line 5911
    .local v2, "pos":I
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 5912
    .local v3, "midFieldNumber":I
    if-ne p1, v3, :cond_0

    .line 5914
    return v2

    .line 5916
    :cond_0
    if-ge p1, v3, :cond_1

    .line 5918
    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    .line 5921
    :cond_1
    add-int/lit8 p2, v1, 0x1

    .line 5923
    .end local v1    # "mid":I
    .end local v2    # "pos":I
    .end local v3    # "midFieldNumber":I
    :goto_1
    goto :goto_0

    .line 5924
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private static storeFieldData(Lcom/google/protobuf/FieldInfo;[II[Ljava/lang/Object;)V
    .locals 9
    .param p0, "fi"    # Lcom/google/protobuf/FieldInfo;
    .param p1, "buffer"    # [I
    .param p2, "bufferIndex"    # I
    .param p3, "objects"    # [Ljava/lang/Object;

    .line 734
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getOneof()Lcom/google/protobuf/OneofInfo;

    move-result-object v0

    .line 735
    .local v0, "oneof":Lcom/google/protobuf/OneofInfo;
    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/FieldType;->id()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    .line 737
    .local v1, "typeId":I
    invoke-virtual {v0}, Lcom/google/protobuf/OneofInfo;->getValueField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v3, v2

    .line 738
    .local v3, "fieldOffset":I
    invoke-virtual {v0}, Lcom/google/protobuf/OneofInfo;->getCaseField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v2, v4

    .line 739
    .local v2, "presenceFieldOffset":I
    const/4 v4, 0x0

    .local v4, "presenceMaskShift":I
    goto :goto_1

    .line 741
    .end local v1    # "typeId":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "fieldOffset":I
    .end local v4    # "presenceMaskShift":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v1

    .line 742
    .local v1, "type":Lcom/google/protobuf/FieldType;
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v3, v2

    .line 743
    .restart local v3    # "fieldOffset":I
    invoke-virtual {v1}, Lcom/google/protobuf/FieldType;->id()I

    move-result v2

    .line 744
    .local v2, "typeId":I
    invoke-virtual {v1}, Lcom/google/protobuf/FieldType;->isList()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/google/protobuf/FieldType;->isMap()Z

    move-result v4

    if-nez v4, :cond_2

    .line 745
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getPresenceField()Ljava/lang/reflect/Field;

    move-result-object v4

    .line 746
    .local v4, "presenceField":Ljava/lang/reflect/Field;
    if-nez v4, :cond_1

    .line 747
    const v5, 0xfffff

    .local v5, "presenceFieldOffset":I
    goto :goto_0

    .line 749
    .end local v5    # "presenceFieldOffset":I
    :cond_1
    invoke-static {v4}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v6, v5

    move v5, v6

    .line 751
    .restart local v5    # "presenceFieldOffset":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getPresenceMask()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    .line 752
    .local v4, "presenceMaskShift":I
    move v1, v2

    move v2, v5

    goto :goto_1

    .line 753
    .end local v4    # "presenceMaskShift":I
    .end local v5    # "presenceFieldOffset":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v4

    if-nez v4, :cond_3

    .line 754
    const/4 v4, 0x0

    .line 755
    .local v4, "presenceFieldOffset":I
    const/4 v5, 0x0

    move v1, v2

    move v2, v4

    move v4, v5

    .local v5, "presenceMaskShift":I
    goto :goto_1

    .line 757
    .end local v4    # "presenceFieldOffset":I
    .end local v5    # "presenceMaskShift":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v5, v4

    .line 758
    .local v5, "presenceFieldOffset":I
    const/4 v4, 0x0

    move v1, v2

    move v2, v5

    .line 763
    .end local v5    # "presenceFieldOffset":I
    .local v1, "typeId":I
    .local v2, "presenceFieldOffset":I
    .local v4, "presenceMaskShift":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v5

    aput v5, p1, p2

    .line 764
    add-int/lit8 v5, p2, 0x1

    .line 765
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->isEnforceUtf8()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    const/high16 v6, 0x20000000

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 766
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 v7, 0x10000000

    :cond_5
    or-int/2addr v6, v7

    shl-int/lit8 v7, v1, 0x14

    or-int/2addr v6, v7

    or-int/2addr v6, v3

    aput v6, p1, v5

    .line 769
    add-int/lit8 v5, p2, 0x2

    shl-int/lit8 v6, v4, 0x14

    or-int/2addr v6, v2

    aput v6, p1, v5

    .line 771
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getMessageFieldClass()Ljava/lang/Class;

    move-result-object v5

    .line 772
    .local v5, "messageFieldClass":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 773
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, p3, v6

    .line 774
    if-eqz v5, :cond_6

    .line 775
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-object v5, p3, v6

    goto :goto_3

    .line 776
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 777
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v7

    aput-object v7, p3, v6

    goto :goto_3

    .line 780
    :cond_7
    if-eqz v5, :cond_8

    .line 781
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aput-object v5, p3, v6

    goto :goto_3

    .line 782
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 783
    div-int/lit8 v6, p2, 0x3

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getEnumVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v7

    aput-object v7, p3, v6

    .line 786
    :cond_9
    :goto_3
    return-void
.end method

.method private static type(I)I
    .locals 1
    .param p0, "value"    # I

    .line 5734
    const/high16 v0, 0xff00000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method private typeAndOffsetAt(I)I
    .locals 2
    .param p1, "pos"    # I

    .line 5726
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 21
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2555
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 2556
    .local v3, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    const/4 v4, 0x0

    .line 2557
    .local v4, "nextExtension":Ljava/util/Map$Entry;
    iget-boolean v5, v0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v5, :cond_0

    .line 2558
    iget-object v5, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v5, v1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v5

    .line 2559
    .local v5, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    invoke-virtual {v5}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2560
    invoke-virtual {v5}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2561
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Ljava/util/Map$Entry;

    .line 2564
    .end local v5    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    :cond_0
    const v5, 0xfffff

    .line 2565
    .local v5, "currentPresenceFieldOffset":I
    const/4 v6, 0x0

    .line 2566
    .local v6, "currentPresenceField":I
    iget-object v7, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v7, v7

    .line 2567
    .local v7, "bufferLength":I
    sget-object v8, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 2568
    .local v8, "unsafe":Lsun/misc/Unsafe;
    const/4 v9, 0x0

    .local v9, "pos":I
    :goto_0
    if-ge v9, v7, :cond_8

    .line 2569
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v11

    .line 2570
    .local v11, "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v12

    .line 2571
    .local v12, "number":I
    invoke-static {v11}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v13

    .line 2573
    .local v13, "fieldType":I
    const/4 v14, 0x0

    .line 2574
    .local v14, "presenceMaskAndOffset":I
    const/4 v15, 0x0

    .line 2575
    .local v15, "presenceMask":I
    const/16 v10, 0x11

    move-object/from16 v17, v4

    .end local v4    # "nextExtension":Ljava/util/Map$Entry;
    .local v17, "nextExtension":Ljava/util/Map$Entry;
    if-gt v13, v10, :cond_2

    .line 2576
    iget-object v10, v0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v18, v9, 0x2

    aget v14, v10, v18

    .line 2577
    const v10, 0xfffff

    and-int/2addr v10, v14

    .line 2578
    .local v10, "presenceFieldOffset":I
    if-eq v10, v5, :cond_1

    .line 2579
    move v5, v10

    .line 2580
    move/from16 v19, v5

    .end local v5    # "currentPresenceFieldOffset":I
    .local v19, "currentPresenceFieldOffset":I
    int-to-long v4, v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move/from16 v5, v19

    .line 2582
    .end local v19    # "currentPresenceFieldOffset":I
    .restart local v5    # "currentPresenceFieldOffset":I
    :cond_1
    ushr-int/lit8 v4, v14, 0x14

    const/16 v18, 0x1

    shl-int v15, v18, v4

    move-object/from16 v4, v17

    goto :goto_1

    .line 2575
    .end local v10    # "presenceFieldOffset":I
    :cond_2
    move-object/from16 v4, v17

    .line 2586
    .end local v17    # "nextExtension":Ljava/util/Map$Entry;
    .restart local v4    # "nextExtension":Ljava/util/Map$Entry;
    :goto_1
    if-eqz v4, :cond_4

    iget-object v10, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v10, v4}, Lcom/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v10

    if-gt v10, v12, :cond_4

    .line 2587
    iget-object v10, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v10, v2, v4}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2588
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    move-object v4, v10

    goto :goto_1

    .line 2590
    :cond_4
    move-object/from16 v17, v4

    move v10, v5

    .end local v4    # "nextExtension":Ljava/util/Map$Entry;
    .end local v5    # "currentPresenceFieldOffset":I
    .local v10, "currentPresenceFieldOffset":I
    .restart local v17    # "nextExtension":Ljava/util/Map$Entry;
    invoke-static {v11}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    .line 2592
    .local v4, "offset":J
    move/from16 v19, v7

    .end local v7    # "bufferLength":I
    .local v19, "bufferLength":I
    const/4 v7, 0x0

    packed-switch v13, :pswitch_data_0

    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .local v16, "currentPresenceFieldOffset":I
    .local v20, "typeAndOffset":I
    goto/16 :goto_3

    .line 2912
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_0
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2913
    nop

    .line 2914
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    move/from16 v16, v10

    .end local v10    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v10

    .line 2913
    invoke-interface {v2, v12, v7, v10}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 2912
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    :cond_5
    move/from16 v16, v10

    .end local v10    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    goto/16 :goto_3

    .line 2907
    .end local v16    # "currentPresenceFieldOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    :pswitch_1
    move/from16 v16, v10

    .end local v10    # "currentPresenceFieldOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2908
    move/from16 v20, v11

    .end local v11    # "typeAndOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 2907
    .end local v20    # "typeAndOffset":I
    .restart local v11    # "typeAndOffset":I
    :cond_6
    move/from16 v20, v11

    .end local v11    # "typeAndOffset":I
    .restart local v20    # "typeAndOffset":I
    goto/16 :goto_3

    .line 2902
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2903
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 2897
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2898
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 2892
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_4
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2893
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 2887
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_5
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2888
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 2882
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_6
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2883
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 2877
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_7
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2878
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/ByteString;

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 2871
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_8
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2872
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 2873
    .local v7, "value":Ljava/lang/Object;
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 2874
    .end local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 2866
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_9
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2867
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12, v7, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 2861
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_a
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2862
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 2856
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_b
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2857
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_3

    .line 2851
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_c
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2852
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_3

    .line 2846
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_d
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2847
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_3

    .line 2841
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_e
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2842
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_3

    .line 2836
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_f
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2837
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_3

    .line 2831
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_10
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2832
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_3

    .line 2826
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_11
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v1, v12, v9}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2827
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_3

    .line 2823
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_12
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v2, v12, v7, v9}, Lcom/google/protobuf/MessageSchema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    .line 2824
    goto/16 :goto_3

    .line 2815
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_13
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2816
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 2817
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2819
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v11

    .line 2815
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    .line 2820
    goto/16 :goto_3

    .line 2811
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_14
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2812
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2811
    const/4 v11, 0x1

    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2813
    goto/16 :goto_3

    .line 2807
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_15
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2808
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2807
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2809
    goto/16 :goto_3

    .line 2803
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_16
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2804
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2803
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2805
    goto/16 :goto_3

    .line 2799
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_17
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2800
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2799
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2801
    goto/16 :goto_3

    .line 2795
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_18
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2796
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2795
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2797
    goto/16 :goto_3

    .line 2791
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_19
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2792
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2791
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2793
    goto/16 :goto_3

    .line 2787
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1a
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2788
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2787
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2789
    goto/16 :goto_3

    .line 2782
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1b
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2783
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2782
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2785
    goto/16 :goto_3

    .line 2778
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1c
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2779
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2778
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2780
    goto/16 :goto_3

    .line 2774
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1d
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2775
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2774
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2776
    goto/16 :goto_3

    .line 2770
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1e
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2771
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2770
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2772
    goto/16 :goto_3

    .line 2766
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_1f
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2767
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2766
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2768
    goto/16 :goto_3

    .line 2762
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_20
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2763
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2762
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2764
    goto/16 :goto_3

    .line 2758
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_21
    move/from16 v16, v10

    move/from16 v20, v11

    const/4 v11, 0x1

    .line 2759
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2758
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2760
    goto/16 :goto_3

    .line 2753
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_22
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2754
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2753
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2755
    goto/16 :goto_3

    .line 2749
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_23
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2750
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2749
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2751
    goto/16 :goto_3

    .line 2745
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_24
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2746
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2745
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2747
    goto/16 :goto_3

    .line 2741
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_25
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2742
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2741
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2743
    goto/16 :goto_3

    .line 2737
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_26
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2738
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2737
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2739
    goto/16 :goto_3

    .line 2733
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_27
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2734
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2733
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2735
    goto/16 :goto_3

    .line 2729
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_28
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2730
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2729
    invoke-static {v7, v10, v2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 2731
    goto/16 :goto_3

    .line 2722
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_29
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2723
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 2724
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2726
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v11

    .line 2722
    invoke-static {v7, v10, v2, v11}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    .line 2727
    goto/16 :goto_3

    .line 2718
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2a
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2719
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2718
    invoke-static {v7, v10, v2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 2720
    goto/16 :goto_3

    .line 2714
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2b
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2715
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2714
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2716
    goto/16 :goto_3

    .line 2710
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2c
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2711
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2710
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2712
    goto/16 :goto_3

    .line 2706
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2d
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2707
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2706
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2708
    goto/16 :goto_3

    .line 2702
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2e
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2703
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2702
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2704
    goto/16 :goto_3

    .line 2698
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_2f
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2699
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2698
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2700
    goto/16 :goto_3

    .line 2694
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_30
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2695
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2694
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2696
    goto/16 :goto_3

    .line 2690
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_31
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2691
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2690
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2692
    goto/16 :goto_3

    .line 2686
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_32
    move/from16 v16, v10

    move/from16 v20, v11

    .line 2687
    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 2686
    invoke-static {v10, v11, v2, v7}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 2688
    goto/16 :goto_3

    .line 2680
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_33
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2681
    nop

    .line 2682
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v10

    .line 2681
    invoke-interface {v2, v12, v7, v10}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 2675
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_34
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2676
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 2670
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_35
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2671
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 2665
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_36
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2666
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 2660
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_37
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2661
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 2655
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_38
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2656
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 2650
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_39
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2651
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 2645
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3a
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2646
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/ByteString;

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 2639
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3b
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2640
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 2641
    .restart local v7    # "value":Ljava/lang/Object;
    invoke-direct {v0, v9}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v12, v7, v10}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 2642
    .end local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 2634
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3c
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2635
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v12, v7, v2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 2629
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3d
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2630
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 2624
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3e
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2625
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_3

    .line 2619
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_3f
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2620
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_3

    .line 2614
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_40
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2615
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_3

    .line 2609
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_41
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2610
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_3

    .line 2604
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_42
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2605
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_3

    .line 2599
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_43
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2600
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {v2, v12, v7}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_3

    .line 2594
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v20    # "typeAndOffset":I
    .restart local v10    # "currentPresenceFieldOffset":I
    .restart local v11    # "typeAndOffset":I
    :pswitch_44
    move/from16 v16, v10

    move/from16 v20, v11

    .end local v10    # "currentPresenceFieldOffset":I
    .end local v11    # "typeAndOffset":I
    .restart local v16    # "currentPresenceFieldOffset":I
    .restart local v20    # "typeAndOffset":I
    and-int v7, v6, v15

    if-eqz v7, :cond_7

    .line 2595
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {v2, v12, v10, v11}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    .line 2568
    .end local v4    # "offset":J
    .end local v12    # "number":I
    .end local v13    # "fieldType":I
    .end local v14    # "presenceMaskAndOffset":I
    .end local v15    # "presenceMask":I
    .end local v20    # "typeAndOffset":I
    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x3

    move/from16 v5, v16

    move-object/from16 v4, v17

    move/from16 v7, v19

    goto/16 :goto_0

    .end local v16    # "currentPresenceFieldOffset":I
    .end local v17    # "nextExtension":Ljava/util/Map$Entry;
    .end local v19    # "bufferLength":I
    .local v4, "nextExtension":Ljava/util/Map$Entry;
    .restart local v5    # "currentPresenceFieldOffset":I
    .local v7, "bufferLength":I
    :cond_8
    move-object/from16 v17, v4

    move/from16 v19, v7

    .line 2922
    .end local v7    # "bufferLength":I
    .end local v9    # "pos":I
    .restart local v19    # "bufferLength":I
    :goto_4
    if-eqz v4, :cond_a

    .line 2923
    iget-object v7, v0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v7, v2, v4}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2924
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_5
    move-object v4, v7

    goto :goto_4

    .line 2926
    :cond_a
    iget-object v7, v0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v7, v1, v2}, Lcom/google/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 2927
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 11
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2931
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 2932
    .local v0, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    const/4 v1, 0x0

    .line 2933
    .local v1, "nextExtension":Ljava/util/Map$Entry;
    iget-boolean v2, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_0

    .line 2934
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v2

    .line 2935
    .local v2, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    invoke-virtual {v2}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2936
    invoke-virtual {v2}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2937
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map$Entry;

    .line 2940
    .end local v2    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v2, v2

    .line 2941
    .local v2, "bufferLength":I
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_4

    .line 2942
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    .line 2943
    .local v5, "typeAndOffset":I
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v6

    .line 2946
    .local v6, "number":I
    :goto_1
    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v7, v1}, Lcom/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v7

    if-gt v7, v6, :cond_2

    .line 2947
    iget-object v7, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v7, p2, v1}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2948
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v7, v4

    :goto_2
    move-object v1, v7

    goto :goto_1

    .line 2951
    :cond_2
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    .line 3363
    :pswitch_0
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3364
    nop

    .line 3366
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3367
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    .line 3364
    invoke-interface {p2, v6, v4, v7}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3358
    :pswitch_1
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3359
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 3353
    :pswitch_2
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3354
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 3348
    :pswitch_3
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3349
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 3343
    :pswitch_4
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3344
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 3338
    :pswitch_5
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3339
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 3333
    :pswitch_6
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3334
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 3327
    :pswitch_7
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3328
    nop

    .line 3329
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 3328
    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 3321
    :pswitch_8
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3322
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3323
    .local v4, "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 3324
    .end local v4    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 3316
    :pswitch_9
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3317
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v6, v4, p2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 3311
    :pswitch_a
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3312
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 3306
    :pswitch_b
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3307
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_3

    .line 3301
    :pswitch_c
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3302
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_3

    .line 3296
    :pswitch_d
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3297
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_3

    .line 3291
    :pswitch_e
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3292
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_3

    .line 3286
    :pswitch_f
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3287
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_3

    .line 3281
    :pswitch_10
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3282
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_3

    .line 3276
    :pswitch_11
    invoke-direct {p0, p1, v6, v3}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3277
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_3

    .line 3273
    :pswitch_12
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v6, v4, v3}, Lcom/google/protobuf/MessageSchema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    .line 3274
    goto/16 :goto_3

    .line 3265
    :pswitch_13
    nop

    .line 3266
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3267
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3269
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    .line 3265
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    .line 3270
    goto/16 :goto_3

    .line 3258
    :pswitch_14
    nop

    .line 3259
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3260
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3258
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3263
    goto/16 :goto_3

    .line 3251
    :pswitch_15
    nop

    .line 3252
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3253
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3251
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3256
    goto/16 :goto_3

    .line 3244
    :pswitch_16
    nop

    .line 3245
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3246
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3244
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3249
    goto/16 :goto_3

    .line 3237
    :pswitch_17
    nop

    .line 3238
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3239
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3237
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3242
    goto/16 :goto_3

    .line 3230
    :pswitch_18
    nop

    .line 3231
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3232
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3230
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3235
    goto/16 :goto_3

    .line 3223
    :pswitch_19
    nop

    .line 3224
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3225
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3223
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3228
    goto/16 :goto_3

    .line 3216
    :pswitch_1a
    nop

    .line 3217
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3218
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3216
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3221
    goto/16 :goto_3

    .line 3208
    :pswitch_1b
    nop

    .line 3209
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3210
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3208
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3214
    goto/16 :goto_3

    .line 3201
    :pswitch_1c
    nop

    .line 3202
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3203
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3201
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3206
    goto/16 :goto_3

    .line 3194
    :pswitch_1d
    nop

    .line 3195
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3196
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3194
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3199
    goto/16 :goto_3

    .line 3187
    :pswitch_1e
    nop

    .line 3188
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3189
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3187
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3192
    goto/16 :goto_3

    .line 3180
    :pswitch_1f
    nop

    .line 3181
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3182
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3180
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3185
    goto/16 :goto_3

    .line 3173
    :pswitch_20
    nop

    .line 3174
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3175
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3173
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3178
    goto/16 :goto_3

    .line 3166
    :pswitch_21
    nop

    .line 3167
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3168
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3166
    invoke-static {v4, v8, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3171
    goto/16 :goto_3

    .line 3158
    :pswitch_22
    nop

    .line 3159
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3160
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3158
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3163
    goto/16 :goto_3

    .line 3151
    :pswitch_23
    nop

    .line 3152
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3153
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3151
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3156
    goto/16 :goto_3

    .line 3144
    :pswitch_24
    nop

    .line 3145
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3146
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3144
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3149
    goto/16 :goto_3

    .line 3137
    :pswitch_25
    nop

    .line 3138
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3139
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3137
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3142
    goto/16 :goto_3

    .line 3130
    :pswitch_26
    nop

    .line 3131
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3132
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3130
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3135
    goto/16 :goto_3

    .line 3123
    :pswitch_27
    nop

    .line 3124
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3125
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3123
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3128
    goto/16 :goto_3

    .line 3117
    :pswitch_28
    nop

    .line 3118
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3119
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3117
    invoke-static {v4, v7, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 3121
    goto/16 :goto_3

    .line 3110
    :pswitch_29
    nop

    .line 3111
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3112
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3114
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    .line 3110
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    .line 3115
    goto/16 :goto_3

    .line 3104
    :pswitch_2a
    nop

    .line 3105
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3106
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3104
    invoke-static {v4, v7, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 3108
    goto/16 :goto_3

    .line 3097
    :pswitch_2b
    nop

    .line 3098
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3099
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3097
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3102
    goto/16 :goto_3

    .line 3090
    :pswitch_2c
    nop

    .line 3091
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3092
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3090
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3095
    goto/16 :goto_3

    .line 3083
    :pswitch_2d
    nop

    .line 3084
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3085
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3083
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3088
    goto/16 :goto_3

    .line 3076
    :pswitch_2e
    nop

    .line 3077
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3078
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3076
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3081
    goto/16 :goto_3

    .line 3069
    :pswitch_2f
    nop

    .line 3070
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3071
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3069
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3074
    goto/16 :goto_3

    .line 3062
    :pswitch_30
    nop

    .line 3063
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3064
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3062
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3067
    goto/16 :goto_3

    .line 3055
    :pswitch_31
    nop

    .line 3056
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3057
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3055
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3060
    goto/16 :goto_3

    .line 3048
    :pswitch_32
    nop

    .line 3049
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 3050
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3048
    invoke-static {v4, v7, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3053
    goto/16 :goto_3

    .line 3040
    :pswitch_33
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3041
    nop

    .line 3043
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3044
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    .line 3041
    invoke-interface {p2, v6, v4, v7}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3035
    :pswitch_34
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3036
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 3030
    :pswitch_35
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3031
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 3025
    :pswitch_36
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3026
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 3020
    :pswitch_37
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3021
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 3015
    :pswitch_38
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3016
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 3010
    :pswitch_39
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3011
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 3004
    :pswitch_3a
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3005
    nop

    .line 3006
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 3005
    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 2998
    :pswitch_3b
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2999
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3000
    .restart local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 3001
    .end local v4    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 2993
    :pswitch_3c
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2994
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v6, v4, p2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 2988
    :pswitch_3d
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2989
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 2983
    :pswitch_3e
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2984
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_3

    .line 2978
    :pswitch_3f
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2979
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_3

    .line 2973
    :pswitch_40
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2974
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_3

    .line 2968
    :pswitch_41
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2969
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_3

    .line 2963
    :pswitch_42
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2964
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_3

    .line 2958
    :pswitch_43
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2959
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_3

    .line 2953
    :pswitch_44
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2954
    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    .line 2941
    .end local v5    # "typeAndOffset":I
    .end local v6    # "number":I
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    .line 3375
    .end local v3    # "pos":I
    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 3376
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v3, p2, v1}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3377
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_5
    move-object v3, v4

    :goto_5
    move-object v1, v3

    goto :goto_4

    .line 3379
    :cond_6
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v3, p1, p2}, Lcom/google/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 3380
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 10
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3384
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 3386
    const/4 v0, 0x0

    .line 3387
    .local v0, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    const/4 v1, 0x0

    .line 3388
    .local v1, "nextExtension":Ljava/util/Map$Entry;
    iget-boolean v2, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_0

    .line 3389
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v2

    .line 3390
    .local v2, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    invoke-virtual {v2}, Lcom/google/protobuf/FieldSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3391
    invoke-virtual {v2}, Lcom/google/protobuf/FieldSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3392
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/Map$Entry;

    .line 3396
    .end local v2    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x3

    .local v2, "pos":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_4

    .line 3397
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4

    .line 3398
    .local v4, "typeAndOffset":I
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3401
    .local v5, "number":I
    :goto_1
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v6, v1}, Lcom/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v6

    if-le v6, v5, :cond_2

    .line 3402
    iget-object v6, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v6, p2, v1}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3403
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v6, v3

    :goto_2
    move-object v1, v6

    goto :goto_1

    .line 3406
    :cond_2
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 3817
    :pswitch_0
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3818
    nop

    .line 3820
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3821
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v6

    .line 3818
    invoke-interface {p2, v5, v3, v6}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3812
    :pswitch_1
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3813
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 3807
    :pswitch_2
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3808
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 3802
    :pswitch_3
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3803
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 3797
    :pswitch_4
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3798
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 3792
    :pswitch_5
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3793
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 3787
    :pswitch_6
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3788
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 3781
    :pswitch_7
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3782
    nop

    .line 3783
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 3782
    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 3775
    :pswitch_8
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3776
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3777
    .local v3, "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 3778
    .end local v3    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 3770
    :pswitch_9
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3771
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v3, p2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 3765
    :pswitch_a
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3766
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 3760
    :pswitch_b
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3761
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_3

    .line 3755
    :pswitch_c
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3756
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_3

    .line 3750
    :pswitch_d
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3751
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_3

    .line 3745
    :pswitch_e
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3746
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_3

    .line 3740
    :pswitch_f
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3741
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_3

    .line 3735
    :pswitch_10
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3736
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_3

    .line 3730
    :pswitch_11
    invoke-direct {p0, p1, v5, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3731
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_3

    .line 3727
    :pswitch_12
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p2, v5, v3, v2}, Lcom/google/protobuf/MessageSchema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V

    .line 3728
    goto/16 :goto_3

    .line 3719
    :pswitch_13
    nop

    .line 3720
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3721
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3723
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    .line 3719
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    .line 3724
    goto/16 :goto_3

    .line 3712
    :pswitch_14
    nop

    .line 3713
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3714
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3712
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3717
    goto/16 :goto_3

    .line 3705
    :pswitch_15
    nop

    .line 3706
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3707
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3705
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3710
    goto/16 :goto_3

    .line 3698
    :pswitch_16
    nop

    .line 3699
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3700
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3698
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3703
    goto/16 :goto_3

    .line 3691
    :pswitch_17
    nop

    .line 3692
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3693
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3691
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3696
    goto/16 :goto_3

    .line 3684
    :pswitch_18
    nop

    .line 3685
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3686
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3684
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3689
    goto/16 :goto_3

    .line 3677
    :pswitch_19
    nop

    .line 3678
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3679
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3677
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3682
    goto/16 :goto_3

    .line 3670
    :pswitch_1a
    nop

    .line 3671
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3672
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3670
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3675
    goto/16 :goto_3

    .line 3662
    :pswitch_1b
    nop

    .line 3663
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3664
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3662
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3668
    goto/16 :goto_3

    .line 3655
    :pswitch_1c
    nop

    .line 3656
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3657
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3655
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3660
    goto/16 :goto_3

    .line 3648
    :pswitch_1d
    nop

    .line 3649
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3650
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3648
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3653
    goto/16 :goto_3

    .line 3641
    :pswitch_1e
    nop

    .line 3642
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3643
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3641
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3646
    goto/16 :goto_3

    .line 3634
    :pswitch_1f
    nop

    .line 3635
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3636
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3634
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3639
    goto/16 :goto_3

    .line 3627
    :pswitch_20
    nop

    .line 3628
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3629
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3627
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3632
    goto/16 :goto_3

    .line 3620
    :pswitch_21
    nop

    .line 3621
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3622
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v7

    invoke-static {p1, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3620
    invoke-static {v3, v7, p2, v6}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3625
    goto/16 :goto_3

    .line 3613
    :pswitch_22
    nop

    .line 3614
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3615
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3613
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3618
    goto/16 :goto_3

    .line 3606
    :pswitch_23
    nop

    .line 3607
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3608
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3606
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3611
    goto/16 :goto_3

    .line 3599
    :pswitch_24
    nop

    .line 3600
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3601
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3599
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3604
    goto/16 :goto_3

    .line 3592
    :pswitch_25
    nop

    .line 3593
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3594
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3592
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3597
    goto/16 :goto_3

    .line 3585
    :pswitch_26
    nop

    .line 3586
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3587
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3585
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3590
    goto/16 :goto_3

    .line 3578
    :pswitch_27
    nop

    .line 3579
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3580
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3578
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3583
    goto/16 :goto_3

    .line 3572
    :pswitch_28
    nop

    .line 3573
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3574
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3572
    invoke-static {v3, v6, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 3576
    goto/16 :goto_3

    .line 3565
    :pswitch_29
    nop

    .line 3566
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3567
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3569
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v7

    .line 3565
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    .line 3570
    goto/16 :goto_3

    .line 3559
    :pswitch_2a
    nop

    .line 3560
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3561
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3559
    invoke-static {v3, v6, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    .line 3563
    goto/16 :goto_3

    .line 3552
    :pswitch_2b
    nop

    .line 3553
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3554
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3552
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3557
    goto/16 :goto_3

    .line 3545
    :pswitch_2c
    nop

    .line 3546
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3547
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3545
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3550
    goto/16 :goto_3

    .line 3538
    :pswitch_2d
    nop

    .line 3539
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3540
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3538
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3543
    goto/16 :goto_3

    .line 3531
    :pswitch_2e
    nop

    .line 3532
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3533
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3531
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3536
    goto/16 :goto_3

    .line 3524
    :pswitch_2f
    nop

    .line 3525
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3526
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3524
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3529
    goto/16 :goto_3

    .line 3517
    :pswitch_30
    nop

    .line 3518
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3519
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3517
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3522
    goto/16 :goto_3

    .line 3510
    :pswitch_31
    nop

    .line 3511
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3512
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3510
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3515
    goto/16 :goto_3

    .line 3503
    :pswitch_32
    nop

    .line 3504
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 3505
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3503
    invoke-static {v3, v6, p2, v7}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    .line 3508
    goto/16 :goto_3

    .line 3495
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3496
    nop

    .line 3498
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3499
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v6

    .line 3496
    invoke-interface {p2, v5, v3, v6}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_3

    .line 3490
    :pswitch_34
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3491
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_3

    .line 3485
    :pswitch_35
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3486
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_3

    .line 3480
    :pswitch_36
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3481
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_3

    .line 3475
    :pswitch_37
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3476
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_3

    .line 3470
    :pswitch_38
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3471
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_3

    .line 3465
    :pswitch_39
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3466
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_3

    .line 3459
    :pswitch_3a
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3460
    nop

    .line 3461
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 3460
    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    .line 3453
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3454
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3455
    .restart local v3    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v3, v6}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    .line 3456
    .end local v3    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 3448
    :pswitch_3c
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3449
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v3, p2}, Lcom/google/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_3

    .line 3443
    :pswitch_3d
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3444
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_3

    .line 3438
    :pswitch_3e
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3439
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_3

    .line 3433
    :pswitch_3f
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3434
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_3

    .line 3428
    :pswitch_40
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3429
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_3

    .line 3423
    :pswitch_41
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3424
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_3

    .line 3418
    :pswitch_42
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3419
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_3

    .line 3413
    :pswitch_43
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3414
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_3

    .line 3408
    :pswitch_44
    invoke-direct {p0, p1, v2}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3409
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    .line 3396
    .end local v4    # "typeAndOffset":I
    .end local v5    # "number":I
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, -0x3

    goto/16 :goto_0

    .line 3828
    .end local v2    # "pos":I
    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 3829
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v2, p2, v1}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3830
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    move-object v1, v2

    goto :goto_4

    .line 3832
    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;I)V
    .locals 2
    .param p1, "writer"    # Lcom/google/protobuf/Writer;
    .param p2, "number"    # I
    .param p3, "mapField"    # Ljava/lang/Object;
    .param p4, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3837
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    if-eqz p3, :cond_0

    .line 3838
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 3840
    invoke-direct {p0, p4}, Lcom/google/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 3841
    invoke-interface {v1, p3}, Lcom/google/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 3838
    invoke-interface {p1, p2, v0, v1}, Lcom/google/protobuf/Writer;->writeMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 3843
    :cond_0
    return-void
.end method

.method private writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5667
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5668
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, p1, v0}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 5670
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-interface {p3, p1, v0}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5672
    :goto_0
    return-void
.end method

.method private writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3847
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "schema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/google/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 3848
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 796
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    .line 797
    .local v0, "bufferLength":I
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 798
    invoke-direct {p0, p1, p2, v1}, Lcom/google/protobuf/MessageSchema;->equals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 799
    return v2

    .line 797
    :cond_0
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 803
    .end local v1    # "pos":I
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 804
    .local v1, "messageUnknown":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v3, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 805
    .local v3, "otherUnknown":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 806
    return v2

    .line 809
    :cond_2
    iget-boolean v2, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_3

    .line 810
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v2

    .line 811
    .local v2, "messageExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    iget-object v4, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v4, p2}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v4

    .line 812
    .local v4, "otherExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    invoke-virtual {v2, v4}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 814
    .end local v2    # "messageExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    .end local v4    # "otherExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method getSchemaSize()I
    .locals 1

    .line 5928
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1422
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/MessageSchema;->getSerializedSizeProto3(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/MessageSchema;->getSerializedSizeProto2(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 949
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 950
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    .line 951
    .local v1, "bufferLength":I
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 952
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3

    .line 953
    .local v3, "typeAndOffset":I
    invoke-direct {p0, v2}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 955
    .local v4, "entryNumber":I
    invoke-static {v3}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    .line 957
    .local v5, "offset":J
    invoke-static {v3}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_1

    .line 1157
    :pswitch_0
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1158
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 1159
    .local v7, "submessage":Ljava/lang/Object;
    mul-int/lit8 v8, v0, 0x35

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    .line 1160
    .end local v0    # "hashCode":I
    .end local v7    # "submessage":Ljava/lang/Object;
    .local v8, "hashCode":I
    move v0, v8

    goto/16 :goto_1

    .line 1152
    .end local v8    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1153
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    goto/16 :goto_1

    .line 1147
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_2
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1148
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1142
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_3
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1143
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1137
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_4
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1138
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1132
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_5
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1133
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1127
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_6
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1128
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1122
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_7
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1123
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1116
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_8
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1117
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 1118
    .local v7, "submessage":Ljava/lang/Object;
    mul-int/lit8 v8, v0, 0x35

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    .line 1119
    .end local v0    # "hashCode":I
    .end local v7    # "submessage":Ljava/lang/Object;
    .restart local v8    # "hashCode":I
    move v0, v8

    goto/16 :goto_1

    .line 1110
    .end local v8    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_9
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1111
    mul-int/lit8 v7, v0, 0x35

    .line 1112
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    goto/16 :goto_1

    .line 1105
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_a
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1106
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1100
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_b
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1101
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1095
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_c
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1096
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1090
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_d
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1091
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1085
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_e
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1086
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1080
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_f
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1081
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1075
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_10
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1076
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1068
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_11
    invoke-direct {p0, p1, v4, v2}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1069
    mul-int/lit8 v7, v0, 0x35

    .line 1071
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    move v0, v7

    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    goto/16 :goto_1

    .line 1065
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_12
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 1066
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 1062
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_13
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 1063
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 1022
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_14
    const/16 v7, 0x25

    .line 1023
    .local v7, "protoHash":I
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1024
    .local v8, "submessage":Ljava/lang/Object;
    if-eqz v8, :cond_0

    .line 1025
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 1027
    :cond_0
    mul-int/lit8 v9, v0, 0x35

    add-int/2addr v9, v7

    .line 1028
    .end local v0    # "hashCode":I
    .local v9, "hashCode":I
    move v0, v9

    goto/16 :goto_1

    .line 1017
    .end local v7    # "protoHash":I
    .end local v8    # "submessage":Ljava/lang/Object;
    .end local v9    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_15
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1018
    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 1014
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_16
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1015
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 1011
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_17
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1012
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 1008
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_18
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1009
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 1005
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_19
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1006
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 1002
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1a
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 1003
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 999
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1b
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 1000
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 990
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1c
    const/16 v7, 0x25

    .line 991
    .local v7, "protoHash":I
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 992
    .restart local v8    # "submessage":Ljava/lang/Object;
    if-eqz v8, :cond_1

    .line 993
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 995
    :cond_1
    mul-int/lit8 v9, v0, 0x35

    add-int/2addr v9, v7

    .line 996
    .end local v0    # "hashCode":I
    .restart local v9    # "hashCode":I
    move v0, v9

    goto/16 :goto_1

    .line 986
    .end local v7    # "protoHash":I
    .end local v8    # "submessage":Ljava/lang/Object;
    .end local v9    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1d
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    add-int/2addr v7, v8

    .line 987
    .end local v0    # "hashCode":I
    .local v7, "hashCode":I
    move v0, v7

    goto/16 :goto_1

    .line 983
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1e
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v8

    add-int/2addr v7, v8

    .line 984
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 980
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_1f
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 981
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 977
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_20
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 978
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 974
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_21
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v8

    add-int/2addr v7, v8

    .line 975
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 971
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_22
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 972
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 968
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_23
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 969
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 965
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_24
    mul-int/lit8 v7, v0, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    add-int/2addr v7, v8

    .line 966
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    goto :goto_1

    .line 959
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :pswitch_25
    mul-int/lit8 v7, v0, 0x35

    .line 962
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    .line 961
    invoke-static {v8, v9}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v8

    add-int/2addr v7, v8

    .line 963
    .end local v0    # "hashCode":I
    .restart local v7    # "hashCode":I
    move v0, v7

    .line 951
    .end local v3    # "typeAndOffset":I
    .end local v4    # "entryNumber":I
    .end local v5    # "offset":J
    .end local v7    # "hashCode":I
    .restart local v0    # "hashCode":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 1168
    .end local v2    # "pos":I
    :cond_3
    mul-int/lit8 v2, v0, 0x35

    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 1170
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_4

    .line 1171
    mul-int/lit8 v0, v2, 0x35

    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v3, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/FieldSet;->hashCode()I

    move-result v3

    add-int v2, v0, v3

    .line 1174
    :cond_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 5553
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v0, 0xfffff

    .line 5554
    .local v0, "currentPresenceFieldOffset":I
    const/4 v1, 0x0

    .line 5555
    .local v1, "currentPresenceField":I
    const/4 v2, 0x0

    move v8, v2

    .local v8, "i":I
    :goto_0
    iget v2, v6, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-ge v8, v2, :cond_4

    .line 5556
    iget-object v2, v6, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v10, v2, v8

    .line 5557
    .local v10, "pos":I
    invoke-direct {v6, v10}, Lcom/google/protobuf/MessageSchema;->numberAt(I)I

    move-result v11

    .line 5558
    .local v11, "number":I
    invoke-direct {v6, v10}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v12

    .line 5560
    .local v12, "typeAndOffset":I
    iget-object v2, v6, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v4, v10, 0x2

    aget v13, v2, v4

    .line 5561
    .local v13, "presenceMaskAndOffset":I
    const v2, 0xfffff

    and-int v14, v13, v2

    .line 5562
    .local v14, "presenceFieldOffset":I
    ushr-int/lit8 v4, v13, 0x14

    shl-int v15, v3, v4

    .line 5563
    .local v15, "presenceMask":I
    if-eq v14, v0, :cond_1

    .line 5564
    move v0, v14

    .line 5565
    if-eq v0, v2, :cond_0

    .line 5566
    sget-object v2, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v3, v14

    invoke-virtual {v2, v7, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_1

    .line 5565
    :cond_0
    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_1

    .line 5563
    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    .line 5570
    .end local v0    # "currentPresenceFieldOffset":I
    .end local v1    # "currentPresenceField":I
    .local v16, "currentPresenceFieldOffset":I
    .local v17, "currentPresenceField":I
    :goto_1
    invoke-static {v12}, Lcom/google/protobuf/MessageSchema;->isRequired(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5571
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5573
    return v9

    .line 5580
    :cond_2
    invoke-static {v12}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 5597
    :sswitch_0
    invoke-direct {v6, v7, v11, v10}, Lcom/google/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5598
    invoke-direct {v6, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-static {v7, v12, v0}, Lcom/google/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/google/protobuf/Schema;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5599
    return v9

    .line 5603
    :sswitch_1
    invoke-direct {v6, v7, v12, v10}, Lcom/google/protobuf/MessageSchema;->isMapInitialized(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5604
    return v9

    .line 5591
    :sswitch_2
    invoke-direct {v6, v7, v12, v10}, Lcom/google/protobuf/MessageSchema;->isListInitialized(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5592
    return v9

    .line 5583
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5585
    invoke-direct {v6, v10}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-static {v7, v12, v0}, Lcom/google/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/google/protobuf/Schema;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5586
    return v9

    .line 5555
    .end local v10    # "pos":I
    .end local v11    # "number":I
    .end local v12    # "typeAndOffset":I
    .end local v13    # "presenceMaskAndOffset":I
    .end local v14    # "presenceFieldOffset":I
    .end local v15    # "presenceMask":I
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    .line 5612
    .end local v8    # "i":I
    .end local v16    # "currentPresenceFieldOffset":I
    .end local v17    # "currentPresenceField":I
    .restart local v0    # "currentPresenceFieldOffset":I
    .restart local v1    # "currentPresenceField":I
    :cond_4
    iget-boolean v2, v6, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_5

    .line 5613
    iget-object v2, v6, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v2, v7}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5614
    return v9

    .line 5618
    :cond_5
    return v3

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0x11 -> :sswitch_3
        0x1b -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_1
        0x3c -> :sswitch_0
        0x44 -> :sswitch_0
    .end sparse-switch
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5451
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_1

    .line 5452
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 5453
    .local v1, "offset":J
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 5454
    .local v3, "mapField":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 5455
    goto :goto_1

    .line 5457
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/MessageSchema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v4, v3}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5451
    .end local v1    # "offset":J
    .end local v3    # "mapField":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5459
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    array-length v0, v0

    .line 5460
    .local v0, "length":I
    iget v1, p0, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 5461
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/protobuf/ListFieldSchema;->makeImmutableListAt(Ljava/lang/Object;J)V

    .line 5460
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5463
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 5464
    iget-boolean v1, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v1, :cond_3

    .line 5465
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 5467
    :cond_3
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p2, "reader"    # Lcom/google/protobuf/Reader;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3853
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    if-eqz p3, :cond_0

    .line 3856
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3857
    return-void

    .line 3854
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1179
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_2

    .line 1182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1184
    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/MessageSchema;->mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1182
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 1187
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1189
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeExtensions(Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1192
    :cond_1
    return-void

    .line 1180
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)V
    .locals 8
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5441
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_0

    .line 5442
    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/MessageSchema;->parseProto3Message(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    goto :goto_0

    .line 5444
    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    .line 5446
    :goto_0
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 791
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->newInstanceSchema:Lcom/google/protobuf/NewInstanceSchema;

    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/google/protobuf/NewInstanceSchema;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method parseProto2Message(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 33
    .param p2, "data"    # [B
    .param p3, "position"    # I
    .param p4, "limit"    # I
    .param p5, "endGroup"    # I
    .param p6, "registers"    # Lcom/google/protobuf/ArrayDecoders$Registers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4881
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4882
    .local v10, "unsafe":Lsun/misc/Unsafe;
    const v0, 0xfffff

    .line 4883
    .local v0, "currentPresenceFieldOffset":I
    const/4 v1, 0x0

    .line 4884
    .local v1, "currentPresenceField":I
    const/4 v2, 0x0

    .line 4885
    .local v2, "tag":I
    const/4 v3, -0x1

    .line 4886
    .local v3, "oldNumber":I
    const/4 v4, 0x0

    move v8, v0

    move v7, v1

    move/from16 v0, p3

    .line 4887
    .end local v1    # "currentPresenceField":I
    .end local p3    # "position":I
    .local v0, "position":I
    .local v4, "pos":I
    .local v7, "currentPresenceField":I
    .local v8, "currentPresenceFieldOffset":I
    :goto_0
    if-ge v0, v13, :cond_24

    .line 4888
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "position":I
    .local v1, "position":I
    aget-byte v0, v12, v0

    .line 4889
    .end local v2    # "tag":I
    .local v0, "tag":I
    if-gez v0, :cond_0

    .line 4890
    invoke-static {v0, v12, v1, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 4891
    iget v0, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    move v2, v0

    move v5, v1

    goto :goto_1

    .line 4889
    :cond_0
    move v2, v0

    move v5, v1

    .line 4893
    .end local v0    # "tag":I
    .end local v1    # "position":I
    .restart local v2    # "tag":I
    .local v5, "position":I
    :goto_1
    ushr-int/lit8 v1, v2, 0x3

    .line 4894
    .local v1, "number":I
    and-int/lit8 v0, v2, 0x7

    .line 4895
    .local v0, "wireType":I
    if-le v1, v3, :cond_1

    .line 4896
    div-int/lit8 v6, v4, 0x3

    invoke-direct {v15, v1, v6}, Lcom/google/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v4

    move v6, v4

    goto :goto_2

    .line 4898
    :cond_1
    invoke-direct {v15, v1}, Lcom/google/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v4

    move v6, v4

    .line 4900
    .end local v4    # "pos":I
    .local v6, "pos":I
    :goto_2
    move/from16 v16, v1

    .line 4901
    .end local v3    # "oldNumber":I
    .local v16, "oldNumber":I
    const/4 v3, -0x1

    if-ne v6, v3, :cond_2

    .line 4903
    const/4 v3, 0x0

    move v15, v0

    move/from16 v24, v1

    move/from16 p3, v2

    move/from16 v21, v3

    move v13, v5

    move/from16 v17, v7

    move-object/from16 v30, v10

    .end local v6    # "pos":I
    .local v3, "pos":I
    goto/16 :goto_e

    .line 4905
    .end local v3    # "pos":I
    .restart local v6    # "pos":I
    :cond_2
    iget-object v3, v15, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v4, v6, 0x1

    aget v4, v3, v4

    .line 4906
    .local v4, "typeAndOffset":I
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->type(I)I

    move-result v3

    .line 4907
    .local v3, "fieldType":I
    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->offset(I)J

    move-result-wide v11

    .line 4908
    .local v11, "fieldOffset":J
    move/from16 v17, v2

    .end local v2    # "tag":I
    .local v17, "tag":I
    const/16 v2, 0x11

    move/from16 v18, v4

    .end local v4    # "typeAndOffset":I
    .local v18, "typeAndOffset":I
    if-gt v3, v2, :cond_16

    .line 4910
    iget-object v2, v15, Lcom/google/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v19, v6, 0x2

    aget v19, v2, v19

    .line 4911
    .local v19, "presenceMaskAndOffset":I
    ushr-int/lit8 v2, v19, 0x14

    const/4 v4, 0x1

    shl-int v21, v4, v2

    .line 4912
    .local v21, "presenceMask":I
    const v2, 0xfffff

    and-int v13, v19, v2

    .line 4915
    .local v13, "presenceFieldOffset":I
    if-eq v13, v8, :cond_4

    .line 4916
    if-eq v8, v2, :cond_3

    .line 4917
    move/from16 p3, v5

    .end local v5    # "position":I
    .restart local p3    # "position":I
    int-to-long v4, v8

    invoke-virtual {v10, v14, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    .line 4916
    .end local p3    # "position":I
    .restart local v5    # "position":I
    :cond_3
    move/from16 p3, v5

    .line 4919
    .end local v5    # "position":I
    .restart local p3    # "position":I
    :goto_3
    move v4, v13

    .line 4920
    .end local v8    # "currentPresenceFieldOffset":I
    .local v4, "currentPresenceFieldOffset":I
    move v5, v3

    .end local v3    # "fieldType":I
    .local v5, "fieldType":I
    int-to-long v2, v13

    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v7, v2

    move v8, v4

    .end local v7    # "currentPresenceField":I
    .local v2, "currentPresenceField":I
    goto :goto_4

    .line 4915
    .end local v2    # "currentPresenceField":I
    .end local v4    # "currentPresenceFieldOffset":I
    .end local p3    # "position":I
    .restart local v3    # "fieldType":I
    .local v5, "position":I
    .restart local v7    # "currentPresenceField":I
    .restart local v8    # "currentPresenceFieldOffset":I
    :cond_4
    move/from16 p3, v5

    move v5, v3

    .line 4922
    .end local v3    # "fieldType":I
    .local v5, "fieldType":I
    .restart local p3    # "position":I
    :goto_4
    const/4 v2, 0x5

    packed-switch v5, :pswitch_data_0

    move/from16 v24, v1

    move v15, v6

    move/from16 v25, v8

    move-object v6, v10

    move-wide v10, v11

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v5

    move/from16 v32, v13

    move/from16 v13, p3

    move/from16 p3, v17

    move/from16 v17, v32

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v5    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .local v13, "position":I
    .local v15, "pos":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .local v24, "number":I
    .local v25, "currentPresenceFieldOffset":I
    .local v26, "typeAndOffset":I
    .local p3, "tag":I
    goto/16 :goto_a

    .line 5056
    .end local v15    # "pos":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .restart local v0    # "wireType":I
    .restart local v1    # "number":I
    .restart local v5    # "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 5057
    shl-int/lit8 v2, v1, 0x3

    or-int/lit8 v20, v2, 0x4

    .line 5058
    .local v20, "endTag":I
    nop

    .line 5060
    invoke-direct {v15, v6}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v2

    .line 5059
    move v4, v0

    .end local v0    # "wireType":I
    .local v4, "wireType":I
    move-object v0, v2

    move/from16 v24, v1

    .end local v1    # "number":I
    .restart local v24    # "number":I
    move-object/from16 v1, p2

    move/from16 v3, v17

    .end local v17    # "tag":I
    .local v3, "tag":I
    move/from16 v2, p3

    move/from16 v17, v13

    move v13, v5

    move v5, v3

    .end local v3    # "tag":I
    .local v5, "tag":I
    .local v13, "fieldType":I
    .local v17, "presenceFieldOffset":I
    move/from16 v3, p4

    move/from16 v25, v8

    move v8, v4

    move/from16 v32, v18

    move/from16 v18, v13

    move/from16 v13, v32

    .end local v4    # "wireType":I
    .local v8, "wireType":I
    .local v13, "typeAndOffset":I
    .local v18, "fieldType":I
    .restart local v25    # "currentPresenceFieldOffset":I
    move/from16 v4, v20

    move/from16 v26, v13

    move/from16 v13, p3

    move/from16 p3, v5

    .end local v5    # "tag":I
    .local v13, "position":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "tag":I
    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->decodeGroupField(Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5061
    .end local v13    # "position":I
    .local v0, "position":I
    and-int v1, v7, v21

    if-nez v1, :cond_5

    .line 5062
    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 5064
    :cond_5
    nop

    .line 5068
    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 5067
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5064
    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5071
    :goto_5
    or-int v7, v7, v21

    .line 5072
    move-object/from16 v12, p2

    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move v4, v6

    move/from16 v3, v16

    move/from16 v8, v25

    goto/16 :goto_0

    .line 5056
    .end local v20    # "endTag":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .local v5, "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .local p3, "position":I
    :cond_6
    move/from16 v24, v1

    move/from16 v25, v8

    move/from16 v26, v18

    move v8, v0

    move/from16 v18, v5

    move/from16 v32, v13

    move/from16 v13, p3

    move/from16 p3, v17

    move/from16 v17, v32

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v5    # "fieldType":I
    .local v8, "wireType":I
    .local v13, "position":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "tag":I
    move v15, v6

    move-object v6, v10

    move-wide v10, v11

    move-object/from16 v12, p2

    goto/16 :goto_a

    .line 5046
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .restart local v0    # "wireType":I
    .restart local v1    # "number":I
    .restart local v5    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_1
    move/from16 v24, v1

    move/from16 v25, v8

    move/from16 v26, v18

    move v8, v0

    move/from16 v18, v5

    move/from16 v32, v13

    move/from16 v13, p3

    move/from16 p3, v17

    move/from16 v17, v32

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v5    # "fieldType":I
    .local v8, "wireType":I
    .local v13, "position":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "tag":I
    if-nez v8, :cond_7

    .line 5047
    move-wide v4, v11

    move-object/from16 v12, p2

    .end local v11    # "fieldOffset":J
    .local v4, "fieldOffset":J
    invoke-static {v12, v13, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v11

    .line 5048
    .end local v13    # "position":I
    .local v11, "position":I
    iget-wide v0, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    .line 5049
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v22

    .line 5048
    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v4

    move-object/from16 v27, v10

    move v13, v11

    move-wide v10, v4

    .end local v4    # "fieldOffset":J
    .end local v11    # "position":I
    .local v10, "fieldOffset":J
    .restart local v13    # "position":I
    .local v27, "unsafe":Lsun/misc/Unsafe;
    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 5051
    or-int v7, v7, v21

    .line 5052
    move/from16 v2, p3

    move/from16 v11, p5

    move v4, v6

    move v0, v13

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v10, v27

    move/from16 v13, p4

    goto/16 :goto_0

    .line 5046
    .end local v27    # "unsafe":Lsun/misc/Unsafe;
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .local v11, "fieldOffset":J
    :cond_7
    move-object/from16 v27, v10

    move-wide v10, v11

    move-object/from16 v12, p2

    .end local v11    # "fieldOffset":J
    .local v10, "fieldOffset":J
    .restart local v27    # "unsafe":Lsun/misc/Unsafe;
    move v15, v6

    move-object/from16 v6, v27

    goto/16 :goto_a

    .line 5037
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .end local v27    # "unsafe":Lsun/misc/Unsafe;
    .restart local v0    # "wireType":I
    .restart local v1    # "number":I
    .restart local v5    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_2
    move/from16 v24, v1

    move/from16 v25, v8

    move-object/from16 v27, v10

    move-wide v10, v11

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v5

    move/from16 v32, v13

    move/from16 v13, p3

    move/from16 p3, v17

    move/from16 v17, v32

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v5    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .local v13, "position":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    .restart local v27    # "unsafe":Lsun/misc/Unsafe;
    .local p3, "tag":I
    if-nez v8, :cond_8

    .line 5038
    invoke-static {v12, v13, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5039
    .end local v13    # "position":I
    .local v0, "position":I
    iget v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5040
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    .line 5039
    move-object/from16 v4, v27

    .end local v27    # "unsafe":Lsun/misc/Unsafe;
    .local v4, "unsafe":Lsun/misc/Unsafe;
    invoke-virtual {v4, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5041
    or-int v7, v7, v21

    .line 5042
    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v4

    move v4, v6

    move/from16 v3, v16

    move/from16 v8, v25

    goto/16 :goto_0

    .line 5037
    .end local v0    # "position":I
    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .restart local v13    # "position":I
    .restart local v27    # "unsafe":Lsun/misc/Unsafe;
    :cond_8
    move-object/from16 v4, v27

    .end local v27    # "unsafe":Lsun/misc/Unsafe;
    .restart local v4    # "unsafe":Lsun/misc/Unsafe;
    move v15, v6

    move-object v6, v4

    goto/16 :goto_a

    .line 5022
    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v5    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_3
    move/from16 v24, v1

    move/from16 v25, v8

    move-object v4, v10

    move-wide v10, v11

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v5

    move/from16 v32, v13

    move/from16 v13, p3

    move/from16 p3, v17

    move/from16 v17, v32

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v5    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .restart local v4    # "unsafe":Lsun/misc/Unsafe;
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .local v13, "position":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "tag":I
    if-nez v8, :cond_b

    .line 5023
    invoke-static {v12, v13, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5024
    .end local v13    # "position":I
    .local v0, "position":I
    iget v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5025
    .local v1, "enumValue":I
    invoke-direct {v15, v6}, Lcom/google/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    .line 5026
    .local v2, "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    if-eqz v2, :cond_a

    invoke-interface {v2, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v27, v6

    move/from16 v6, p3

    goto :goto_6

    .line 5031
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v3

    move/from16 v27, v6

    .end local v6    # "pos":I
    .local v27, "pos":I
    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v6, p3

    .end local p3    # "tag":I
    .local v6, "tag":I
    invoke-virtual {v3, v6, v5}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 5033
    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v4

    move v2, v6

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v4, v27

    goto/16 :goto_0

    .line 5026
    .end local v27    # "pos":I
    .local v6, "pos":I
    .restart local p3    # "tag":I
    :cond_a
    move/from16 v27, v6

    move/from16 v6, p3

    .line 5027
    .end local p3    # "tag":I
    .local v6, "tag":I
    .restart local v27    # "pos":I
    :goto_6
    invoke-virtual {v4, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5028
    or-int v7, v7, v21

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v4

    move v2, v6

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v4, v27

    goto/16 :goto_0

    .line 5022
    .end local v0    # "position":I
    .end local v1    # "enumValue":I
    .end local v2    # "enumVerifier":Lcom/google/protobuf/Internal$EnumVerifier;
    .end local v27    # "pos":I
    .local v6, "pos":I
    .restart local v13    # "position":I
    .restart local p3    # "tag":I
    :cond_b
    move/from16 v27, v6

    move/from16 v6, p3

    .end local p3    # "tag":I
    .local v6, "tag":I
    .restart local v27    # "pos":I
    move/from16 v15, v27

    move-object v6, v4

    goto/16 :goto_a

    .line 5014
    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .end local v27    # "pos":I
    .local v0, "wireType":I
    .local v1, "number":I
    .restart local v5    # "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_4
    move/from16 v24, v1

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v4, v10

    move-wide v10, v11

    move/from16 v6, v17

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v5

    move/from16 v17, v13

    move/from16 v13, p3

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v5    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .restart local v4    # "unsafe":Lsun/misc/Unsafe;
    .local v6, "tag":I
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .local v13, "position":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    .restart local v27    # "pos":I
    const/4 v0, 0x2

    if-ne v8, v0, :cond_c

    .line 5015
    invoke-static {v12, v13, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeBytes([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5016
    .end local v13    # "position":I
    .local v0, "position":I
    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v4, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5017
    or-int v7, v7, v21

    .line 5018
    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v4

    move v2, v6

    move/from16 v3, v16

    move/from16 v8, v25

    move/from16 v4, v27

    goto/16 :goto_0

    .line 5014
    .end local v0    # "position":I
    .restart local v13    # "position":I
    :cond_c
    move/from16 p3, v6

    move/from16 v15, v27

    move-object v6, v4

    goto/16 :goto_a

    .line 4996
    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .end local v27    # "pos":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v5    # "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_5
    move/from16 v24, v1

    move/from16 v27, v6

    move/from16 v25, v8

    move-object v4, v10

    move-wide v10, v11

    move/from16 v6, v17

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v5

    move/from16 v17, v13

    move/from16 v13, p3

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v5    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .restart local v4    # "unsafe":Lsun/misc/Unsafe;
    .local v6, "tag":I
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .local v13, "position":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    .restart local v27    # "pos":I
    const/4 v0, 0x2

    if-ne v8, v0, :cond_e

    .line 4997
    nop

    .line 4999
    move/from16 v5, v27

    .end local v27    # "pos":I
    .local v5, "pos":I
    invoke-direct {v15, v5}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 4998
    move/from16 v3, p4

    invoke-static {v0, v12, v13, v3, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageField(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5000
    .end local v13    # "position":I
    .local v0, "position":I
    and-int v1, v7, v21

    if-nez v1, :cond_d

    .line 5001
    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v4, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 5003
    :cond_d
    nop

    .line 5007
    invoke-virtual {v4, v14, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 5006
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5003
    invoke-virtual {v4, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 5009
    :goto_7
    or-int v7, v7, v21

    .line 5010
    move/from16 v11, p5

    move v13, v3

    move-object v10, v4

    move v4, v5

    move v2, v6

    move/from16 v3, v16

    move/from16 v8, v25

    goto/16 :goto_0

    .line 4996
    .end local v0    # "position":I
    .end local v5    # "pos":I
    .restart local v13    # "position":I
    .restart local v27    # "pos":I
    :cond_e
    move/from16 v3, p4

    move/from16 v5, v27

    .end local v27    # "pos":I
    .restart local v5    # "pos":I
    move v15, v5

    move/from16 p3, v6

    move-object v6, v4

    goto/16 :goto_a

    .line 4984
    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .local v5, "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_6
    move/from16 v3, p4

    move/from16 v24, v1

    move/from16 v25, v8

    move-object v4, v10

    move-wide v10, v11

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v5

    move v5, v6

    move/from16 v6, v17

    move/from16 v17, v13

    move/from16 v13, p3

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .restart local v4    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "pos":I
    .local v6, "tag":I
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .local v13, "position":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    const/4 v0, 0x2

    if-ne v8, v0, :cond_10

    .line 4985
    const/high16 v0, 0x20000000

    and-int v0, v26, v0

    if-nez v0, :cond_f

    .line 4986
    invoke-static {v12, v13, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeString([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .end local v13    # "position":I
    .local v0, "position":I
    goto :goto_8

    .line 4988
    .end local v0    # "position":I
    .restart local v13    # "position":I
    :cond_f
    invoke-static {v12, v13, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4990
    .end local v13    # "position":I
    .restart local v0    # "position":I
    :goto_8
    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v4, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4991
    or-int v7, v7, v21

    .line 4992
    move/from16 v11, p5

    move v13, v3

    move-object v10, v4

    move v4, v5

    move v2, v6

    move/from16 v3, v16

    move/from16 v8, v25

    goto/16 :goto_0

    .line 4984
    .end local v0    # "position":I
    .restart local v13    # "position":I
    :cond_10
    move v15, v5

    move/from16 p3, v6

    move-object v6, v4

    goto/16 :goto_a

    .line 4976
    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .local v5, "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_7
    move/from16 v3, p4

    move/from16 v24, v1

    move/from16 v25, v8

    move-object v4, v10

    move-wide v10, v11

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v5

    move v5, v6

    move/from16 v6, v17

    move/from16 v17, v13

    move/from16 v13, p3

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .restart local v4    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "pos":I
    .local v6, "tag":I
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .local v13, "position":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    if-nez v8, :cond_12

    .line 4977
    invoke-static {v12, v13, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4978
    .end local v13    # "position":I
    .local v0, "position":I
    iget-wide v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v27, 0x0

    cmp-long v13, v1, v27

    if-eqz v13, :cond_11

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    :goto_9
    invoke-static {v14, v10, v11, v1}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 4979
    or-int v7, v7, v21

    .line 4980
    move/from16 v11, p5

    move v13, v3

    move-object v10, v4

    move v4, v5

    move v2, v6

    move/from16 v3, v16

    move/from16 v8, v25

    goto/16 :goto_0

    .line 4976
    .end local v0    # "position":I
    .restart local v13    # "position":I
    :cond_12
    move v15, v5

    move/from16 p3, v6

    move-object v6, v4

    goto/16 :goto_a

    .line 4968
    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .local v5, "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_8
    move/from16 v3, p4

    move/from16 v24, v1

    move/from16 v25, v8

    move-object v4, v10

    move-wide v10, v11

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v5

    move v5, v6

    move/from16 v6, v17

    move/from16 v17, v13

    move/from16 v13, p3

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .restart local v4    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "pos":I
    .local v6, "tag":I
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .local v13, "position":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    if-ne v8, v2, :cond_13

    .line 4969
    invoke-static {v12, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {v4, v14, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4970
    add-int/lit8 v0, v13, 0x4

    .line 4971
    .end local v13    # "position":I
    .local v0, "position":I
    or-int v7, v7, v21

    .line 4972
    move/from16 v11, p5

    move v13, v3

    move-object v10, v4

    move v4, v5

    move v2, v6

    move/from16 v3, v16

    move/from16 v8, v25

    goto/16 :goto_0

    .line 4968
    .end local v0    # "position":I
    .restart local v13    # "position":I
    :cond_13
    move v15, v5

    move/from16 p3, v6

    move-object v6, v4

    goto/16 :goto_a

    .line 4959
    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .local v5, "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .restart local p3    # "position":I
    :pswitch_9
    move/from16 v3, p4

    move/from16 v24, v1

    move/from16 v25, v8

    move-object v4, v10

    move-wide v10, v11

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v5

    move v5, v6

    move/from16 v6, v17

    move/from16 v17, v13

    move/from16 v13, p3

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v11    # "fieldOffset":J
    .end local p3    # "position":I
    .restart local v4    # "unsafe":Lsun/misc/Unsafe;
    .local v5, "pos":I
    .local v6, "tag":I
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .local v13, "position":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    const/4 v0, 0x1

    if-ne v8, v0, :cond_14

    .line 4960
    invoke-static {v12, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v22

    move-object v0, v4

    move-object/from16 v1, p1

    move-wide v2, v10

    move v15, v5

    move/from16 p3, v6

    move-object v6, v4

    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .end local v5    # "pos":I
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local v15    # "pos":I
    .local p3, "tag":I
    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 4961
    add-int/lit8 v0, v13, 0x8

    .line 4962
    .end local v13    # "position":I
    .local v0, "position":I
    or-int v7, v7, v21

    .line 4963
    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v6

    move v4, v15

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v15, p0

    goto/16 :goto_0

    .line 4959
    .end local v0    # "position":I
    .end local v15    # "pos":I
    .end local p3    # "tag":I
    .restart local v4    # "unsafe":Lsun/misc/Unsafe;
    .restart local v5    # "pos":I
    .local v6, "tag":I
    .restart local v13    # "position":I
    :cond_14
    move v15, v5

    move/from16 p3, v6

    move-object v6, v4

    .end local v4    # "unsafe":Lsun/misc/Unsafe;
    .end local v5    # "pos":I
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .restart local v15    # "pos":I
    .restart local p3    # "tag":I
    goto/16 :goto_a

    .line 4950
    .end local v15    # "pos":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .local v5, "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_a
    move/from16 v24, v1

    move v15, v6

    move/from16 v25, v8

    move-object v6, v10

    move-wide v10, v11

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v5

    move/from16 v32, v13

    move/from16 v13, p3

    move/from16 p3, v17

    move/from16 v17, v32

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v5    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .local v13, "position":I
    .restart local v15    # "pos":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "tag":I
    if-nez v8, :cond_15

    .line 4951
    invoke-static {v12, v13, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint32([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4952
    .end local v13    # "position":I
    .local v0, "position":I
    iget v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v6, v14, v10, v11, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4953
    or-int v7, v7, v21

    .line 4954
    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v6

    move v4, v15

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v15, p0

    goto/16 :goto_0

    .line 4941
    .end local v15    # "pos":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v5    # "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_b
    move/from16 v24, v1

    move v15, v6

    move/from16 v25, v8

    move-object v6, v10

    move-wide v10, v11

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v5

    move/from16 v32, v13

    move/from16 v13, p3

    move/from16 p3, v17

    move/from16 v17, v32

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v5    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .local v13, "position":I
    .restart local v15    # "pos":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "tag":I
    if-nez v8, :cond_15

    .line 4942
    invoke-static {v12, v13, v9}, Lcom/google/protobuf/ArrayDecoders;->decodeVarint64([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v13

    .line 4943
    iget-wide v4, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v0, v6

    move-object/from16 v1, p1

    move-wide v2, v10

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 4944
    or-int v7, v7, v21

    .line 4945
    move/from16 v2, p3

    move/from16 v11, p5

    move-object v10, v6

    move v0, v13

    move v4, v15

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v15, p0

    move/from16 v13, p4

    goto/16 :goto_0

    .line 4932
    .end local v15    # "pos":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .restart local v0    # "wireType":I
    .restart local v1    # "number":I
    .restart local v5    # "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_c
    move/from16 v24, v1

    move v15, v6

    move/from16 v25, v8

    move-object v6, v10

    move-wide v10, v11

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v5

    move/from16 v32, v13

    move/from16 v13, p3

    move/from16 p3, v17

    move/from16 v17, v32

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v5    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .local v13, "position":I
    .restart local v15    # "pos":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "tag":I
    if-ne v8, v2, :cond_15

    .line 4933
    invoke-static {v12, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-static {v14, v10, v11, v0}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 4934
    add-int/lit8 v0, v13, 0x4

    .line 4935
    .end local v13    # "position":I
    .local v0, "position":I
    or-int v7, v7, v21

    .line 4936
    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v6

    move v4, v15

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v15, p0

    goto/16 :goto_0

    .line 4924
    .end local v15    # "pos":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .restart local v5    # "fieldType":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v13, "presenceFieldOffset":I
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    .local p3, "position":I
    :pswitch_d
    move/from16 v24, v1

    move v15, v6

    move/from16 v25, v8

    move-object v6, v10

    move-wide v10, v11

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v5

    move/from16 v32, v13

    move/from16 v13, p3

    move/from16 p3, v17

    move/from16 v17, v32

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v5    # "fieldType":I
    .end local v11    # "fieldOffset":J
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .local v13, "position":I
    .restart local v15    # "pos":I
    .local v17, "presenceFieldOffset":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    .local p3, "tag":I
    const/4 v0, 0x1

    if-ne v8, v0, :cond_15

    .line 4925
    invoke-static {v12, v13}, Lcom/google/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-static {v14, v10, v11, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 4926
    add-int/lit8 v0, v13, 0x8

    .line 4927
    .end local v13    # "position":I
    .local v0, "position":I
    or-int v7, v7, v21

    .line 4928
    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v10, v6

    move v4, v15

    move/from16 v3, v16

    move/from16 v8, v25

    move-object/from16 v15, p0

    goto/16 :goto_0

    .line 5078
    .end local v0    # "position":I
    .end local v17    # "presenceFieldOffset":I
    .end local v19    # "presenceMaskAndOffset":I
    .end local v21    # "presenceMask":I
    .restart local v13    # "position":I
    :cond_15
    :goto_a
    move-object/from16 v30, v6

    move/from16 v17, v7

    move/from16 v21, v15

    move v15, v8

    move/from16 v8, v25

    goto/16 :goto_e

    .end local v13    # "position":I
    .end local v15    # "pos":I
    .end local v24    # "number":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "typeAndOffset":I
    .end local p3    # "tag":I
    .local v0, "wireType":I
    .restart local v1    # "number":I
    .local v3, "fieldType":I
    .local v5, "position":I
    .local v6, "pos":I
    .local v8, "currentPresenceFieldOffset":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "fieldOffset":J
    .local v17, "tag":I
    .local v18, "typeAndOffset":I
    :cond_16
    move/from16 v24, v1

    move v13, v5

    move v15, v6

    move/from16 v25, v8

    move-object v6, v10

    move-wide v10, v11

    move/from16 p3, v17

    move/from16 v26, v18

    move-object/from16 v12, p2

    move v8, v0

    move/from16 v18, v3

    .end local v0    # "wireType":I
    .end local v1    # "number":I
    .end local v3    # "fieldType":I
    .end local v5    # "position":I
    .end local v11    # "fieldOffset":J
    .end local v17    # "tag":I
    .local v6, "unsafe":Lsun/misc/Unsafe;
    .local v8, "wireType":I
    .local v10, "fieldOffset":J
    .restart local v13    # "position":I
    .restart local v15    # "pos":I
    .local v18, "fieldType":I
    .restart local v24    # "number":I
    .restart local v25    # "currentPresenceFieldOffset":I
    .restart local v26    # "typeAndOffset":I
    .restart local p3    # "tag":I
    const/16 v0, 0x1b

    move/from16 v5, v18

    .end local v18    # "fieldType":I
    .local v5, "fieldType":I
    if-ne v5, v0, :cond_1a

    .line 5080
    const/4 v0, 0x2

    if-ne v8, v0, :cond_19

    .line 5081
    invoke-virtual {v6, v14, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$ProtobufList;

    .line 5082
    .local v0, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_18

    .line 5083
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 5084
    .local v1, "size":I
    if-nez v1, :cond_17

    const/16 v2, 0xa

    goto :goto_b

    :cond_17
    mul-int/lit8 v2, v1, 0x2

    .line 5085
    :goto_b
    invoke-interface {v0, v2}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 5087
    invoke-virtual {v6, v14, v10, v11, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v17, v0

    goto :goto_c

    .line 5082
    .end local v1    # "size":I
    :cond_18
    move-object/from16 v17, v0

    .line 5089
    .end local v0    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .local v17, "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    :goto_c
    nop

    .line 5091
    move v4, v15

    move-object/from16 v15, p0

    .end local v15    # "pos":I
    .local v4, "pos":I
    invoke-direct {v15, v4}, Lcom/google/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 5090
    move/from16 v1, p3

    move-object/from16 v2, p2

    move v3, v13

    move/from16 v18, v4

    .end local v4    # "pos":I
    .local v18, "pos":I
    move/from16 v4, p4

    move v12, v5

    .end local v5    # "fieldType":I
    .local v12, "fieldType":I
    move-object/from16 v5, v17

    move/from16 v19, p3

    move/from16 v21, v18

    move-object/from16 v18, v6

    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .end local p3    # "tag":I
    .local v18, "unsafe":Lsun/misc/Unsafe;
    .local v19, "tag":I
    .local v21, "pos":I
    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/ArrayDecoders;->decodeMessageList(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5092
    .end local v13    # "position":I
    .local v0, "position":I
    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move/from16 v3, v16

    move-object/from16 v10, v18

    move/from16 v2, v19

    move/from16 v4, v21

    move/from16 v8, v25

    goto/16 :goto_0

    .line 5080
    .end local v0    # "position":I
    .end local v12    # "fieldType":I
    .end local v17    # "list":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<*>;"
    .end local v18    # "unsafe":Lsun/misc/Unsafe;
    .end local v19    # "tag":I
    .end local v21    # "pos":I
    .restart local v5    # "fieldType":I
    .restart local v6    # "unsafe":Lsun/misc/Unsafe;
    .restart local v13    # "position":I
    .restart local v15    # "pos":I
    .restart local p3    # "tag":I
    :cond_19
    move/from16 v19, p3

    move v12, v5

    move-object/from16 v18, v6

    move/from16 v21, v15

    move-object/from16 v15, p0

    .end local v5    # "fieldType":I
    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .end local v15    # "pos":I
    .end local p3    # "tag":I
    .restart local v12    # "fieldType":I
    .restart local v18    # "unsafe":Lsun/misc/Unsafe;
    .restart local v19    # "tag":I
    .restart local v21    # "pos":I
    move/from16 v17, v7

    move v15, v8

    move-object/from16 v30, v18

    move/from16 v19, v13

    goto/16 :goto_d

    .line 5094
    .end local v12    # "fieldType":I
    .end local v18    # "unsafe":Lsun/misc/Unsafe;
    .end local v19    # "tag":I
    .end local v21    # "pos":I
    .restart local v5    # "fieldType":I
    .restart local v6    # "unsafe":Lsun/misc/Unsafe;
    .restart local v15    # "pos":I
    .restart local p3    # "tag":I
    :cond_1a
    move/from16 v19, p3

    move v12, v5

    move-object/from16 v18, v6

    move/from16 v21, v15

    move-object/from16 v15, p0

    .end local v5    # "fieldType":I
    .end local v6    # "unsafe":Lsun/misc/Unsafe;
    .end local v15    # "pos":I
    .end local p3    # "tag":I
    .restart local v12    # "fieldType":I
    .restart local v18    # "unsafe":Lsun/misc/Unsafe;
    .restart local v19    # "tag":I
    .restart local v21    # "pos":I
    const/16 v0, 0x31

    if-gt v12, v0, :cond_1c

    .line 5096
    move v6, v13

    .line 5097
    .local v6, "oldPosition":I
    move/from16 v5, v26

    .end local v26    # "typeAndOffset":I
    .local v5, "typeAndOffset":I
    int-to-long v3, v5

    .line 5098
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v17, 0xfffff

    move-object/from16 v2, p2

    move-wide/from16 v22, v3

    move v3, v13

    move/from16 v4, p4

    move/from16 v20, v5

    .end local v5    # "typeAndOffset":I
    .local v20, "typeAndOffset":I
    move/from16 v5, v19

    move v15, v6

    .end local v6    # "oldPosition":I
    .local v15, "oldPosition":I
    move/from16 v6, v24

    move/from16 v17, v7

    .end local v7    # "currentPresenceField":I
    .local v17, "currentPresenceField":I
    move v7, v8

    move/from16 v29, v8

    .end local v8    # "wireType":I
    .local v29, "wireType":I
    move/from16 v8, v21

    move-wide/from16 v26, v10

    move-object/from16 v30, v18

    move-object v11, v9

    .end local v10    # "fieldOffset":J
    .end local v18    # "unsafe":Lsun/misc/Unsafe;
    .local v26, "fieldOffset":J
    .local v30, "unsafe":Lsun/misc/Unsafe;
    move-wide/from16 v9, v22

    move v11, v12

    move/from16 v31, v12

    move/from16 p3, v19

    move/from16 v18, v20

    move/from16 v19, v13

    .end local v12    # "fieldType":I
    .end local v13    # "position":I
    .end local v20    # "typeAndOffset":I
    .local v18, "typeAndOffset":I
    .local v19, "position":I
    .local v31, "fieldType":I
    .restart local p3    # "tag":I
    move-wide/from16 v12, v26

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5111
    .end local v19    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v15, :cond_1b

    .line 5112
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v4, v21

    move/from16 v8, v25

    move-object/from16 v10, v30

    goto/16 :goto_0

    .line 5114
    .end local v15    # "oldPosition":I
    :cond_1b
    move v13, v0

    move/from16 v8, v25

    move/from16 v15, v29

    goto/16 :goto_e

    .end local v0    # "position":I
    .end local v17    # "currentPresenceField":I
    .end local v29    # "wireType":I
    .end local v30    # "unsafe":Lsun/misc/Unsafe;
    .end local v31    # "fieldType":I
    .end local p3    # "tag":I
    .restart local v7    # "currentPresenceField":I
    .restart local v8    # "wireType":I
    .restart local v10    # "fieldOffset":J
    .restart local v12    # "fieldType":I
    .restart local v13    # "position":I
    .local v18, "unsafe":Lsun/misc/Unsafe;
    .local v19, "tag":I
    .local v26, "typeAndOffset":I
    :cond_1c
    move/from16 v17, v7

    move/from16 v29, v8

    move/from16 v31, v12

    move-object/from16 v30, v18

    move/from16 p3, v19

    move/from16 v18, v26

    move-wide/from16 v26, v10

    move/from16 v19, v13

    .end local v7    # "currentPresenceField":I
    .end local v8    # "wireType":I
    .end local v10    # "fieldOffset":J
    .end local v12    # "fieldType":I
    .end local v13    # "position":I
    .restart local v17    # "currentPresenceField":I
    .local v18, "typeAndOffset":I
    .local v19, "position":I
    .local v26, "fieldOffset":J
    .restart local v29    # "wireType":I
    .restart local v30    # "unsafe":Lsun/misc/Unsafe;
    .restart local v31    # "fieldType":I
    .restart local p3    # "tag":I
    const/16 v0, 0x32

    move/from16 v14, v31

    .end local v31    # "fieldType":I
    .local v14, "fieldType":I
    if-ne v14, v0, :cond_1f

    .line 5115
    move/from16 v15, v29

    const/4 v0, 0x2

    .end local v29    # "wireType":I
    .local v15, "wireType":I
    if-ne v15, v0, :cond_1e

    .line 5116
    move/from16 v9, v19

    .line 5117
    .local v9, "oldPosition":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p4

    move/from16 v5, v21

    move-wide/from16 v6, v26

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5118
    .end local v19    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v9, :cond_1d

    .line 5119
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v4, v21

    move/from16 v8, v25

    move-object/from16 v10, v30

    goto/16 :goto_0

    .line 5121
    .end local v9    # "oldPosition":I
    :cond_1d
    move v13, v0

    move/from16 v8, v25

    goto :goto_e

    .line 5143
    .end local v0    # "position":I
    .end local v14    # "fieldType":I
    .end local v15    # "wireType":I
    .end local v17    # "currentPresenceField":I
    .end local v26    # "fieldOffset":J
    .end local v30    # "unsafe":Lsun/misc/Unsafe;
    .end local p3    # "tag":I
    .restart local v7    # "currentPresenceField":I
    .restart local v8    # "wireType":I
    .restart local v13    # "position":I
    .local v18, "unsafe":Lsun/misc/Unsafe;
    .local v19, "tag":I
    :cond_1e
    :goto_d
    move/from16 v13, v19

    move/from16 v8, v25

    .end local v7    # "currentPresenceField":I
    .end local v8    # "wireType":I
    .end local v13    # "position":I
    .end local v18    # "unsafe":Lsun/misc/Unsafe;
    .restart local v15    # "wireType":I
    .restart local v17    # "currentPresenceField":I
    .local v19, "position":I
    .restart local v30    # "unsafe":Lsun/misc/Unsafe;
    .restart local p3    # "tag":I
    goto :goto_e

    .line 5123
    .end local v15    # "wireType":I
    .restart local v14    # "fieldType":I
    .local v18, "typeAndOffset":I
    .restart local v26    # "fieldOffset":J
    .restart local v29    # "wireType":I
    :cond_1f
    move/from16 v15, v29

    .end local v29    # "wireType":I
    .restart local v15    # "wireType":I
    move/from16 v13, v19

    .line 5124
    .local v13, "oldPosition":I
    nop

    .line 5125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, v24

    move v7, v15

    move/from16 v8, v18

    move v9, v14

    move-wide/from16 v10, v26

    move/from16 v12, v21

    move/from16 v31, v14

    move v14, v13

    .end local v13    # "oldPosition":I
    .local v14, "oldPosition":I
    .restart local v31    # "fieldType":I
    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5138
    .end local v19    # "position":I
    .restart local v0    # "position":I
    if-eq v0, v14, :cond_20

    .line 5139
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v4, v21

    move/from16 v8, v25

    move-object/from16 v10, v30

    goto/16 :goto_0

    .line 5138
    :cond_20
    move v13, v0

    move/from16 v8, v25

    .line 5143
    .end local v0    # "position":I
    .end local v14    # "oldPosition":I
    .end local v18    # "typeAndOffset":I
    .end local v25    # "currentPresenceFieldOffset":I
    .end local v26    # "fieldOffset":J
    .end local v31    # "fieldType":I
    .local v8, "currentPresenceFieldOffset":I
    .local v13, "position":I
    :goto_e
    move/from16 v10, p3

    move/from16 v9, p5

    .end local p3    # "tag":I
    .local v10, "tag":I
    if-ne v10, v9, :cond_21

    if-eqz v9, :cond_21

    .line 5144
    move-object/from16 v11, p0

    move-object/from16 v12, p6

    move v2, v10

    move v0, v13

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v4, v21

    goto/16 :goto_10

    .line 5147
    :cond_21
    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcom/google/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_22

    move-object/from16 v12, p6

    iget-object v0, v12, Lcom/google/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 5148
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_23

    .line 5149
    iget-object v5, v11, Lcom/google/protobuf/MessageSchema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    iget-object v6, v11, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    move v0, v10

    move-object/from16 v1, p2

    move v2, v13

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/protobuf/ArrayDecoders;->decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .end local v13    # "position":I
    .restart local v0    # "position":I
    goto :goto_f

    .line 5147
    .end local v0    # "position":I
    .restart local v13    # "position":I
    :cond_22
    move-object/from16 v12, p6

    .line 5154
    :cond_23
    nop

    .line 5155
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 5154
    move v0, v10

    move-object/from16 v1, p2

    move v2, v13

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 5157
    .end local v13    # "position":I
    .end local v15    # "wireType":I
    .end local v24    # "number":I
    .restart local v0    # "position":I
    :goto_f
    move-object/from16 v14, p1

    move/from16 v13, p4

    move v2, v10

    move-object v15, v11

    move/from16 v3, v16

    move/from16 v7, v17

    move/from16 v4, v21

    move-object/from16 v10, v30

    move v11, v9

    move-object v9, v12

    move-object/from16 v12, p2

    goto/16 :goto_0

    .line 4887
    .end local v16    # "oldNumber":I
    .end local v17    # "currentPresenceField":I
    .end local v21    # "pos":I
    .end local v30    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "tag":I
    .local v3, "oldNumber":I
    .restart local v4    # "pos":I
    .restart local v7    # "currentPresenceField":I
    .local v10, "unsafe":Lsun/misc/Unsafe;
    :cond_24
    move/from16 v17, v7

    move/from16 v25, v8

    move-object v12, v9

    move-object/from16 v30, v10

    move v9, v11

    move-object v11, v15

    .line 5158
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v30    # "unsafe":Lsun/misc/Unsafe;
    :goto_10
    const v1, 0xfffff

    if-eq v8, v1, :cond_25

    .line 5159
    int-to-long v5, v8

    move-object/from16 v1, p1

    move-object/from16 v10, v30

    .end local v30    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    invoke-virtual {v10, v1, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_11

    .line 5158
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v30    # "unsafe":Lsun/misc/Unsafe;
    :cond_25
    move-object/from16 v1, p1

    move-object/from16 v10, v30

    .line 5161
    .end local v30    # "unsafe":Lsun/misc/Unsafe;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    :goto_11
    const/4 v5, 0x0

    .line 5162
    .local v5, "unknownFields":Lcom/google/protobuf/UnknownFieldSetLite;
    iget v6, v11, Lcom/google/protobuf/MessageSchema;->checkInitializedCount:I

    .local v6, "i":I
    :goto_12
    iget v13, v11, Lcom/google/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v6, v13, :cond_26

    .line 5163
    iget-object v13, v11, Lcom/google/protobuf/MessageSchema;->intArray:[I

    aget v13, v13, v6

    iget-object v14, v11, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 5164
    invoke-direct {v11, v1, v13, v5, v14}, Lcom/google/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v13

    move-object v5, v13

    check-cast v5, Lcom/google/protobuf/UnknownFieldSetLite;

    .line 5162
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 5170
    .end local v6    # "i":I
    :cond_26
    if-eqz v5, :cond_27

    .line 5171
    iget-object v6, v11, Lcom/google/protobuf/MessageSchema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 5172
    invoke-virtual {v6, v1, v5}, Lcom/google/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5174
    :cond_27
    if-nez v9, :cond_29

    .line 5175
    move/from16 v6, p4

    if-ne v0, v6, :cond_28

    goto :goto_13

    .line 5176
    :cond_28
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v13

    throw v13

    .line 5179
    :cond_29
    move/from16 v6, p4

    if-gt v0, v6, :cond_2a

    if-ne v2, v9, :cond_2a

    .line 5183
    :goto_13
    return v0

    .line 5180
    :cond_2a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v13

    throw v13

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 2
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2542
    .local p0, "this":Lcom/google/protobuf/MessageSchema;, "Lcom/google/protobuf/MessageSchema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_0

    .line 2543
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_0

    .line 2545
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_1

    .line 2546
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_0

    .line 2548
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 2551
    :goto_0
    return-void
.end method
