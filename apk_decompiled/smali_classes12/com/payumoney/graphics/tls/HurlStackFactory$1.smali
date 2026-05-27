.class final Lcom/payumoney/graphics/tls/HurlStackFactory$1;
.super Lcom/android/volley/toolbox/HurlStack;
.source "HurlStackFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/graphics/tls/HurlStackFactory;->getHurlStack()Lcom/android/volley/toolbox/HurlStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    return-void
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 19
    .local v0, "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    new-instance v1, Lcom/payumoney/graphics/tls/TLSSocketFactory;

    invoke-direct {v1}, Lcom/payumoney/graphics/tls/TLSSocketFactory;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
