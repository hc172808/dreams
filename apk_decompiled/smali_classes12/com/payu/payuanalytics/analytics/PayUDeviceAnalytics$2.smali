.class final Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;


# direct methods
.method constructor <init>(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 188
    const-string v0, "\r\n"

    :goto_0
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->a(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 189
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->f(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)J

    .line 190
    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->b(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)V

    .line 191
    const-string v1, ""

    .line 194
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v5}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v6}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->g(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v4}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v5}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->g(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 198
    :cond_0
    iget-object v4, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v4}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->c(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v5}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->g(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 199
    :goto_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v4, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v4}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 208
    :cond_2
    :goto_2
    if-lez v4, :cond_3

    .line 209
    add-int/lit8 v4, v4, -0x1

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v5}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_2

    .line 212
    iget-object v5, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v5}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 214
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 218
    new-instance v1, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;

    iget-object v4, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-direct {v1, v4, v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;-><init>(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 207
    :catchall_0
    move-exception v4

    goto/16 :goto_5

    .line 205
    :catch_0
    move-exception v4

    :try_start_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    iget-object v4, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v4}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 208
    :cond_4
    :goto_3
    if-lez v4, :cond_5

    .line 209
    add-int/lit8 v4, v4, -0x1

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    if-ltz v4, :cond_4

    iget-object v5, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v5}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_4

    .line 212
    iget-object v5, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v5}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 214
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 218
    new-instance v1, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;

    iget-object v4, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-direct {v1, v4, v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;-><init>(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 221
    :cond_6
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->h(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 223
    nop

    .line 224
    :goto_4
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 225
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->i(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)V

    .line 227
    :cond_7
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->e(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)V

    .line 228
    return-void

    .line 207
    :goto_5
    iget-object v5, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v5}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 208
    :cond_8
    :goto_6
    if-lez v5, :cond_9

    .line 209
    add-int/lit8 v5, v5, -0x1

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    if-ltz v5, :cond_8

    iget-object v6, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v6}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v5, :cond_8

    .line 212
    iget-object v6, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v6}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->d(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 214
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 218
    new-instance v1, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;

    iget-object v5, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-direct {v1, v5, v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;-><init>(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7

    .line 221
    :cond_a
    iget-object v0, p0, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics$2;->a:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-static {v0}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->h(Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 223
    :goto_7
    throw v4

    .line 188
    :cond_b
    goto/16 :goto_0
.end method
