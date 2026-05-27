.class final Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuanalytics/analytics/PayUAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;


# direct methods
.method constructor <init>(Lcom/payu/payuanalytics/analytics/PayUAnalytics;Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iput-object p2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 83
    const-string v0, "analytics_buffer_key"

    :goto_0
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->a(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->b(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)V

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    iget-object v2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/payu/payuanalytics/analytics/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 88
    if-lez v2, :cond_1

    .line 89
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 90
    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v5}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    iget-object v5, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v5}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/payu/payuanalytics/analytics/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 91
    nop

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 92
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 93
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 96
    iget-object v2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)Lcom/payu/payuanalytics/analytics/a;

    iget-object v2, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/payu/payuanalytics/analytics/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 102
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 100
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    :goto_2
    nop

    .line 104
    :goto_3
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->c:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->f(Lcom/payu/payuanalytics/analytics/PayUAnalytics;)V

    .line 105
    nop

    .end local p0    # "this":Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .end local p1    # "thread":Ljava/lang/Thread;
    .end local p2    # "ex":Ljava/lang/Throwable;
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 106
    return-void

    .line 83
    .restart local p0    # "this":Lcom/payu/payuanalytics/analytics/PayUAnalytics$1;
    .restart local p1    # "thread":Ljava/lang/Thread;
    .restart local p2    # "ex":Ljava/lang/Throwable;
    :cond_2
    goto/16 :goto_0
.end method
