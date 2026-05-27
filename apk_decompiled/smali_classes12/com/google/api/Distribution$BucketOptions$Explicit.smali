.class public final Lcom/google/api/Distribution$BucketOptions$Explicit;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$BucketOptions$ExplicitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$BucketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Explicit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Distribution$BucketOptions$Explicit;",
        "Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;",
        ">;",
        "Lcom/google/api/Distribution$BucketOptions$ExplicitOrBuilder;"
    }
.end annotation


# static fields
.field public static final BOUNDS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Distribution$BucketOptions$Explicit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private boundsMemoizedSerializedSize:I

.field private bounds_:Lcom/google/protobuf/Internal$DoubleList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1844
    new-instance v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-direct {v0}, Lcom/google/api/Distribution$BucketOptions$Explicit;-><init>()V

    .line 1847
    .local v0, "defaultInstance":Lcom/google/api/Distribution$BucketOptions$Explicit;
    sput-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    .line 1848
    const-class v1, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1850
    .end local v0    # "defaultInstance":Lcom/google/api/Distribution$BucketOptions$Explicit;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1484
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1527
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit;->boundsMemoizedSerializedSize:I

    .line 1485
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->emptyDoubleList()Lcom/google/protobuf/Internal$DoubleList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit;->bounds_:Lcom/google/protobuf/Internal$DoubleList;

    .line 1486
    return-void
.end method

.method static synthetic access$2200()Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1

    .line 1479
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/api/Distribution$BucketOptions$Explicit;ID)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution$BucketOptions$Explicit;
    .param p1, "x1"    # I
    .param p2, "x2"    # D

    .line 1479
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/Distribution$BucketOptions$Explicit;->setBounds(ID)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/api/Distribution$BucketOptions$Explicit;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution$BucketOptions$Explicit;
    .param p1, "x1"    # D

    .line 1479
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution$BucketOptions$Explicit;->addBounds(D)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/api/Distribution$BucketOptions$Explicit;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution$BucketOptions$Explicit;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 1479
    invoke-direct {p0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit;->addAllBounds(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/api/Distribution$BucketOptions$Explicit;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/api/Distribution$BucketOptions$Explicit;

    .line 1479
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->clearBounds()V

    return-void
.end method

.method private addAllBounds(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1571
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Double;>;"
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->ensureBoundsIsMutable()V

    .line 1572
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit;->bounds_:Lcom/google/protobuf/Internal$DoubleList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1574
    return-void
.end method

.method private addBounds(D)V
    .locals 1
    .param p1, "value"    # D

    .line 1558
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->ensureBoundsIsMutable()V

    .line 1559
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit;->bounds_:Lcom/google/protobuf/Internal$DoubleList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$DoubleList;->addDouble(D)V

    .line 1560
    return-void
.end method

.method private clearBounds()V
    .locals 1

    .line 1583
    invoke-static {}, Lcom/google/api/Distribution$BucketOptions$Explicit;->emptyDoubleList()Lcom/google/protobuf/Internal$DoubleList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit;->bounds_:Lcom/google/protobuf/Internal$DoubleList;

    .line 1584
    return-void
.end method

.method private ensureBoundsIsMutable()V
    .locals 2

    .line 1529
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit;->bounds_:Lcom/google/protobuf/Internal$DoubleList;

    .line 1530
    .local v0, "tmp":Lcom/google/protobuf/Internal$DoubleList;
    invoke-interface {v0}, Lcom/google/protobuf/Internal$DoubleList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1531
    nop

    .line 1532
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$DoubleList;)Lcom/google/protobuf/Internal$DoubleList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/Distribution$BucketOptions$Explicit;->bounds_:Lcom/google/protobuf/Internal$DoubleList;

    .line 1534
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1

    .line 1853
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;
    .locals 1

    .line 1661
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Distribution$BucketOptions$Explicit;)Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/api/Distribution$BucketOptions$Explicit;

    .line 1664
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-virtual {v0, p0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1638
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1644
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p0, p1}, Lcom/google/api/Distribution$BucketOptions$Explicit;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1602
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1609
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1649
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1656
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1626
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1633
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1589
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1596
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1614
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$BucketOptions$Explicit;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1621
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Distribution$BucketOptions$Explicit;",
            ">;"
        }
    .end annotation

    .line 1859
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-virtual {v0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBounds(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 1546
    invoke-direct {p0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->ensureBoundsIsMutable()V

    .line 1547
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit;->bounds_:Lcom/google/protobuf/Internal$DoubleList;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/Internal$DoubleList;->setDouble(ID)D

    .line 1548
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1796
    sget-object v0, Lcom/google/api/Distribution$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1837
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1834
    :pswitch_0
    return-object v2

    .line 1831
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1816
    :pswitch_2
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->PARSER:Lcom/google/protobuf/Parser;

    .line 1817
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Distribution$BucketOptions$Explicit;>;"
    if-nez v0, :cond_1

    .line 1818
    const-class v1, Lcom/google/api/Distribution$BucketOptions$Explicit;

    monitor-enter v1

    .line 1819
    :try_start_0
    sget-object v2, Lcom/google/api/Distribution$BucketOptions$Explicit;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1820
    if-nez v0, :cond_0

    .line 1821
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1824
    sput-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->PARSER:Lcom/google/protobuf/Parser;

    .line 1826
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1828
    :cond_1
    :goto_0
    return-object v0

    .line 1813
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/api/Distribution$BucketOptions$Explicit;>;"
    :pswitch_3
    sget-object v0, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    return-object v0

    .line 1804
    :pswitch_4
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "bounds_"

    aput-object v2, v0, v1

    .line 1807
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001#"

    .line 1809
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/api/Distribution$BucketOptions$Explicit;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-static {v2, v1, v0}, Lcom/google/api/Distribution$BucketOptions$Explicit;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1801
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;

    invoke-direct {v0, v2}, Lcom/google/api/Distribution$BucketOptions$Explicit$Builder;-><init>(Lcom/google/api/Distribution$1;)V

    return-object v0

    .line 1798
    :pswitch_6
    new-instance v0, Lcom/google/api/Distribution$BucketOptions$Explicit;

    invoke-direct {v0}, Lcom/google/api/Distribution$BucketOptions$Explicit;-><init>()V

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

.method public getBounds(I)D
    .locals 2
    .param p1, "index"    # I

    .line 1525
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit;->bounds_:Lcom/google/protobuf/Internal$DoubleList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$DoubleList;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getBoundsCount()I
    .locals 1

    .line 1512
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit;->bounds_:Lcom/google/protobuf/Internal$DoubleList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$DoubleList;->size()I

    move-result v0

    return v0
.end method

.method public getBoundsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1500
    iget-object v0, p0, Lcom/google/api/Distribution$BucketOptions$Explicit;->bounds_:Lcom/google/protobuf/Internal$DoubleList;

    return-object v0
.end method
