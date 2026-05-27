.class public Lcom/paytm/pgsdk/PaytmSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "PaytmSSLSocketFactory.java"


# static fields
.field private static final PKCS12:Ljava/lang/String; = "pkcs12"

.field private static final RAW:Ljava/lang/String; = "raw"

.field private static final TLS:Ljava/lang/String; = "TLS"

.field private static final X509:Ljava/lang/String; = "X509"


# instance fields
.field private volatile mSSLContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/paytm/pgsdk/PaytmClientCertificate;)V
    .locals 13
    .param p1, "inCtxt"    # Landroid/content/Context;
    .param p2, "inCertificate"    # Lcom/paytm/pgsdk/PaytmClientCertificate;

    .line 65
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 80
    new-instance v0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory$1;

    invoke-direct {v0, p0}, Lcom/paytm/pgsdk/PaytmSSLSocketFactory$1;-><init>(Lcom/paytm/pgsdk/PaytmSSLSocketFactory;)V

    .line 99
    .local v0, "TM":Ljavax/net/ssl/TrustManager;
    const-string v1, "set trust manager"

    const-string v2, "so, setting only the trust manager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "TLS"

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v7, p2, Lcom/paytm/pgsdk/PaytmClientCertificate;->mFileName:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading the certificate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p2, Lcom/paytm/pgsdk/PaytmClientCertificate;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".p12"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 101
    const-string v7, "pkcs12"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 102
    .local v7, "MyCert":Ljava/security/KeyStore;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p2, Lcom/paytm/pgsdk/PaytmClientCertificate;->mFileName:Ljava/lang/String;

    const-string v11, "raw"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    iget-object v9, p2, Lcom/paytm/pgsdk/PaytmClientCertificate;->mPassword:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 103
    invoke-virtual {v7}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v8

    .line 104
    .local v8, "Aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 105
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v9

    invoke-virtual {v9}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    const-string v9, "X509"

    invoke-static {v9}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v9

    .line 108
    .local v9, "KMF":Ljavax/net/ssl/KeyManagerFactory;
    iget-object v10, p2, Lcom/paytm/pgsdk/PaytmClientCertificate;->mPassword:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 110
    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v10

    iput-object v10, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    .line 111
    iget-object v10, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v9}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v11

    new-array v12, v4, [Ljavax/net/ssl/TrustManager;

    aput-object v0, v12, v3

    invoke-virtual {v10, v11, v12, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 112
    const-string v10, "Client certificate attached."

    invoke-static {v10}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 113
    .end local v7    # "MyCert":Ljava/security/KeyStore;
    .end local v8    # "Aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9    # "KMF":Ljavax/net/ssl/KeyManagerFactory;
    goto :goto_1

    .line 114
    :cond_1
    const-string v7, "Client certificate is not found"

    invoke-static {v7}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 115
    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 116
    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    iput-object v7, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    .line 117
    iget-object v7, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    new-array v8, v4, [Ljavax/net/ssl/TrustManager;

    aput-object v0, v8, v3

    invoke-virtual {v7, v6, v8, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 118
    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    goto :goto_2

    .line 120
    :catch_0
    move-exception v7

    .line 121
    .local v7, "inEx":Ljava/lang/Exception;
    const-string v8, "Exception while attaching Client certificate."

    invoke-static {v8}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 122
    invoke-static {v7}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V

    .line 124
    :try_start_1
    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 125
    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    .line 127
    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    aput-object v0, v4, v3

    invoke-virtual {v2, v6, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 128
    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    goto :goto_2

    .line 129
    :catch_1
    move-exception v1

    .line 130
    .local v1, "inEx1":Ljava/lang/Exception;
    const-string v2, "Exception while setting the trust manager"

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 131
    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V

    .line 134
    .end local v1    # "inEx1":Ljava/lang/Exception;
    .end local v7    # "inEx":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public declared-synchronized createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "inHost"    # Ljava/lang/String;
    .param p2, "iniPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 196
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmSSLSocketFactory;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 192
    .end local p1    # "inHost":Ljava/lang/String;
    .end local p2    # "iniPort":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "inHost"    # Ljava/lang/String;
    .param p2, "iniPort"    # I
    .param p3, "inLocalHost"    # Ljava/net/InetAddress;
    .param p4, "iniLocalPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 212
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmSSLSocketFactory;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 208
    .end local p1    # "inHost":Ljava/lang/String;
    .end local p2    # "iniPort":I
    .end local p3    # "inLocalHost":Ljava/net/InetAddress;
    .end local p4    # "iniLocalPort":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "inHost"    # Ljava/net/InetAddress;
    .param p2, "iniPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 204
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmSSLSocketFactory;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 200
    .end local p1    # "inHost":Ljava/net/InetAddress;
    .end local p2    # "iniPort":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "inAddress"    # Ljava/net/InetAddress;
    .param p2, "iniPort"    # I
    .param p3, "inLocalAddress"    # Ljava/net/InetAddress;
    .param p4, "iniLocalPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 220
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmSSLSocketFactory;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 216
    .end local p1    # "inAddress":Ljava/net/InetAddress;
    .end local p2    # "iniPort":I
    .end local p3    # "inLocalAddress":Ljava/net/InetAddress;
    .end local p4    # "iniLocalPort":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "inS"    # Ljava/net/Socket;
    .param p2, "inHost"    # Ljava/lang/String;
    .param p3, "iniPort"    # I
    .param p4, "inbAutoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 178
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmSSLSocketFactory;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/PaytmSSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 174
    .end local p1    # "inS":Ljava/net/Socket;
    .end local p2    # "inHost":Ljava/lang/String;
    .end local p3    # "iniPort":I
    .end local p4    # "inbAutoClose":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 183
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 188
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method
