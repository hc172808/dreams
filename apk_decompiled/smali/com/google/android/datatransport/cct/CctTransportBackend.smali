.class final Lcom/google/android/datatransport/cct/CctTransportBackend;
.super Ljava/lang/Object;
.source "CctTransportBackend.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/backends/TransportBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;,
        Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;
    }
.end annotation


# static fields
.field private static final ACCEPT_ENCODING_HEADER_KEY:Ljava/lang/String; = "Accept-Encoding"

.field static final API_KEY_HEADER_KEY:Ljava/lang/String; = "X-Goog-Api-Key"

.field private static final CONNECTION_TIME_OUT:I = 0x7530

.field private static final CONTENT_ENCODING_HEADER_KEY:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE_HEADER_KEY:Ljava/lang/String; = "Content-Type"

.field private static final GZIP_CONTENT_ENCODING:Ljava/lang/String; = "gzip"

.field private static final INVALID_VERSION_CODE:I = -0x1

.field private static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final KEY_APPLICATION_BUILD:Ljava/lang/String; = "application_build"

.field private static final KEY_COUNTRY:Ljava/lang/String; = "country"

.field private static final KEY_DEVICE:Ljava/lang/String; = "device"

.field private static final KEY_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final KEY_HARDWARE:Ljava/lang/String; = "hardware"

.field private static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final KEY_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field private static final KEY_MCC_MNC:Ljava/lang/String; = "mcc_mnc"

.field static final KEY_MOBILE_SUBTYPE:Ljava/lang/String; = "mobile-subtype"

.field private static final KEY_MODEL:Ljava/lang/String; = "model"

.field static final KEY_NETWORK_TYPE:Ljava/lang/String; = "net-type"

.field private static final KEY_OS_BUILD:Ljava/lang/String; = "os-uild"

.field private static final KEY_PRODUCT:Ljava/lang/String; = "product"

.field private static final KEY_SDK_VERSION:Ljava/lang/String; = "sdk-version"

.field private static final KEY_TIMEZONE_OFFSET:Ljava/lang/String; = "tz-offset"

.field private static final LOG_TAG:Ljava/lang/String; = "CctTransportBackend"

.field private static final READ_TIME_OUT:I = 0x9c40


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final dataEncoder:Lcom/google/firebase/encoders/DataEncoder;

.field final endPoint:Ljava/net/URL;

.field private final readTimeout:I

