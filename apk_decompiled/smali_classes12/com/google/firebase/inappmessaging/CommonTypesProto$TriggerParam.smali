.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TriggerParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x5

.field public static final FLOAT_VALUE_FIELD_NUMBER:I = 0x4

.field public static final INT_VALUE_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private doubleValue_:D

.field private floatValue_:F

.field private intValue_:J

.field private name_:Ljava/lang/String;

.field private stringValue_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3203
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;-><init>()V

    .line 3206
    .local v0, "defaultInstance":Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 3207
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3209
    .end local v0    # "defaultInstance":Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2640
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2641
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->name_:Ljava/lang/String;

    .line 2642
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->stringValue_:Ljava/lang/String;

    .line 2643
    return-void
.end method

.method static synthetic access$3700()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1

    .line 2635
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .param p1, "x1"    # Ljava/lang/String;

    .line 2635
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 2635
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->clearName()V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 2635
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .param p1, "x1"    # Ljava/lang/String;

    .line 2635
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 2635
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->clearStringValue()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 2635
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setStringValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .param p1, "x1"    # J

    .line 2635
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setIntValue(J)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 2635
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->clearIntValue()V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .param p1, "x1"    # F

    .line 2635
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setFloatValue(F)V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 2635
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->clearFloatValue()V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .param p1, "x1"    # D

    .line 2635
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->setDoubleValue(D)V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 2635
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->clearDoubleValue()V

    return-void
.end method

.method private clearDoubleValue()V
    .locals 2

    .line 2838
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->doubleValue_:D

    .line 2839
    return-void
.end method

.method private clearFloatValue()V
    .locals 1

    .line 2812
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->floatValue_:F

    .line 2813
    return-void
.end method

.method private clearIntValue()V
    .locals 2

    .line 2786
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->intValue_:J

    .line 2787
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 2698
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->name_:Ljava/lang/String;

    .line 2699
    return-void
.end method

.method private clearStringValue()V
    .locals 1

    .line 2750
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getStringValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->stringValue_:Ljava/lang/String;

    .line 2751
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1

    .line 3212
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    .line 2916
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 2919
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2893
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2899
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2857
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2864
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2904
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2911
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2881
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2888
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2844
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2851
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2869
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2876
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;"
        }
    .end annotation

    .line 3218
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDoubleValue(D)V
    .locals 0
    .param p1, "value"    # D

    .line 2831
    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->doubleValue_:D

    .line 2832
    return-void
.end method

.method private setFloatValue(F)V
    .locals 0
    .param p1, "value"    # F

    .line 2805
    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->floatValue_:F

    .line 2806
    return-void
.end method

.method private setIntValue(J)V
    .locals 0
    .param p1, "value"    # J

    .line 2779
    iput-wide p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->intValue_:J

    .line 2780
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 2684
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2686
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->name_:Ljava/lang/String;

    .line 2687
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2711
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2712
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->name_:Ljava/lang/String;

    .line 2714
    return-void
.end method

.method private setStringValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 2741
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2743
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->stringValue_:Ljava/lang/String;

    .line 2744
    return-void
.end method

.method private setStringValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2758
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2759
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->stringValue_:Ljava/lang/String;

    .line 2761
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 3150
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 3193
    :pswitch_0
    return-object v2

    .line 3190
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 3175
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 3176
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;>;"
    if-nez v0, :cond_1

    .line 3177
    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    monitor-enter v1

    .line 3178
    :try_start_0
    sget-object v2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 3179
    if-nez v0, :cond_0

    .line 3180
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 3183
    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 3185
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3187
    :cond_1
    :goto_0
    return-object v0

    .line 3172
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    return-object v0

    .line 3158
    :pswitch_4
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "name_"

    aput-object v3, v0, v2

    const-string v2, "stringValue_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "intValue_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "floatValue_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "doubleValue_"

    aput-object v2, v0, v1

    .line 3165
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0001\u0005\u0000"

    .line 3168
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 3155
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;

    invoke-direct {v0, v2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object v0

    .line 3152
    :pswitch_6
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;-><init>()V

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

.method public getDoubleValue()D
    .locals 2

    .line 2823
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->doubleValue_:D

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 1

    .line 2797
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->floatValue_:F

    return v0
.end method

.method public getIntValue()J
    .locals 2

    .line 2771
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->intValue_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2657
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2671
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 2724
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->stringValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2733
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->stringValue_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
