.class public final Lcom/facebook/internal/instrument/errorreport/ErrorReportData;
.super Ljava/lang/Object;
.source "ErrorReportData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/instrument/errorreport/ErrorReportData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nErrorReportData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErrorReportData.kt\ncom/facebook/internal/instrument/errorreport/ErrorReportData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n1#2:97\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u0014\u001a\u00020\u0015J\u0011\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0000H\u0086\u0002J\u0006\u0010\u0019\u001a\u00020\u0015J\u0008\u0010\u001a\u001a\u00020\u0003H\u0016R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/internal/instrument/errorreport/ErrorReportData;",
        "",
        "message",
        "",
        "(Ljava/lang/String;)V",
        "file",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "errorMessage",
        "filename",
        "isValid",
        "",
        "()Z",
        "parameters",
        "Lorg/json/JSONObject;",
        "getParameters",
        "()Lorg/json/JSONObject;",
        "timestamp",
        "",
        "Ljava/lang/Long;",
        "clear",
        "",
        "compareTo",
        "",
        "data",
        "save",
        "toString",
        "Companion",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/internal/instrument/errorreport/ErrorReportData$Companion;

.field private static final PARAM_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final PRARAM_ERROR_MESSAGE:Ljava/lang/String; = "error_message"


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private timestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->Companion:Lcom/facebook/internal/instrument/errorreport/ErrorReportData$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->filename:Ljava/lang/String;

    .line 47
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/InstrumentUtility;->readFile(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 48
    .local v0, "obj":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 49
    const-wide/16 v1, 0x0

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->timestamp:Ljava/lang/Long;

    .line 50
    const/4 v1, 0x0

    const-string v2, "error_message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->errorMessage:Ljava/lang/String;

    .end local v0    # "obj":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->timestamp:Ljava/lang/Long;

    .line 36
    iput-object p1, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->errorMessage:Ljava/lang/String;

    .line 37
    nop

    .line 38
    nop

    .line 42
    nop

    .line 38
    nop

    .line 41
    nop

    .line 38
    nop

    .line 40
    nop

    .line 38
    nop

    .line 39
    nop

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    const-string v1, "error_log_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    iget-object v1, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->timestamp:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 41
    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuffer()\n         \u2026)\n            .toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->filename:Ljava/lang/String;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->filename:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/instrument/InstrumentUtility;->deleteFile(Ljava/lang/String;)Z

    .line 71
    return-void
.end method

.method public final compareTo(Lcom/facebook/internal/instrument/errorreport/ErrorReportData;)I
    .locals 5
    .param p1, "data"    # Lcom/facebook/internal/instrument/errorreport/ErrorReportData;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 56
    .local v0, "ts":J
    iget-object v2, p1, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->timestamp:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 57
    .local v2, "dts":J
    cmp-long v4, v2, v0

    return v4

    .line 56
    .end local v2    # "dts":J
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 55
    .end local v0    # "ts":J
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final getParameters()Lorg/json/JSONObject;
    .locals 5

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v0, "obj":Lorg/json/JSONObject;
    nop

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->timestamp:Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 97
    .local v1, "ts":J
    const/4 v3, 0x0

    .line 82
    .local v3, "$i$a$-let-ErrorReportData$parameters$1":I
    const-string/jumbo v4, "timestamp"

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 83
    .end local v1    # "ts":J
    .end local v3    # "$i$a$-let-ErrorReportData$parameters$1":I
    :cond_0
    const-string v1, "error_message"

    iget-object v2, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    .line 87
    nop

    .line 88
    const/4 v1, 0x0

    return-object v1
.end method

.method public final isValid()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final save()V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->filename:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/InstrumentUtility;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 74
    invoke-virtual {p0}, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;->getParameters()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    .local v0, "params":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "params.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 74
    .end local v0    # "params":Lorg/json/JSONObject;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
