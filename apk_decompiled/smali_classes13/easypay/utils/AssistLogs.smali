.class public Leasypay/utils/AssistLogs;
.super Ljava/lang/Object;
.source "AssistLogs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printLog(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/Object;

    .line 14
    sget-boolean v0, Leasypay/manager/Constants;->DEV_MODE:Z

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssistLogs"

    invoke-static {v1, v0}, Leasypay/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Leasypay/utils/LogNotPrintedException;

    invoke-direct {v0}, Leasypay/utils/LogNotPrintedException;-><init>()V

    .end local p0    # "message":Ljava/lang/String;
    .end local p1    # "className":Ljava/lang/Object;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .restart local p0    # "message":Ljava/lang/String;
    .restart local p1    # "className":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 35
    .local v1, "mStringWriter":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 36
    .local v2, "mPrintWriter":Ljava/io/PrintWriter;
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mStringWriter":Ljava/io/StringWriter;
    .end local v2    # "mPrintWriter":Ljava/io/PrintWriter;
    :cond_1
    :goto_0
    return-void
.end method
