.class public Lcom/google/firebase/storage/FileDownloadTask;
.super Lcom/google/firebase/storage/StorageTask;
.source "FileDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# static fields
.field static final PREFERRED_CHUNK_SIZE:I = 0x40000

.field private static final TAG:Ljava/lang/String; = "FileDownloadTask"


# instance fields
.field private mBytesDownloaded:J

.field private final mDestinationFile:Landroid/net/Uri;

.field private mETagVerification:Ljava/lang/String;

.field private volatile mException:Ljava/lang/Exception;

.field private mResultCode:I

.field private mResumeOffset:J

.field private mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private mStorageRef:Lcom/google/firebase/storage/StorageReference;

.field private mTotalBytes:J


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Landroid/net/Uri;)V
    .locals 8
    .param p1, "storageRef"    # Lcom/google/firebase/storage/StorageReference;
    .param p2, "destinationFile"    # Landroid/net/Uri;

    .line 47
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mTotalBytes:J

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mETagVerification:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    .line 48
    iput-object p1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 49
    iput-object p2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mDestinationFile:Landroid/net/Uri;

    .line 51
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    .line 52
    .local v0, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    new-instance v7, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 54
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 55
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v3

    .line 56
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getAppCheckProvider()Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    move-result-object v4

    .line 57
    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxDownloadRetryTimeMillis()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;J)V

    iput-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 58
    return-void
.end method

