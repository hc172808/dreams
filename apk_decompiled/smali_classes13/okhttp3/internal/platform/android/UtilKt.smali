.class public final Lokhttp3/internal/platform/android/UtilKt;
.super Ljava/lang/Object;
.source "util.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nutil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 util.kt\nokhttp3/internal/platform/android/UtilKt\n*L\n1#1,45:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\u001a\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "MAX_LOG_LENGTH",
        "",
        "androidLog",
        "",
        "level",
        "message",
        "",
        "t",
        "",
        "okhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final MAX_LOG_LENGTH:I = 0xfa0


# direct methods
.method public static final androidLog(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 10
    .param p0, "level"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v0, p1

    .line 25
    .local v0, "logMessage":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 27
    const/4 v1, 0x3

    goto :goto_0

    .line 26
    :pswitch_0
    const/4 v1, 0x5

    .line 25
    :goto_0
    nop

    .line 29
    .local v1, "logLevel":I
    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 34
    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 35
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v5, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move v6, v2

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v4

    .line 36
    .local v4, "newline":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v3

    :goto_2
    move v4, v5

    .line 37
    :cond_2
    nop

    .line 38
    add-int/lit16 v5, v2, 0xfa0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 39
    .local v5, "end":I
    if-eqz v0, :cond_3

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "OkHttp"

    invoke-static {v1, v7, v6}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 40
    move v2, v5

    .line 41
    if-lt v2, v4, :cond_2

    .line 42
    .end local v5    # "end":I
    nop

    .end local v4    # "newline":I
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_1

    .line 39
    .restart local v4    # "newline":I
    .restart local v5    # "end":I
    :cond_3
    new-instance v6, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v6, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 44
    .end local v4    # "newline":I
    .end local v5    # "end":I
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
