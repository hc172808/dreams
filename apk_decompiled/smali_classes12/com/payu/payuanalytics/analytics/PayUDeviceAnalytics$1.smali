.class final Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic c:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;


# direct methods
.method constructor <init>(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    iput-object p2, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->a(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 82
    nop

    :goto_1
    if-ge v2, v1, :cond_0

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v4}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_2

    .line 87
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    :goto_2
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)V

    .line 90
    nop

    .end local p0    # "this":Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .end local p1    # "thread":Ljava/lang/Thread;
    .end local p2    # "ex":Ljava/lang/Throwable;
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 91
    return-void

    .line 77
    .restart local p0    # "this":Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$1;
    .restart local p1    # "thread":Ljava/lang/Thread;
    .restart local p2    # "ex":Ljava/lang/Throwable;
    :cond_1
    goto :goto_0
.end method
