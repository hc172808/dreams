.class public final Lcom/google/type/DateTime;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DateTime.java"

# interfaces
.implements Lcom/google/type/DateTimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/DateTime$Builder;,
        Lcom/google/type/DateTime$TimeOffsetCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/type/DateTime;",
        "Lcom/google/type/DateTime$Builder;",
        ">;",
        "Lcom/google/type/DateTimeOrBuilder;"
    }
.end annotation


# static fields
.field public static final DAY_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/type/DateTime;

.field public static final HOURS_FIELD_NUMBER:I = 0x4

.field public static final MINUTES_FIELD_NUMBER:I = 0x5

.field public static final MONTH_FIELD_NUMBER:I = 0x2

.field public static final NANOS_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDS_FIELD_NUMBER:I = 0x6

.field public static final TIME_ZONE_FIELD_NUMBER:I = 0x9

.field public static final UTC_OFFSET_FIELD_NUMBER:I = 0x8

.field public static final YEAR_FIELD_NUMBER:I = 0x1


# instance fields
.field private day_:I

.field private hours_:I

.field private minutes_:I

.field private month_:I

.field private nanos_:I

.field private seconds_:I

.field private timeOffsetCase_:I

.field private timeOffset_:Ljava/lang/Object;

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1150
    new-instance v0, Lcom/google/type/DateTime;

    invoke-direct {v0}, Lcom/google/type/DateTime;-><init>()V

    .line 1153
    .local v0, "defaultInstance":Lcom/google/type/DateTime;
    sput-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    .line 1154
    const-class v1, Lcom/google/type/DateTime;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1156
    .end local v0    # "defaultInstance":Lcom/google/type/DateTime;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    .line 30
    return-void
.end method