.field private final uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final wallTimeClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "wallTimeClock"    # Lcom/google/android/datatransport/runtime/time/Clock;
    .param p3, "uptimeClock"    # Lcom/google/android/datatransport/runtime/time/Clock;

    .line 129
    const v0, 0x9c40

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/datatransport/cct/CctTransportBackend;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;I)V

    .line 130
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;I)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "wallTimeClock"    # Lcom/google/android/datatransport/runtime/time/Clock;
    .param p3, "uptimeClock"    # Lcom/google/android/datatransport/runtime/time/Clock;
    .param p4, "readTimeout"    # I

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;->createDataEncoder()Lcom/google/firebase/encoders/DataEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->dataEncoder:Lcom/google/firebase/encoders/DataEncoder;

    .line 119
    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->applicationContext:Landroid/content/Context;

    .line 120
    nop

    .line 121
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 122
    sget-object v0, Lcom/google/android/datatransport/cct/CCTDestination;->DEFAULT_END_POINT:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/datatransport/cct/CctTransportBackend;->parseUrlOrThrow(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->endPoint:Ljava/net/URL;

    .line 123
    iput-object p3, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 124
    iput-object p2, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->wallTimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 125
    iput p4, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->readTimeout:I

    .line 126
    return-void
.end method

.method private doSend(Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;
    .locals 13
    .param p1, "request"    # Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget-object v0, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->url:Ljava/net/URL;

    const-string v1, "CctTransportBackend"

    const-string v2, "Making request to: %s"

    invoke-static {v1, v2, v0}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    iget-object v0, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 289
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 290
    iget v2, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->readTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 291
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 292
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 293
    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 294
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "3.0.0"

    aput-object v4, v2, v3

    .line 295
    const-string v3, "datatransport/%s android/"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 294
    const-string v3, "User-Agent"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v4, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v5, "Accept-Encoding"

    invoke-virtual {v0, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v3, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->apiKey:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 301
    iget-object v3, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->apiKey:Ljava/lang/String;

    const-string v5, "X-Goog-Api-Key"

    invoke-virtual {v0, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .local v7, "conn":Ljava/io/OutputStream;
    :try_start_1
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 308
    .local v8, "outputStream":Ljava/io/OutputStream;
    :try_start_2
    iget-object v9, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->dataEncoder:Lcom/google/firebase/encoders/DataEncoder;

    iget-object v10, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->requestBody:Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-direct {v12, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {v9, v10, v11}, Lcom/google/firebase/encoders/DataEncoder;->encode(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 310
    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .end local v8    # "outputStream":Ljava/io/OutputStream;
    if-eqz v7, :cond_1

    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 316
    .end local v7    # "conn":Ljava/io/OutputStream;
    :cond_1
    nop

    .line 318
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 319
    .local v7, "responseCode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Status Code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/google/android/datatransport/runtime/logging/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content-Type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/datatransport/runtime/logging/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Encoding: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/datatransport/runtime/logging/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/16 v1, 0x12e

    if-eq v7, v1, :cond_8

    const/16 v1, 0x12d

    if-eq v7, v1, :cond_8

    const/16 v1, 0x133

    if-ne v7, v1, :cond_2

    goto :goto_2

    .line 327
    :cond_2
    const/16 v1, 0xc8

    if-eq v7, v1, :cond_3

    .line 328
    new-instance v1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    invoke-direct {v1, v7, v3, v5, v6}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;-><init>(ILjava/net/URL;J)V

    return-object v1

    .line 331
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 332
    .local v1, "connStream":Ljava/io/InputStream;
    nop

    .line 333
    :try_start_5
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/datatransport/cct/CctTransportBackend;->maybeUnGzip(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 334
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 335
    invoke-static {v4}, Lcom/google/android/datatransport/cct/internal/LogResponse;->fromJson(Ljava/io/Reader;)Lcom/google/android/datatransport/cct/internal/LogResponse;

    move-result-object v4

    .line 336
    invoke-virtual {v4}, Lcom/google/android/datatransport/cct/internal/LogResponse;->getNextRequestWaitMillis()J

    move-result-wide v4

    .line 337
    .local v4, "nextRequestMillis":J
    new-instance v6, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    invoke-direct {v6, v7, v3, v4, v5}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;-><init>(ILjava/net/URL;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 338
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 337
    :cond_5
    return-object v6

    .line 331
    .end local v4    # "nextRequestMillis":J
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_9
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "connStream":Ljava/io/InputStream;
    .end local v7    # "responseCode":I
    .end local p1    # "request":Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;
    :cond_6
    :goto_0
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v1    # "connStream":Ljava/io/InputStream;
    .restart local v7    # "responseCode":I
    .restart local p1    # "request":Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_7

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v2

    .line 324
    .end local v1    # "connStream":Ljava/io/InputStream;
    :cond_8
    :goto_2
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "redirect":Ljava/lang/String;
    new-instance v2, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7, v3, v5, v6}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;-><init>(ILjava/net/URL;J)V

    return-object v2

    .line 304
    .end local v1    # "redirect":Ljava/lang/String;
    .local v7, "conn":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    :catchall_4
    move-exception v2

    :try_start_b
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v4

    :try_start_c
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "conn":Ljava/io/OutputStream;
    .end local p1    # "request":Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;
    :goto_3
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "conn":Ljava/io/OutputStream;
    .restart local p1    # "request":Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;
    :catchall_6
    move-exception v2

    if-eqz v7, :cond_9

    :try_start_d
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v4

    :try_start_e
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local p1    # "request":Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;
    :cond_9
    :goto_4
    throw v2
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 313
    .end local v7    # "conn":Ljava/io/OutputStream;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local p1    # "request":Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;
    :catch_0
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    .line 314
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    const-string v4, "Couldn\'t encode request, returning with 400"

    invoke-static {v1, v4, v2}, Lcom/google/android/datatransport/runtime/logging/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    new-instance v1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    const/16 v4, 0x190

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;-><init>(ILjava/net/URL;J)V

    return-object v1

    .line 310
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_6

    :catch_3
    move-exception v2

    .line 311
    .local v2, "e":Ljava/io/IOException;
    :goto_6
    const-string v4, "Couldn\'t open connection, returning with 500"

    invoke-static {v1, v4, v2}, Lcom/google/android/datatransport/runtime/logging/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    new-instance v1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    const/16 v4, 0x1f4

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;-><init>(ILjava/net/URL;J)V

    return-object v1
.end method

.method private static getNetSubtypeValue(Landroid/net/NetworkInfo;)I
    .locals 2
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 185
    if-nez p0, :cond_0

    .line 186
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->UNKNOWN_MOBILE_SUBTYPE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    invoke-virtual {v0}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->getValue()I

    move-result v0

    return v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 189
    .local v0, "subtype":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 190
    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->COMBINED:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    invoke-virtual {v1}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->getValue()I

    move-result v1

    return v1

    .line 192
    :cond_1
    invoke-static {v0}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->forNumber(I)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static getNetTypeValue(Landroid/net/NetworkInfo;)I
    .locals 1
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 177
    if-nez p0, :cond_0

    .line 178
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->NONE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->getValue()I

    move-result v0

    return v0

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0
.end method

.method private static getPackageVersionCode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 138
    nop

    .line 140
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .local v0, "packageVersionCode":I
    return v0

    .line 144
    .end local v0    # "packageVersionCode":I
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "CctTransportBackend"

    const-string v2, "Unable to find version code for package"

    invoke-static {v1, v2, v0}, Lcom/google/android/datatransport/runtime/logging/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, -0x1

    return v0
.end method

.method private getRequestBody(Lcom/google/android/datatransport/runtime/backends/BackendRequest;)Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;
    .locals 16
    .param p1, "backendRequest"    # Lcom/google/android/datatransport/runtime/backends/BackendRequest;

    .line 196
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 197
    .local v2, "eventInternalMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/google/android/datatransport/runtime/EventInternal;>;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getEvents()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 198
    .local v3, "eventInternal":Lcom/google/android/datatransport/runtime/EventInternal;
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/EventInternal;->getTransportName()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 201
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v5, "eventInternalList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/datatransport/runtime/EventInternal;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .end local v5    # "eventInternalList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/datatransport/runtime/EventInternal;>;"
    goto :goto_1

    .line 205
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v3    # "eventInternal":Lcom/google/android/datatransport/runtime/EventInternal;
    .end local v4    # "key":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 208
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 209
    .local v3, "batchedRequests":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/datatransport/cct/internal/LogRequest;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Map$Entry;

    .line 210
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/google/android/datatransport/runtime/EventInternal;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 212
    .local v6, "firstEvent":Lcom/google/android/datatransport/runtime/EventInternal;
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/LogRequest;->builder()Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    move-result-object v0

    sget-object v7, Lcom/google/android/datatransport/cct/internal/QosTier;->DEFAULT:Lcom/google/android/datatransport/cct/internal/QosTier;

    .line 213
    invoke-virtual {v0, v7}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setQosTier(Lcom/google/android/datatransport/cct/internal/QosTier;)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    move-result-object v0

    iget-object v7, v1, Lcom/google/android/datatransport/cct/CctTransportBackend;->wallTimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 214
    invoke-interface {v7}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setRequestTimeMs(J)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    move-result-object v0

    iget-object v7, v1, Lcom/google/android/datatransport/cct/CctTransportBackend;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 215
    invoke-interface {v7}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setRequestUptimeMs(J)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    move-result-object v0

    .line 217
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/ClientInfo;->builder()Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->ANDROID_FIREBASE:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 218
    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;->setClientType(Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;)Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;

    move-result-object v7

    .line 220
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->builder()Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    move-result-object v8

    .line 221
    const-string v9, "sdk-version"

    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setSdkVersion(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    move-result-object v8

    .line 222
    const-string v9, "model"

    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setModel(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    move-result-object v8

    .line 223
    const-string v9, "hardware"

    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setHardware(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    move-result-object v8

    .line 224
    const-string v9, "device"

    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setDevice(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    move-result-object v8

    .line 225
    const-string v9, "product"

    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setProduct(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    move-result-object v8

    .line 226
    const-string v9, "os-uild"

    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setOsBuild(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    move-result-object v8

    .line 227
    const-string v9, "manufacturer"

    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setManufacturer(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    move-result-object v8

    .line 228
    const-string v9, "fingerprint"

    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setFingerprint(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    move-result-object v8

    .line 229
    const-string v9, "country"

    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    move-result-object v8

    .line 230
    const-string v9, "locale"

    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setLocale(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    move-result-object v8

    .line 231
    const-string v9, "mcc_mnc"

    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setMccMnc(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    move-result-object v8

    .line 232
    const-string v9, "application_build"

    invoke-virtual {v6, v9}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setApplicationBuild(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    move-result-object v8

    .line 233
    invoke-virtual {v8}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->build()Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    move-result-object v8

    .line 219
    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;->setAndroidClientInfo(Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;)Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;

    move-result-object v7

    .line 234
    invoke-virtual {v7}, Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;->build()Lcom/google/android/datatransport/cct/internal/ClientInfo;

    move-result-object v7

    .line 216
    invoke-virtual {v0, v7}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setClientInfo(Lcom/google/android/datatransport/cct/internal/ClientInfo;)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    move-result-object v7

    .line 238
    .local v7, "requestBuilder":Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;
    :try_start_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setSource(I)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_3

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setSource(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 243
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "logEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/datatransport/cct/internal/LogEvent;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 245
    .local v9, "eventInternal":Lcom/google/android/datatransport/runtime/EventInternal;
    invoke-virtual {v9}, Lcom/google/android/datatransport/runtime/EventInternal;->getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;

    move-result-object v10

    .line 246
    .local v10, "encodedPayload":Lcom/google/android/datatransport/runtime/EncodedPayload;
    invoke-virtual {v10}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getEncoding()Lcom/google/android/datatransport/Encoding;

    move-result-object v11

    .line 249
    .local v11, "encoding":Lcom/google/android/datatransport/Encoding;
    const-string v12, "proto"

    invoke-static {v12}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 250
    invoke-virtual {v10}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getBytes()[B

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/datatransport/cct/internal/LogEvent;->protoBuilder([B)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    move-result-object v12

    .local v12, "event":Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    goto :goto_5

    .line 251
    .end local v12    # "event":Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    :cond_2
    const-string v12, "json"

    invoke-static {v12}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 252
    new-instance v12, Ljava/lang/String;

    .line 253
    invoke-virtual {v10}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getBytes()[B

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v12}, Lcom/google/android/datatransport/cct/internal/LogEvent;->jsonBuilder(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    move-result-object v12

    .line 259
    .restart local v12    # "event":Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    :goto_5
    nop

    .line 260
    invoke-virtual {v9}, Lcom/google/android/datatransport/runtime/EventInternal;->getEventMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->setEventTimeMs(J)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    move-result-object v13

    .line 261
    invoke-virtual {v9}, Lcom/google/android/datatransport/runtime/EventInternal;->getUptimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->setEventUptimeMs(J)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    move-result-object v13

    .line 262
    const-string/jumbo v14, "tz-offset"

    invoke-virtual {v9, v14}, Lcom/google/android/datatransport/runtime/EventInternal;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->setTimezoneOffsetSeconds(J)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    move-result-object v13

    .line 264
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;->builder()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;

    move-result-object v14

    .line 267
    const-string v15, "net-type"

    invoke-virtual {v9, v15}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    move-result v15

    .line 266
    invoke-static {v15}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->forNumber(I)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    move-result-object v15

    .line 265
    invoke-virtual {v14, v15}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;->setNetworkType(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;

    move-result-object v14

    .line 270
    const-string v15, "mobile-subtype"

    invoke-virtual {v9, v15}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    move-result v15

    .line 269
    invoke-static {v15}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->forNumber(I)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    move-result-object v15

    .line 268
    invoke-virtual {v14, v15}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;->setMobileSubtype(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;

    move-result-object v14

    .line 271
    invoke-virtual {v14}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;->build()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    move-result-object v14

    .line 263
    invoke-virtual {v13, v14}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->setNetworkConnectionInfo(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 273
    invoke-virtual {v9}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 274
    invoke-virtual {v9}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->setEventCode(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 276
    :cond_3
    invoke-virtual {v12}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->build()Lcom/google/android/datatransport/cct/internal/LogEvent;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v9    # "eventInternal":Lcom/google/android/datatransport/runtime/EventInternal;
    .end local v10    # "encodedPayload":Lcom/google/android/datatransport/runtime/EncodedPayload;
    .end local v11    # "encoding":Lcom/google/android/datatransport/Encoding;
    .end local v12    # "event":Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;
    goto/16 :goto_4

    .line 255
    .restart local v9    # "eventInternal":Lcom/google/android/datatransport/runtime/EventInternal;
    .restart local v10    # "encodedPayload":Lcom/google/android/datatransport/runtime/EncodedPayload;
    .restart local v11    # "encoding":Lcom/google/android/datatransport/Encoding;
    :cond_4
    const-string v12, "CctTransportBackend"

    const-string v13, "Received event of unsupported encoding %s. Skipping..."

    invoke-static {v12, v13, v11}, Lcom/google/android/datatransport/runtime/logging/Logging;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    goto/16 :goto_4

    .line 278
    .end local v9    # "eventInternal":Lcom/google/android/datatransport/runtime/EventInternal;
    .end local v10    # "encodedPayload":Lcom/google/android/datatransport/runtime/EncodedPayload;
    .end local v11    # "encoding":Lcom/google/android/datatransport/Encoding;
    :cond_5
    invoke-virtual {v7, v0}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setLogEvents(Ljava/util/List;)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 279
    invoke-virtual {v7}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->build()Lcom/google/android/datatransport/cct/internal/LogRequest;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v0    # "logEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/datatransport/cct/internal/LogEvent;>;"
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/google/android/datatransport/runtime/EventInternal;>;>;"
    .end local v6    # "firstEvent":Lcom/google/android/datatransport/runtime/EventInternal;
    .end local v7    # "requestBuilder":Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;
    goto/16 :goto_2

    .line 282
    :cond_6
    invoke-static {v3}, Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;->create(Ljava/util/List;)Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    move-result-object v0

    return-object v0
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 133
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static getTzOffset()J
    .locals 3

    .line 402
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 403
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 404
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    return-wide v1
.end method

.method public static synthetic lambda$bLAzIpNF4NtapXlUpPVGhzxyNT8(Lcom/google/android/datatransport/cct/CctTransportBackend;Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/cct/CctTransportBackend;->doSend(Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$send$0(Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;
    .locals 3
    .param p0, "req"    # Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;
    .param p1, "resp"    # Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    .line 378
    iget-object v0, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->redirectUrl:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->redirectUrl:Ljava/net/URL;

    const-string v1, "CctTransportBackend"

    const-string v2, "Following redirect to: %s"

    invoke-static {v1, v2, v0}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    iget-object v0, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->redirectUrl:Ljava/net/URL;

    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->withUrl(Ljava/net/URL;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;

    move-result-object v0

    return-object v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static maybeUnGzip(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "contentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    const-string v0, "gzip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 346
    :cond_0
    return-object p0
.end method

.method private static parseUrlOrThrow(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .line 111
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public decorate(Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/EventInternal;
    .locals 5
    .param p1, "eventInternal"    # Lcom/google/android/datatransport/runtime/EventInternal;

    .line 152
    iget-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 154
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    nop

    .line 155
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->toBuilder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 156
    const-string v3, "sdk-version"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 157
    const-string v3, "model"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 158
    const-string v3, "hardware"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 159
    const-string v3, "device"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 160
    const-string v3, "product"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 161
    const-string v3, "os-uild"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 162
    const-string v3, "manufacturer"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 163
    const-string v3, "fingerprint"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    .line 164
    invoke-static {}, Lcom/google/android/datatransport/cct/CctTransportBackend;->getTzOffset()J

    move-result-wide v2

    const-string/jumbo v4, "tz-offset"

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    .line 165
    invoke-static {v0}, Lcom/google/android/datatransport/cct/CctTransportBackend;->getNetTypeValue(Landroid/net/NetworkInfo;)I

    move-result v2

    const-string v3, "net-type"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    .line 166
    invoke-static {v0}, Lcom/google/android/datatransport/cct/CctTransportBackend;->getNetSubtypeValue(Landroid/net/NetworkInfo;)I

    move-result v2

    const-string v3, "mobile-subtype"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    .line 167
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "country"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    .line 168
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "locale"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->applicationContext:Landroid/content/Context;

    .line 169
    invoke-static {v2}, Lcom/google/android/datatransport/cct/CctTransportBackend;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mcc_mnc"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->applicationContext:Landroid/content/Context;

    .line 171
    invoke-static {v2}, Lcom/google/android/datatransport/cct/CctTransportBackend;->getPackageVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    const-string v3, "application_build"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v1

    .line 154
    return-object v1
.end method

.method public send(Lcom/google/android/datatransport/runtime/backends/BackendRequest;)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    .locals 7
    .param p1, "request"    # Lcom/google/android/datatransport/runtime/backends/BackendRequest;

    .line 351
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/cct/CctTransportBackend;->getRequestBody(Lcom/google/android/datatransport/runtime/backends/BackendRequest;)Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    move-result-object v0

    .line 355
    .local v0, "requestBody":Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;
    const/4 v1, 0x0

    .line 356
    .local v1, "apiKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->endPoint:Ljava/net/URL;

    .line 357
    .local v2, "actualEndPoint":Ljava/net/URL;
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getExtras()[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 359
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getExtras()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/datatransport/cct/CCTDestination;->fromByteArray([B)Lcom/google/android/datatransport/cct/CCTDestination;

    move-result-object v3

    .line 360
    .local v3, "destination":Lcom/google/android/datatransport/cct/CCTDestination;
    invoke-virtual {v3}, Lcom/google/android/datatransport/cct/CCTDestination;->getAPIKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 361
    invoke-virtual {v3}, Lcom/google/android/datatransport/cct/CCTDestination;->getAPIKey()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 363
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/datatransport/cct/CCTDestination;->getEndPoint()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 364
    invoke-virtual {v3}, Lcom/google/android/datatransport/cct/CCTDestination;->getEndPoint()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/datatransport/cct/CctTransportBackend;->parseUrlOrThrow(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 368
    .end local v3    # "destination":Lcom/google/android/datatransport/cct/CCTDestination;
    :cond_1
    goto :goto_0

    .line 366
    :catch_0
    move-exception v3

    .line 367
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->fatalError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v4

    return-object v4

    .line 372
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_0
    const/4 v3, 0x5

    :try_start_1
    new-instance v4, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;

    invoke-direct {v4, v2, v0, v1}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;-><init>(Ljava/net/URL;Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/datatransport/cct/-$$Lambda$CctTransportBackend$bLAzIpNF4NtapXlUpPVGhzxyNT8;

    invoke-direct {v5, p0}, Lcom/google/android/datatransport/cct/-$$Lambda$CctTransportBackend$bLAzIpNF4NtapXlUpPVGhzxyNT8;-><init>(Lcom/google/android/datatransport/cct/CctTransportBackend;)V

    sget-object v6, Lcom/google/android/datatransport/cct/-$$Lambda$CctTransportBackend$S-r8nBLtE2gbjrB4Xb4-7yhMlbw;->INSTANCE:Lcom/google/android/datatransport/cct/-$$Lambda$CctTransportBackend$S-r8nBLtE2gbjrB4Xb4-7yhMlbw;

    .line 373
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/datatransport/runtime/retries/Retries;->retry(ILjava/lang/Object;Lcom/google/android/datatransport/runtime/retries/Function;Lcom/google/android/datatransport/runtime/retries/RetryStrategy;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    .line 387
    .local v3, "response":Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;
    iget v4, v3, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->code:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    .line 388
    iget-wide v4, v3, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->nextRequestMillis:J

    invoke-static {v4, v5}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->ok(J)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v4

    return-object v4

    .line 389
    :cond_3
    iget v4, v3, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->code:I

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_5

    iget v4, v3, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->code:I

    const/16 v5, 0x194

    if-ne v4, v5, :cond_4

    goto :goto_1

    .line 392
    :cond_4
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->fatalError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v4

    return-object v4

    .line 390
    :cond_5
    :goto_1
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->transientError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 394
    .end local v3    # "response":Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;
    :catch_1
    move-exception v3

    .line 395
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "CctTransportBackend"

    const-string v5, "Could not make request to the backend"

    invoke-static {v4, v5, v3}, Lcom/google/android/datatransport/runtime/logging/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->transientError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v4

    return-object v4
.end method
