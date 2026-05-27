.class public Lcom/payu/socketverification/core/PayUNetworkAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "payuNetworkAsyncTaskInterface"    # Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;
    .param p2, "webserviceType"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    nop

    .end local p1    # "payuNetworkAsyncTaskInterface":Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;
    iput-object p1, p0, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;->a:Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;

    .line 36
    nop

    .end local p0    # "this":Lcom/payu/socketverification/core/PayUNetworkAsyncTask;
    .end local p2    # "webserviceType":Ljava/lang/String;
    iput-object p2, p0, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;->b:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    nop

    .end local p0    # "this":Lcom/payu/socketverification/core/PayUNetworkAsyncTask;
    check-cast p1, [Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;

    invoke-virtual {p0, p1}, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;->doInBackground([Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;)Ljava/lang/String;
    .locals 6
    .param p1, "payUNetworkAsyncTaskData"    # [Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;

    .line 53
    const-string v0, "PayU"

    .end local p1    # "payUNetworkAsyncTaskData":[Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;
    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 55
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "URL Verify UPI "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 58
    invoke-virtual {p1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 59
    new-instance v3, Lcom/payu/socketverification/core/a;

    invoke-direct {v3}, Lcom/payu/socketverification/core/a;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 60
    const v3, 0x1d4c0

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 61
    const-string v3, "Content-Type"

    invoke-virtual {p1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v3, "Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->getPostData()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->getPostData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->getPostData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Request Data Verify: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->getPostData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 66
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 67
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 69
    :goto_1
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 70
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "VPA Verify Response "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Verify Error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 25
    nop

    .end local p0    # "this":Lcom/payu/socketverification/core/PayUNetworkAsyncTask;
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 84
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;->a:Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;

    .end local p0    # "this":Lcom/payu/socketverification/core/PayUNetworkAsyncTask;
    .end local p1    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;->onPayuNetworkAsyncTaskResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 42
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 43
    return-void
.end method
