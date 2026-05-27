.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScionConversionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEventOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3832
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;-><init>()V

    .line 3835
    .local v0, "defaultInstance":Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    .line 3836
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3838
    .end local v0    # "defaultInstance":Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3539
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3540
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->name_:Ljava/lang/String;

    .line 3541
    return-void
.end method

.method static synthetic access$5500()Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1

    .line 3534
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 3534
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    .line 3534
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->clearName()V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 3534
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 3592
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->name_:Ljava/lang/String;

    .line 3593
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1

    .line 3841
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;
    .locals 1

    .line 3684
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    .line 3687
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3661
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3667
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3625
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3632
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3672
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3679
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3649
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3656
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3612
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3619
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3637
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3644
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;",
            ">;"
        }
    .end annotation

    .line 3847
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 3579
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3581
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->name_:Ljava/lang/String;

    .line 3582
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3604
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3605
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->name_:Ljava/lang/String;

    .line 3607
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 3784
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3825
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 3822
    :pswitch_0
    return-object v2

    .line 3819
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 3804
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 3805
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;>;"
    if-nez v0, :cond_1

    .line 3806
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    monitor-enter v1

    .line 3807
    :try_start_0
    sget-object v2, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 3808
    if-nez v0, :cond_0

    .line 3809
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 3812
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 3814
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3816
    :cond_1
    :goto_0
    return-object v0

    .line 3801
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    return-object v0

    .line 3792
    :pswitch_4
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "name_"

    aput-object v2, v0, v1

    .line 3795
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 3797
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 3789
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object v0

    .line 3786
    :pswitch_6
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;-><init>()V

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 3554
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3567
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ScionConversionEvent;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
