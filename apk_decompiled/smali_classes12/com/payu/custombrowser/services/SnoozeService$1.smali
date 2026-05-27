.class Lcom/payu/custombrowser/services/SnoozeService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/services/SnoozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/services/SnoozeService;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/services/SnoozeService;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 143
    const-string v0, "PHPSESSID"

    const-string v1, "PAYUID"

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->a(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 145
    nop

    .line 146
    nop

    .line 149
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/c;

    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v3}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/payu/custombrowser/util/c;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/c;

    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v3}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/payu/custombrowser/util/c;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->c(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v1}, Lcom/payu/custombrowser/services/SnoozeService;->c(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 151
    :cond_1
    move-object v1, v4

    .line 154
    :goto_0
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/c;

    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v3}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/payu/custombrowser/util/c;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/c;

    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v3}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/payu/custombrowser/util/c;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->d(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->d(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->d(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    const-string v4, "123456"

    .line 161
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->e(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/c;

    move-result-object v0

    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->e(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "key"

    invoke-virtual {v0, v3, v5}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/c;

    move-result-object v3

    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v5}, Lcom/payu/custombrowser/services/SnoozeService;->e(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "txnid"

    invoke-virtual {v3, v5, v6}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->f(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v3}, Lcom/payu/custombrowser/services/SnoozeService;->g(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v3

    .line 169
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command=verifyTxnStatus&var1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&key="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&priorityParam="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->h(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 171
    const v3, 0x1d4c0

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 172
    const-string v3, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v3, "Content-Length"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "Cookie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHPSESSID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; PAYUID="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 178
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 180
    nop

    .line 182
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_7

    .line 183
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 184
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/custombrowser/util/c;->a(Ljava/io/InputStream;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_6

    .line 186
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/payu/custombrowser/services/SnoozeService;->a(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)V

    .line 190
    :cond_6
    goto :goto_3

    .line 192
    :cond_7
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    const-string v1, "{\"api_status\":\"0\",\"message\":\"Some error occurred\"}"

    invoke-static {v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_8
    :goto_3
    goto :goto_4

    .line 194
    :catch_0
    move-exception v0

    .line 195
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService$1;->a:Lcom/payu/custombrowser/services/SnoozeService;

    const-string v2, "{\"api_status\":\"0\",\"message\":\"Some exception occurred\"}"

    invoke-static {v1, v2}, Lcom/payu/custombrowser/services/SnoozeService;->b(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    :goto_4
    return-void
.end method