.method private fillBuffer(Ljava/io/InputStream;[B)I
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "data"    # [B

    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "readData":Z
    const/4 v1, 0x0

    .line 109
    .local v1, "offset":I
    :goto_0
    const/4 v2, -0x1

    :try_start_0
    array-length v3, p2

    if-eq v1, v3, :cond_0

    array-length v3, p2

    sub-int/2addr v3, v1

    .line 110
    invoke-virtual {p1, p2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .local v4, "count":I
    if-eq v3, v2, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 112
    add-int/2addr v1, v4

    goto :goto_0

    .line 116
    .end local v4    # "count":I
    :cond_0
    goto :goto_1

    .line 114
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 118
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method private isValidHttpResponseCode(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 270
    const/16 v0, 0x134

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private processResponse(Lcom/google/firebase/storage/network/NetworkRequest;)Z
    .locals 12
    .param p1, "request"    # Lcom/google/firebase/storage/network/NetworkRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x1

    .line 127
    .local v0, "success":Z
    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getStream()Ljava/io/InputStream;

    move-result-object v1

    .line 130
    .local v1, "stream":Ljava/io/InputStream;
    if-eqz v1, :cond_6

    .line 131
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/firebase/storage/FileDownloadTask;->mDestinationFile:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "outputFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-wide/16 v4, 0x0

    const-string v6, "FileDownloadTask"

    if-nez v3, :cond_1

    .line 133
    iget-wide v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    cmp-long v3, v7, v4

    if-gtz v3, :cond_0

    .line 136
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    .line 137
    .local v3, "created":Z
    if-nez v3, :cond_1

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to create file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    .end local v3    # "created":Z
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "The file to download to has been deleted."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    :cond_1
    :goto_0
    iget-wide v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    cmp-long v3, v7, v4

    if-lez v3, :cond_2

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resuming download file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .local v3, "output":Ljava/io/OutputStream;
    goto :goto_1

    .line 147
    .end local v3    # "output":Ljava/io/OutputStream;
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 151
    .restart local v3    # "output":Ljava/io/OutputStream;
    :goto_1
    const/high16 v4, 0x40000

    :try_start_0
    new-array v4, v4, [B

    .line 154
    .local v4, "data":[B
    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    invoke-direct {p0, v1, v4}, Lcom/google/firebase/storage/FileDownloadTask;->fillBuffer(Ljava/io/InputStream;[B)I

    move-result v5

    move v7, v5

    .local v7, "count":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_5

    .line 155
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 156
    iget-wide v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    int-to-long v10, v7

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    .line 158
    iget-object v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    if-eqz v8, :cond_4

    .line 159
    const-string v8, "Exception occurred during file download. Retrying."

    iget-object v9, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    invoke-static {v6, v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 161
    const/4 v0, 0x0

    .line 164
    :cond_4
    const/4 v8, 0x4

    invoke-virtual {p0, v8, v5}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    .line 165
    const/4 v0, 0x0

    goto :goto_2

    .line 169
    .end local v4    # "data":[B
    .end local v7    # "count":I
    :cond_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 170
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 171
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 172
    nop

    .line 173
    .end local v2    # "outputFile":Ljava/io/File;
    goto :goto_3

    .line 169
    .restart local v2    # "outputFile":Ljava/io/File;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 170
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 171
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 172
    throw v4

    .line 174
    .end local v2    # "outputFile":Ljava/io/File;
    .end local v3    # "output":Ljava/io/OutputStream;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to open Firebase Storage stream."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 175
    const/4 v0, 0x0

    .line 178
    :goto_3
    return v0
.end method


# virtual methods
.method getDownloadedSizeInBytes()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    return-wide v0
.end method

.method getStorage()Lcom/google/firebase/storage/StorageReference;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method getTotalBytes()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mTotalBytes:J

    return-wide v0
.end method

.method protected onCanceled()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->cancel()V

    .line 266
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 267
    return-void
.end method

.method run()V
    .locals 14

    .line 185
    iget-object v0, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z

    .line 187
    return-void

    .line 190
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 191
    return-void

    .line 195
    :cond_1
    :goto_0
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    .line 196
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 197
    iget-object v6, p0, Lcom/google/firebase/storage/FileDownloadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v6}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->reset()V

    .line 198
    new-instance v6, Lcom/google/firebase/storage/network/GetNetworkRequest;

    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 200
    invoke-virtual {v7}, Lcom/google/firebase/storage/StorageReference;->getStorageReferenceUri()Lcom/google/firebase/storage/internal/StorageReferenceUri;

    move-result-object v7

    iget-object v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v8}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v8

    iget-wide v9, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/firebase/storage/network/GetNetworkRequest;-><init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;J)V

    .line 202
    .local v6, "request":Lcom/google/firebase/storage/network/NetworkRequest;
    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v7, v6, v2}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;Z)V

    .line 203
    invoke-virtual {v6}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultCode()I

    move-result v7

    iput v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    .line 204
    invoke-virtual {v6}, Lcom/google/firebase/storage/network/NetworkRequest;->getException()Ljava/lang/Exception;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/google/firebase/storage/network/NetworkRequest;->getException()Ljava/lang/Exception;

    move-result-object v7

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    :goto_1
    iput-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 206
    iget v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    .line 207
    invoke-direct {p0, v7}, Lcom/google/firebase/storage/FileDownloadTask;->isValidHttpResponseCode(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    if-nez v7, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->getInternalState()I

    move-result v7

    if-ne v7, v0, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 211
    .local v7, "success":Z
    :goto_2
    const-string v9, "FileDownloadTask"

    if-eqz v7, :cond_5

    .line 212
    invoke-virtual {v6}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultingContentLength()I

    move-result v10

    int-to-long v10, v10

    iget-wide v12, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/google/firebase/storage/FileDownloadTask;->mTotalBytes:J

    .line 213
    const-string v10, "ETag"

    invoke-virtual {v6, v10}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 214
    .local v10, "newEtag":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/google/firebase/storage/FileDownloadTask;->mETagVerification:Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 216
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 217
    const-string v0, "The file at the server has changed.  Restarting from the beginning."

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-wide v3, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    .line 219
    iput-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mETagVerification:Ljava/lang/String;

    .line 220
    invoke-virtual {v6}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestEnd()V

    .line 221
    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->schedule()V

    .line 222
    return-void

    .line 225
    :cond_4
    iput-object v10, p0, Lcom/google/firebase/storage/FileDownloadTask;->mETagVerification:Ljava/lang/String;

    .line 228
    :try_start_0
    invoke-direct {p0, v6}, Lcom/google/firebase/storage/FileDownloadTask;->processResponse(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v5

    .line 232
    goto :goto_3

    .line 229
    :catch_0
    move-exception v5

    .line 230
    .local v5, "e":Ljava/io/IOException;
    const-string v11, "Exception occurred during file write.  Aborting."

    invoke-static {v9, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    iput-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    .line 235
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "newEtag":Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-virtual {v6}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestEnd()V

    .line 236
    if-eqz v7, :cond_6

    iget-object v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->getInternalState()I

    move-result v5

    if-ne v5, v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    move v5, v8

    .line 238
    .end local v7    # "success":Z
    .local v5, "success":Z
    if-eqz v5, :cond_7

    .line 239
    const/16 v0, 0x80

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z

    .line 240
    return-void

    .line 242
    :cond_7
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/google/firebase/storage/FileDownloadTask;->mDestinationFile:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v7, "outputFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 244
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    goto :goto_5

    .line 246
    :cond_8
    iput-wide v3, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    .line 248
    :goto_5
    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->getInternalState()I

    move-result v8

    const/16 v10, 0x8

    if-ne v8, v10, :cond_9

    .line 249
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z

    .line 250
    return-void

    .line 251
    :cond_9
    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->getInternalState()I

    move-result v8

    const/16 v10, 0x20

    if-ne v8, v10, :cond_b

    .line 252
    const/16 v0, 0x100

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z

    move-result v0

    if-nez v0, :cond_a

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to change download task to final state from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->getInternalState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_a
    return-void

    .line 258
    .end local v5    # "success":Z
    .end local v6    # "request":Lcom/google/firebase/storage/network/NetworkRequest;
    .end local v7    # "outputFile":Ljava/io/File;
    :cond_b
    iget-wide v5, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    cmp-long v7, v5, v3

    if-gtz v7, :cond_c

    .line 260
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/storage/FileDownloadTask;->tryChangeState(IZ)Z

    .line 261
    return-void

    .line 258
    :cond_c
    goto/16 :goto_0
.end method

.method protected schedule()V
    .locals 2

    .line 84
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleDownload(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method snapStateImpl()Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;
    .locals 6

    .line 90
    new-instance v0, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;

    iget-object v1, p0, Lcom/google/firebase/storage/FileDownloadTask;->mException:Ljava/lang/Exception;

    iget v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResultCode:I

    .line 91
    invoke-static {v1, v2}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/storage/FileDownloadTask;->mBytesDownloaded:J

    iget-wide v4, p0, Lcom/google/firebase/storage/FileDownloadTask;->mResumeOffset:J

    add-long/2addr v2, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;-><init>(Lcom/google/firebase/storage/FileDownloadTask;Ljava/lang/Exception;J)V

    .line 90
    return-object v0
.end method

.method bridge synthetic snapStateImpl()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/firebase/storage/FileDownloadTask;->snapStateImpl()Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method
