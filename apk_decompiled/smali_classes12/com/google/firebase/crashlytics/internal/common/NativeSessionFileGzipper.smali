.class Lcom/google/firebase/crashlytics/internal/common/NativeSessionFileGzipper;
.super Ljava/lang/Object;
.source "NativeSessionFileGzipper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static gzipInputStream(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    if-nez p0, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 54
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 56
    .local v1, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 60
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "read":I
    if-lez v2, :cond_1

    .line 61
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v3    # "read":I
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 67
    nop

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 67
    throw v2
.end method

.method static processNativeSessions(Ljava/io/File;Ljava/util/List;)V
    .locals 5
    .param p0, "nativeSessionDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "streams":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;

    .line 32
    .local v1, "stream":Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;
    const/4 v2, 0x0

    .line 34
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;->getStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 35
    if-nez v2, :cond_0

    .line 43
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    .line 39
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;->getReportsEndpointFilename()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-static {v2, v3}, Lcom/google/firebase/crashlytics/internal/common/NativeSessionFileGzipper;->gzipInputStream(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 44
    throw v0

    .line 40
    :catch_0
    move-exception v3

    .line 43
    :goto_1
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 44
    nop

    .line 45
    .end local v1    # "stream":Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method
