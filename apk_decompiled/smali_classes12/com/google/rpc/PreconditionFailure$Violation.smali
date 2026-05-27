.class public final Lcom/google/rpc/PreconditionFailure$Violation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PreconditionFailure.java"

# interfaces
.implements Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/PreconditionFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Violation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/PreconditionFailure$Violation;",
        "Lcom/google/rpc/PreconditionFailure$Violation$Builder;",
        ">;",
        "Lcom/google/rpc/PreconditionFailure$ViolationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBJECT_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private description_:Ljava/lang/String;

.field private subject_:Ljava/lang/String;

.field private type_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 742
    new-instance v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-direct {v0}, Lcom/google/rpc/PreconditionFailure$Violation;-><init>()V

    .line 745
    .local v0, "defaultInstance":Lcom/google/rpc/PreconditionFailure$Violation;
    sput-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    .line 746
    const-class v1, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 748
    .end local v0    # "defaultInstance":Lcom/google/rpc/PreconditionFailure$Violation;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->type_:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->subject_:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->description_:Ljava/lang/String;

    .line 116
    return-void
.end method

.method static synthetic access$000()Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1

    .line 107
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure$Violation;
    .param p1, "x1"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->setType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure$Violation;

    .line 107
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure$Violation;->clearType()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/rpc/PreconditionFailure$Violation;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure$Violation;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 107
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->setTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure$Violation;
    .param p1, "x1"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->setSubject(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure$Violation;

    .line 107
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure$Violation;->clearSubject()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/rpc/PreconditionFailure$Violation;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure$Violation;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 107
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->setSubjectBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/rpc/PreconditionFailure$Violation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure$Violation;
    .param p1, "x1"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/rpc/PreconditionFailure$Violation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure$Violation;

    .line 107
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure$Violation;->clearDescription()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/rpc/PreconditionFailure$Violation;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/rpc/PreconditionFailure$Violation;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 107
    invoke-direct {p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearDescription()V
    .locals 1

    .line 329
    invoke-static {}, Lcom/google/rpc/PreconditionFailure$Violation;->getDefaultInstance()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->description_:Ljava/lang/String;

    .line 330
    return-void
.end method

.method private clearSubject()V
    .locals 1

    .line 252
    invoke-static {}, Lcom/google/rpc/PreconditionFailure$Violation;->getDefaultInstance()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getSubject()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->subject_:Ljava/lang/String;

    .line 253
    return-void
.end method

.method private clearType()V
    .locals 1

    .line 175
    invoke-static {}, Lcom/google/rpc/PreconditionFailure$Violation;->getDefaultInstance()Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->type_:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1

    .line 751
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1

    .line 423
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/PreconditionFailure$Violation;)Lcom/google/rpc/PreconditionFailure$Violation$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/rpc/PreconditionFailure$Violation;

    .line 426
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0, p0}, Lcom/google/rpc/PreconditionFailure$Violation;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/rpc/PreconditionFailure$Violation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/PreconditionFailure$Violation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 371
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 351
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 383
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;"
        }
    .end annotation

    .line 757
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure$Violation;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    iput-object p1, p0, Lcom/google/rpc/PreconditionFailure$Violation;->description_:Ljava/lang/String;

    .line 317
    return-void
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 343
    invoke-static {p1}, Lcom/google/rpc/PreconditionFailure$Violation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 344
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->description_:Ljava/lang/String;

    .line 346
    return-void
.end method

.method private setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    iput-object p1, p0, Lcom/google/rpc/PreconditionFailure$Violation;->subject_:Ljava/lang/String;

    .line 240
    return-void
.end method

.method private setSubjectBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 266
    invoke-static {p1}, Lcom/google/rpc/PreconditionFailure$Violation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 267
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->subject_:Ljava/lang/String;

    .line 269
    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    iput-object p1, p0, Lcom/google/rpc/PreconditionFailure$Violation;->type_:Ljava/lang/String;

    .line 163
    return-void
.end method

.method private setTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 189
    invoke-static {p1}, Lcom/google/rpc/PreconditionFailure$Violation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 190
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->type_:Ljava/lang/String;

    .line 192
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 691
    sget-object v0, Lcom/google/rpc/PreconditionFailure$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 735
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 732
    :pswitch_0
    return-object v2

    .line 729
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 714
    :pswitch_2
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->PARSER:Lcom/google/protobuf/Parser;

    .line 715
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/PreconditionFailure$Violation;>;"
    if-nez v0, :cond_1

    .line 716
    const-class v1, Lcom/google/rpc/PreconditionFailure$Violation;

    monitor-enter v1

    .line 717
    :try_start_0
    sget-object v2, Lcom/google/rpc/PreconditionFailure$Violation;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 718
    if-nez v0, :cond_0

    .line 719
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 722
    sput-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->PARSER:Lcom/google/protobuf/Parser;

    .line 724
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 726
    :cond_1
    :goto_0
    return-object v0

    .line 711
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/rpc/PreconditionFailure$Violation;>;"
    :pswitch_3
    sget-object v0, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    return-object v0

    .line 699
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "type_"

    aput-object v3, v0, v2

    const-string v2, "subject_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "description_"

    aput-object v2, v0, v1

    .line 704
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    .line 707
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/rpc/PreconditionFailure$Violation;->DEFAULT_INSTANCE:Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v2, v1, v0}, Lcom/google/rpc/PreconditionFailure$Violation;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 696
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/rpc/PreconditionFailure$Violation$Builder;

    invoke-direct {v0, v2}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;-><init>(Lcom/google/rpc/PreconditionFailure$1;)V

    return-object v0

    .line 693
    :pswitch_6
    new-instance v0, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-direct {v0}, Lcom/google/rpc/PreconditionFailure$Violation;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->subject_:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->subject_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Violation;->type_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