.method static synthetic access$000()Lcom/google/type/DateTime;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/type/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;

    .line 24
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearTimeOffset()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/type/DateTime;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;
    .param p1, "x1"    # I

    .line 24
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setMinutes(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/type/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;

    .line 24
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearMinutes()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/type/DateTime;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;
    .param p1, "x1"    # I

    .line 24
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setSeconds(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/type/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;

    .line 24
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearSeconds()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/type/DateTime;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;
    .param p1, "x1"    # I

    .line 24
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setNanos(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/type/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;

    .line 24
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearNanos()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/type/DateTime;Lcom/google/protobuf/Duration;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;
    .param p1, "x1"    # Lcom/google/protobuf/Duration;

    .line 24
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setUtcOffset(Lcom/google/protobuf/Duration;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/type/DateTime;Lcom/google/protobuf/Duration;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;
    .param p1, "x1"    # Lcom/google/protobuf/Duration;

    .line 24
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->mergeUtcOffset(Lcom/google/protobuf/Duration;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/type/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;

    .line 24
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearUtcOffset()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/type/DateTime;Lcom/google/type/TimeZone;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;
    .param p1, "x1"    # Lcom/google/type/TimeZone;

    .line 24
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setTimeZone(Lcom/google/type/TimeZone;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/type/DateTime;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;
    .param p1, "x1"    # I

    .line 24
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setYear(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/type/DateTime;Lcom/google/type/TimeZone;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;
    .param p1, "x1"    # Lcom/google/type/TimeZone;

    .line 24
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->mergeTimeZone(Lcom/google/type/TimeZone;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/type/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;

    .line 24
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearTimeZone()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/type/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;

    .line 24
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearYear()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/type/DateTime;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;
    .param p1, "x1"    # I

    .line 24
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setMonth(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/type/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;

    .line 24
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearMonth()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/type/DateTime;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;
    .param p1, "x1"    # I

    .line 24
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setDay(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/type/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;

    .line 24
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearDay()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/type/DateTime;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;
    .param p1, "x1"    # I

    .line 24
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setHours(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/type/DateTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/type/DateTime;

    .line 24
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearHours()V

    return-void
.end method

.method private clearDay()V
    .locals 1

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/DateTime;->day_:I

    .line 192
    return-void
.end method

.method private clearHours()V
    .locals 1

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/DateTime;->hours_:I

    .line 236
    return-void
.end method

.method private clearMinutes()V
    .locals 1

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/DateTime;->minutes_:I

    .line 274
    return-void
.end method

.method private clearMonth()V
    .locals 1

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/DateTime;->month_:I

    .line 151
    return-void
.end method

.method private clearNanos()V
    .locals 1

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/DateTime;->nanos_:I

    .line 356
    return-void
.end method

.method private clearSeconds()V
    .locals 1

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/DateTime;->seconds_:I

    .line 315
    return-void
.end method

.method private clearTimeOffset()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method private clearTimeZone()V
    .locals 2

    .line 502
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 503
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 506
    :cond_0
    return-void
.end method

.method private clearUtcOffset()V
    .locals 2

    .line 432
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 436
    :cond_0
    return-void
.end method

.method private clearYear()V
    .locals 1

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/type/DateTime;->year_:I

    .line 113
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/type/DateTime;
    .locals 1

    .line 1159
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    return-object v0
.end method

.method private mergeTimeZone(Lcom/google/type/TimeZone;)V
    .locals 3
    .param p1, "value"    # Lcom/google/type/TimeZone;

    .line 484
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 486
    invoke-static {}, Lcom/google/type/TimeZone;->getDefaultInstance()Lcom/google/type/TimeZone;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 487
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0}, Lcom/google/type/TimeZone;->newBuilder(Lcom/google/type/TimeZone;)Lcom/google/type/TimeZone$Builder;

    move-result-object v0

    .line 488
    invoke-virtual {v0, p1}, Lcom/google/type/TimeZone$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeZone$Builder;

    invoke-virtual {v0}, Lcom/google/type/TimeZone$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    goto :goto_0

    .line 490
    :cond_0
    iput-object p1, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 492
    :goto_0
    iput v1, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    .line 493
    return-void
.end method

.method private mergeUtcOffset(Lcom/google/protobuf/Duration;)V
    .locals 3
    .param p1, "value"    # Lcom/google/protobuf/Duration;

    .line 412
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 414
    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 415
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Duration;

    invoke-static {v0}, Lcom/google/protobuf/Duration;->newBuilder(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$Builder;

    move-result-object v0

    .line 416
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Duration$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Duration$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    goto :goto_0

    .line 418
    :cond_0
    iput-object p1, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 420
    :goto_0
    iput v1, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    .line 421
    return-void
.end method

.method public static newBuilder()Lcom/google/type/DateTime$Builder;
    .locals 1

    .line 583
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-virtual {v0}, Lcom/google/type/DateTime;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/DateTime;)Lcom/google/type/DateTime$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/type/DateTime;

    .line 586
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-virtual {v0, p0}, Lcom/google/type/DateTime;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/DateTime;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0}, Lcom/google/type/DateTime;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/DateTime;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0, p1}, Lcom/google/type/DateTime;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/DateTime;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 524
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/DateTime;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 531
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/type/DateTime;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/DateTime;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/DateTime;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/DateTime;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/DateTime;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 511
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/DateTime;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 518
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/type/DateTime;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 536
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/DateTime;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 543
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/DateTime;",
            ">;"
        }
    .end annotation

    .line 1165
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-virtual {v0}, Lcom/google/type/DateTime;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDay(I)V
    .locals 0
    .param p1, "value"    # I

    .line 179
    iput p1, p0, Lcom/google/type/DateTime;->day_:I

    .line 180
    return-void
.end method

.method private setHours(I)V
    .locals 0
    .param p1, "value"    # I

    .line 222
    iput p1, p0, Lcom/google/type/DateTime;->hours_:I

    .line 223
    return-void
.end method

.method private setMinutes(I)V
    .locals 0
    .param p1, "value"    # I

    .line 262
    iput p1, p0, Lcom/google/type/DateTime;->minutes_:I

    .line 263
    return-void
.end method

.method private setMonth(I)V
    .locals 0
    .param p1, "value"    # I

    .line 139
    iput p1, p0, Lcom/google/type/DateTime;->month_:I

    .line 140
    return-void
.end method

.method private setNanos(I)V
    .locals 0
    .param p1, "value"    # I

    .line 343
    iput p1, p0, Lcom/google/type/DateTime;->nanos_:I

    .line 344
    return-void
.end method

.method private setSeconds(I)V
    .locals 0
    .param p1, "value"    # I

    .line 302
    iput p1, p0, Lcom/google/type/DateTime;->seconds_:I

    .line 303
    return-void
.end method

.method private setTimeZone(Lcom/google/type/TimeZone;)V
    .locals 1
    .param p1, "value"    # Lcom/google/type/TimeZone;

    .line 472
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    iput-object p1, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 474
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    .line 475
    return-void
.end method

.method private setUtcOffset(Lcom/google/protobuf/Duration;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Duration;

    .line 398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    iput-object p1, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 400
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    .line 401
    return-void
.end method

.method private setYear(I)V
    .locals 0
    .param p1, "value"    # I

    .line 100
    iput p1, p0, Lcom/google/type/DateTime;->year_:I

    .line 101
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1091
    sget-object v0, Lcom/google/type/DateTime$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1140
    :pswitch_0
    return-object v2

    .line 1137
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1122
    :pswitch_2
    sget-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/Parser;

    .line 1123
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/DateTime;>;"
    if-nez v0, :cond_1

    .line 1124
    const-class v1, Lcom/google/type/DateTime;

    monitor-enter v1

    .line 1125
    :try_start_0
    sget-object v2, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1126
    if-nez v0, :cond_0

    .line 1127
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1130
    sput-object v0, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/Parser;

    .line 1132
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1134
    :cond_1
    :goto_0
    return-object v0

    .line 1119
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/type/DateTime;>;"
    :pswitch_3
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    return-object v0

    .line 1099
    :pswitch_4
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "timeOffset_"

    aput-object v3, v0, v2

    const-string v2, "timeOffsetCase_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "year_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "month_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "day_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hours_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "minutes_"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "seconds_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "nanos_"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/google/protobuf/Duration;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/google/type/TimeZone;

    aput-object v2, v0, v1

    .line 1112
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\t\u0001\u0000\u0001\t\t\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u0004\u0005\u0004\u0006\u0004\u0007\u0004\u0008<\u0000\t<\u0000"

    .line 1115
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v2, v1, v0}, Lcom/google/type/DateTime;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1096
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/type/DateTime$Builder;

    invoke-direct {v0, v2}, Lcom/google/type/DateTime$Builder;-><init>(Lcom/google/type/DateTime$1;)V

    return-object v0

    .line 1093
    :pswitch_6
    new-instance v0, Lcom/google/type/DateTime;

    invoke-direct {v0}, Lcom/google/type/DateTime;-><init>()V

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

.method public getDay()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/google/type/DateTime;->day_:I

    return v0
.end method

.method public getHours()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/google/type/DateTime;->hours_:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/google/type/DateTime;->minutes_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/google/type/DateTime;->month_:I

    return v0
.end method

.method public getNanos()I
    .locals 1

    .line 330
    iget v0, p0, Lcom/google/type/DateTime;->nanos_:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/google/type/DateTime;->seconds_:I

    return v0
.end method

.method public getTimeOffsetCase()Lcom/google/type/DateTime$TimeOffsetCase;
    .locals 1

    .line 65
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    invoke-static {v0}, Lcom/google/type/DateTime$TimeOffsetCase;->forNumber(I)Lcom/google/type/DateTime$TimeOffsetCase;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Lcom/google/type/TimeZone;
    .locals 2

    .line 459
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/type/TimeZone;

    return-object v0

    .line 462
    :cond_0
    invoke-static {}, Lcom/google/type/TimeZone;->getDefaultInstance()Lcom/google/type/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getUtcOffset()Lcom/google/protobuf/Duration;
    .locals 2

    .line 383
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Duration;

    return-object v0

    .line 386
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/google/type/DateTime;->year_:I

    return v0
.end method

.method public hasTimeZone()Z
    .locals 2

    .line 448
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUtcOffset()Z
    .locals 2

    .line 370
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
