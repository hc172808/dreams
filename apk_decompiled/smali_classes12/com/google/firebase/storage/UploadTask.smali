.class public Lcom/google/firebase/storage/UploadTask;
.super Lcom/google/firebase/storage/StorageTask;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/storage/StorageTask<",
        "Lcom/google/firebase/storage/UploadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final MAXIMUM_CHUNK_SIZE:I = 0x2000000

.field static final PREFERRED_CHUNK_SIZE:I = 0x40000

.field private static final RESUMABLE_FINAL_STATUS:Ljava/lang/String; = "final"

.field private static final TAG:Ljava/lang/String; = "UploadTask"

.field private static final X_GOOG_UPLOAD_URL:Ljava/lang/String; = "X-Goog-Upload-URL"


# instance fields
.field private final mAppCheckProvider:Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

.field private final mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

.field private final mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

.field private mCurrentChunkSize:I

.field private volatile mException:Ljava/lang/Exception;

.field private mIsStreamOwned:Z

.field private volatile mMetadata:Lcom/google/firebase/storage/StorageMetadata;

.field private volatile mResultCode:I

.field private mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

.field private volatile mServerException:Ljava/lang/Exception;

.field private volatile mServerStatus:Ljava/lang/String;

.field private final mStorageRef:Lcom/google/firebase/storage/StorageReference;

.field private final mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

.field private final mTotalByteCount:J

.field private volatile mUploadUri:Landroid/net/Uri;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 11
    .param p1, "targetRef"    # Lcom/google/firebase/storage/StorageReference;
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;
    .param p3, "file"    # Landroid/net/Uri;
    .param p4, "existingUploadUri"    # Landroid/net/Uri;

    .line 101
    const-string v0, "UploadTask"

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    .line 63
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    const/high16 v1, 0x40000

    iput v1, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    .line 70
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    .line 71
    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 72
    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    .line 73
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 102
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v2

    .line 107
    .local v2, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 108
    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 109
    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v5

    iput-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 110
    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getAppCheckProvider()Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    move-result-object v6

    iput-object v6, p0, Lcom/google/firebase/storage/UploadTask;->mAppCheckProvider:Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    .line 111
    iput-object p3, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    .line 112
    const/4 v9, 0x0

    .line 113
    .local v9, "inputStream":Ljava/io/InputStream;
    new-instance v10, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 115
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 118
    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxUploadRetryTimeMillis()J

    move-result-wide v7

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;J)V

    iput-object v10, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 119
    const-wide/16 v3, -0x1

    .line 121
    .local v3, "size":J
    nop

    .line 122
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 124
    .local v5, "resolver":Landroid/content/ContentResolver;
    :try_start_1
    const-string v6, "r"

    invoke-virtual {v5, p3, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 125
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_0

    .line 126
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v7

    move-wide v3, v7

    .line 127
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 135
    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    goto :goto_1

    .line 133
    :catch_0
    move-exception v6

    .line 134
    .local v6, "checkSizeError":Ljava/io/IOException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not retrieve file size for upload "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 129
    .end local v6    # "checkSizeError":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 131
    .local v6, "npe":Ljava/lang/NullPointerException;
    const-string v7, "NullPointerException during file size calculation."

    invoke-static {v0, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const-wide/16 v3, -0x1

    .end local v6    # "npe":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 137
    :goto_1
    iget-object v6, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v9, v6

    .line 138
    if-eqz v9, :cond_3

    .line 139
    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_2

    .line 142
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 143
    .local v6, "streamSize":I
    if-ltz v6, :cond_1

    .line 144
    int-to-long v3, v6

    .line 148
    .end local v6    # "streamSize":I
    :cond_1
    goto :goto_2

    .line 146
    :catch_2
    move-exception v6

    .line 150
    :cond_2
    :goto_2
    :try_start_4
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v9, v6

    .line 155
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    goto :goto_3

    .line 152
    :catch_3
    move-exception v5

    .line 153
    .local v5, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not locate file for uploading:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 156
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    iput-wide v3, p0, Lcom/google/firebase/storage/UploadTask;->mTotalByteCount:J

    .line 157
    new-instance v0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-direct {v0, v9, v1}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/storage/UploadTask;->mIsStreamOwned:Z

    .line 159
    iput-object p4, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    .line 160
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;Ljava/io/InputStream;)V
    .locals 12
    .param p1, "targetRef"    # Lcom/google/firebase/storage/StorageReference;
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;
    .param p3, "stream"    # Ljava/io/InputStream;

    .line 162
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    const/high16 v0, 0x40000

    iput v0, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    .line 71
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 72
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    .line 73
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 163
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v3

    .line 168
    .local v3, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/google/firebase/storage/UploadTask;->mTotalByteCount:J

    .line 169
    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 170
    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 171
    invoke-virtual {v3}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v8

    iput-object v8, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 172
    invoke-virtual {v3}, Lcom/google/firebase/storage/FirebaseStorage;->getAppCheckProvider()Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    move-result-object v9

    iput-object v9, p0, Lcom/google/firebase/storage/UploadTask;->mAppCheckProvider:Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    .line 173
    new-instance v4, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-direct {v4, p3, v0}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;-><init>(Ljava/io/InputStream;I)V

    iput-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    .line 174
    iput-boolean v2, p0, Lcom/google/firebase/storage/UploadTask;->mIsStreamOwned:Z

    .line 175
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    .line 176
    new-instance v0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 178
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 181
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxUploadRetryTimeMillis()J

    move-result-wide v10

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;J)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 182
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/storage/StorageReference;Lcom/google/firebase/storage/StorageMetadata;[B)V
    .locals 11
    .param p1, "targetRef"    # Lcom/google/firebase/storage/StorageReference;
    .param p2, "metadata"    # Lcom/google/firebase/storage/StorageMetadata;
    .param p3, "bytes"    # [B

    .line 76
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    const/high16 v0, 0x40000

    iput v0, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    .line 71
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 72
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    .line 73
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 77
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v2

    .line 82
    .local v2, "storage":Lcom/google/firebase/storage/FirebaseStorage;
    array-length v3, p3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/google/firebase/storage/UploadTask;->mTotalByteCount:J

    .line 83
    iput-object p1, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 84
    iput-object p2, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    .line 85
    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getAuthProvider()Lcom/google/firebase/auth/internal/InternalAuthProvider;

    move-result-object v7

    iput-object v7, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 86
    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getAppCheckProvider()Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    move-result-object v8

    iput-object v8, p0, Lcom/google/firebase/storage/UploadTask;->mAppCheckProvider:Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    .line 87
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    .line 88
    new-instance v1, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3, v0}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/storage/UploadTask;->mIsStreamOwned:Z

    .line 92
    new-instance v0, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 94
    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 97
    invoke-virtual {v2}, Lcom/google/firebase/storage/FirebaseStorage;->getMaxDownloadRetryTimeMillis()J

    move-result-wide v9

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/InternalAuthProvider;Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;J)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/storage/UploadTask;)Lcom/google/firebase/auth/internal/InternalAuthProvider;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/storage/UploadTask;

    .line 51
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/storage/UploadTask;)Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/storage/UploadTask;

    .line 51
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mAppCheckProvider:Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firebase/storage/UploadTask;)Lcom/google/firebase/storage/StorageReference;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/storage/UploadTask;

    .line 51
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method private beginResumableUpload()V
    .locals 5

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "mimeType":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 264
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    const-string v0, "application/octet-stream"

    .line 269
    :cond_2
    new-instance v1, Lcom/google/firebase/storage/network/ResumableUploadStartRequest;

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 271
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getStorageReferenceUri()Lcom/google/firebase/storage/internal/StorageReferenceUri;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 272
    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    .line 273
    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {v4}, Lcom/google/firebase/storage/StorageMetadata;->createJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/firebase/storage/network/ResumableUploadStartRequest;-><init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 276
    .local v1, "startRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    invoke-direct {p0, v1}, Lcom/google/firebase/storage/UploadTask;->sendWithRetry(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 277
    return-void

    .line 279
    :cond_4
    const-string v2, "X-Goog-Upload-URL"

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "uploadURL":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 281
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    .line 283
    :cond_5
    return-void
.end method

.method private isValidHttpResponseCode(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 465
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

.method private processResultValid(Lcom/google/firebase/storage/network/NetworkRequest;)Z
    .locals 2
    .param p1, "request"    # Lcom/google/firebase/storage/network/NetworkRequest;

    .line 482
    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultCode()I

    move-result v0

    .line 483
    .local v0, "resultCode":I
    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v1, v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->isRetryableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 484
    invoke-virtual {p1}, Lcom/google/firebase/storage/network/NetworkRequest;->getException()Ljava/lang/Exception;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    .line 485
    const-string v1, "X-Goog-Upload-Status"

    invoke-virtual {p1, v1}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerStatus:Ljava/lang/String;

    .line 486
    iget v1, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    invoke-direct {p0, v1}, Lcom/google/firebase/storage/UploadTask;->isValidHttpResponseCode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private recoverStatus(Z)Z
    .locals 13
    .param p1, "withRetry"    # Z

    .line 354
    const-string v0, "UploadTask"

    new-instance v1, Lcom/google/firebase/storage/network/ResumableUploadQueryRequest;

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 356
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getStorageReferenceUri()Lcom/google/firebase/storage/internal/StorageReferenceUri;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/storage/network/ResumableUploadQueryRequest;-><init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)V

    .line 358
    .local v1, "queryRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mServerStatus:Ljava/lang/String;

    const-string v3, "final"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 359
    return v4

    .line 362
    :cond_0
    if-eqz p1, :cond_1

    .line 363
    invoke-direct {p0, v1}, Lcom/google/firebase/storage/UploadTask;->sendWithRetry(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 364
    return v4

    .line 367
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/firebase/storage/UploadTask;->send(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 368
    return v4

    .line 372
    :cond_2
    const-string v2, "X-Goog-Upload-Status"

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    new-instance v0, Ljava/io/IOException;

    const-string v2, "The server has terminated the upload session"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 374
    return v4

    .line 377
    :cond_3
    const-string v2, "X-Goog-Upload-Size-Received"

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "bytes":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 380
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .local v5, "newBytesUploaded":J
    goto :goto_0

    .line 382
    .end local v5    # "newBytesUploaded":J
    :cond_4
    const-wide/16 v5, 0x0

    .line 384
    .restart local v5    # "newBytesUploaded":J
    :goto_0
    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    .line 385
    .local v7, "currentBytes":J
    cmp-long v3, v7, v5

    if-lez v3, :cond_5

    .line 386
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unexpected error. The server lost a chunk update."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 387
    return v4

    .line 388
    :cond_5
    cmp-long v3, v7, v5

    if-gez v3, :cond_8

    .line 390
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    sub-long v9, v5, v7

    long-to-int v10, v9

    invoke-virtual {v3, v10}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->advance(I)I

    move-result v3

    int-to-long v9, v3

    sub-long v11, v5, v7

    cmp-long v3, v9, v11

    if-eqz v3, :cond_6

    .line 392
    new-instance v3, Ljava/io/IOException;

    const-string v9, "Unexpected end of stream encountered."

    invoke-direct {v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 393
    return v4

    .line 395
    :cond_6
    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v7, v8, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v3

    if-nez v3, :cond_7

    .line 396
    const-string v3, "Somehow, the uploaded bytes changed during an uploaded.  This should nothappen"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v9, "uploaded bytes changed unexpectedly."

    invoke-direct {v3, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    return v4

    .line 408
    :cond_7
    goto :goto_1

    .line 403
    :catch_0
    move-exception v3

    .line 404
    .local v3, "e":Ljava/io/IOException;
    const-string v9, "Unable to recover position in Stream during resumable upload"

    invoke-static {v0, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    iput-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 407
    return v4

    .line 410
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private send(Lcom/google/firebase/storage/network/NetworkRequest;)Z
    .locals 3
    .param p1, "request"    # Lcom/google/firebase/storage/network/NetworkRequest;

    .line 469
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 470
    invoke-static {v0}, Lcom/google/firebase/storage/internal/Util;->getCurrentAuthToken(Lcom/google/firebase/auth/internal/InternalAuthProvider;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mAppCheckProvider:Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;

    .line 471
    invoke-static {v1}, Lcom/google/firebase/storage/internal/Util;->getCurrentAppCheckToken(Lcom/google/firebase/appcheck/interop/InternalAppCheckTokenProvider;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 472
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 469
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequest(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 473
    invoke-direct {p0, p1}, Lcom/google/firebase/storage/UploadTask;->processResultValid(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v0

    return v0
.end method

.method private sendWithRetry(Lcom/google/firebase/storage/network/NetworkRequest;)Z
    .locals 1
    .param p1, "request"    # Lcom/google/firebase/storage/network/NetworkRequest;

    .line 477
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->sendWithExponentialBackoff(Lcom/google/firebase/storage/network/NetworkRequest;)V

    .line 478
    invoke-direct {p0, p1}, Lcom/google/firebase/storage/UploadTask;->processResultValid(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v0

    return v0
.end method

.method private serverStateValid()Z
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mServerStatus:Ljava/lang/String;

    const-string v1, "final"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    const-string v2, "The server has terminated the upload session"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 342
    :cond_0
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    .line 343
    return v1

    .line 345
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private shouldContinue()Z
    .locals 5

    .line 290
    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getInternalState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    .line 291
    return v1

    .line 295
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/16 v2, 0x40

    if-eqz v0, :cond_1

    .line 296
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 297
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    .line 298
    return v1

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getInternalState()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    .line 301
    const/16 v0, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    .line 302
    return v1

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getInternalState()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    .line 305
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    .line 306
    return v1

    .line 308
    :cond_3
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->serverStateValid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 309
    return v1

    .line 311
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    if-nez v0, :cond_6

    .line 312
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_5

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to obtain an upload URL."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 315
    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    .line 316
    return v1

    .line 318
    :cond_6
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_7

    .line 319
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    .line 320
    return v1

    .line 323
    :cond_7
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    const/4 v3, 0x1

    if-nez v0, :cond_9

    iget v0, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    const/16 v4, 0xc8

    if-lt v0, v4, :cond_9

    iget v0, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    const/16 v4, 0x12c

    if-lt v0, v4, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    :goto_0
    const/4 v0, 0x1

    .line 325
    .local v0, "inErrorState":Z
    :goto_1
    if-eqz v0, :cond_b

    invoke-direct {p0, v3}, Lcom/google/firebase/storage/UploadTask;->recoverStatus(Z)Z

    move-result v4

    if-nez v4, :cond_b

    .line 327
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->serverStateValid()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 328
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    .line 330
    :cond_a
    return v1

    .line 333
    :cond_b
    return v3
.end method

.method private uploadChunk()V
    .locals 12

    .line 415
    const-string v0, "UploadTask"

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    iget v2, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    invoke-virtual {v1, v2}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->fill(I)I

    .line 416
    iget v1, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-virtual {v2}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 418
    .local v1, "bytesToUpload":I
    new-instance v11, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 420
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getStorageReferenceUri()Lcom/google/firebase/storage/internal/StorageReferenceUri;

    move-result-object v3

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 421
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    .line 423
    invoke-virtual {v2}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->get()[B

    move-result-object v6

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 424
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    .line 426
    invoke-virtual {v2}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->isFinished()Z

    move-result v10

    move-object v2, v11

    move v9, v1

    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/storage/network/ResumableUploadByteRequest;-><init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;[BJIZ)V

    move-object v2, v11

    .line 428
    .local v2, "uploadRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    invoke-direct {p0, v2}, Lcom/google/firebase/storage/UploadTask;->send(Lcom/google/firebase/storage/network/NetworkRequest;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 429
    const/high16 v3, 0x40000

    iput v3, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting chunk size to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void

    .line 434
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 436
    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-virtual {v3}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-virtual {v3, v1}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->advance(I)I

    .line 438
    iget v3, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    const/high16 v4, 0x2000000

    if-ge v3, v4, :cond_2

    .line 439
    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Increasing chunk size to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/firebase/storage/UploadTask;->mCurrentChunkSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 444
    :cond_1
    :try_start_1
    new-instance v3, Lcom/google/firebase/storage/StorageMetadata$Builder;

    .line 445
    invoke-virtual {v2}, Lcom/google/firebase/storage/network/NetworkRequest;->getResultBody()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>(Lorg/json/JSONObject;Lcom/google/firebase/storage/StorageReference;)V

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageMetadata$Builder;->build()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object v3

    iput-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 454
    nop

    .line 455
    const/4 v3, 0x4

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p0, v3, v4}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    .line 456
    const/16 v3, 0x80

    invoke-virtual {p0, v3, v4}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    .line 461
    .end local v1    # "bytesToUpload":I
    .end local v2    # "uploadRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    :cond_2
    :goto_0
    goto :goto_1

    .line 446
    .restart local v1    # "bytesToUpload":I
    .restart local v2    # "uploadRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    :catch_0
    move-exception v3

    .line 447
    .local v3, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse resulting metadata from upload:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v2}, Lcom/google/firebase/storage/network/NetworkRequest;->getRawResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 447
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    iput-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 453
    return-void

    .line 458
    .end local v1    # "bytesToUpload":I
    .end local v2    # "uploadRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 459
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Unable to read bytes for uploading"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 462
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method


# virtual methods
.method getStorage()Lcom/google/firebase/storage/StorageReference;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    return-object v0
.end method

.method getTotalByteCount()J
    .locals 2

    .line 193
    iget-wide v0, p0, Lcom/google/firebase/storage/UploadTask;->mTotalByteCount:J

    return-wide v0
.end method

.method protected onCanceled()V
    .locals 5

    .line 491
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->cancel()V

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "cancelRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 495
    new-instance v1, Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;

    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    .line 497
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getStorageReferenceUri()Lcom/google/firebase/storage/internal/StorageReferenceUri;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v3}, Lcom/google/firebase/storage/StorageReference;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/storage/network/ResumableUploadCancelRequest;-><init>(Lcom/google/firebase/storage/internal/StorageReferenceUri;Lcom/google/firebase/FirebaseApp;Landroid/net/Uri;)V

    move-object v0, v1

    .line 500
    :cond_0
    if-eqz v0, :cond_1

    .line 501
    move-object v1, v0

    .line 502
    .local v1, "finalCancelRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/storage/UploadTask$1;

    invoke-direct {v3, p0, v1}, Lcom/google/firebase/storage/UploadTask$1;-><init>(Lcom/google/firebase/storage/UploadTask;Lcom/google/firebase/storage/network/NetworkRequest;)V

    .line 503
    invoke-virtual {v2, v3}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleCommand(Ljava/lang/Runnable;)V

    .line 514
    .end local v1    # "finalCancelRequest":Lcom/google/firebase/storage/network/NetworkRequest;
    :cond_1
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lcom/google/android/gms/common/api/Status;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 516
    invoke-super {p0}, Lcom/google/firebase/storage/StorageTask;->onCanceled()V

    .line 517
    return-void
.end method

.method protected resetState()V
    .locals 2

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 251
    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    .line 252
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 253
    iput-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mServerStatus:Ljava/lang/String;

    .line 254
    return-void
.end method

.method run()V
    .locals 5

    .line 205
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mSender:Lcom/google/firebase/storage/internal/ExponentialBackoffSender;

    invoke-virtual {v0}, Lcom/google/firebase/storage/internal/ExponentialBackoffSender;->reset()V

    .line 206
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    move-result v2

    const-string v3, "UploadTask"

    if-nez v2, :cond_0

    .line 208
    const-string v0, "The upload cannot continue as it is not in a valid state."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->getParent()Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 213
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot upload to getRoot. You should upload to a storage location such as .getReference(\'image.png\').putFile..."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 220
    return-void

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    if-nez v2, :cond_3

    .line 224
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->beginResumableUpload()V

    goto :goto_0

    .line 226
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/firebase/storage/UploadTask;->recoverStatus(Z)Z

    .line 229
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->shouldContinue()Z

    move-result v2

    .line 230
    .local v2, "shouldContinueToRun":Z
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 231
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->uploadChunk()V

    .line 232
    invoke-direct {p0}, Lcom/google/firebase/storage/UploadTask;->shouldContinue()Z

    move-result v2

    .line 234
    if-eqz v2, :cond_4

    .line 235
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/UploadTask;->tryChangeState(IZ)Z

    goto :goto_1

    .line 239
    :cond_5
    iget-boolean v0, p0, Lcom/google/firebase/storage/UploadTask;->mIsStreamOwned:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getInternalState()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mStreamBuffer:Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;

    invoke-virtual {v0}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_2

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Unable to close stream."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_2
    return-void
.end method

.method protected schedule()V
    .locals 2

    .line 198
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskScheduler;->getInstance()Lcom/google/firebase/storage/StorageTaskScheduler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTaskScheduler;->scheduleUpload(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method bridge synthetic snapStateImpl()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/google/firebase/storage/UploadTask;->snapStateImpl()Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method snapStateImpl()Lcom/google/firebase/storage/UploadTask$TaskSnapshot;
    .locals 9

    .line 522
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mException:Ljava/lang/Exception;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/storage/UploadTask;->mServerException:Ljava/lang/Exception;

    .line 523
    .local v0, "error":Ljava/lang/Exception;
    :goto_0
    new-instance v8, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    iget v1, p0, Lcom/google/firebase/storage/UploadTask;->mResultCode:I

    .line 524
    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v3

    iget-object v1, p0, Lcom/google/firebase/storage/UploadTask;->mBytesUploaded:Ljava/util/concurrent/atomic/AtomicLong;

    .line 525
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/firebase/storage/UploadTask;->mUploadUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/google/firebase/storage/UploadTask;->mMetadata:Lcom/google/firebase/storage/StorageMetadata;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;-><init>(Lcom/google/firebase/storage/UploadTask;Ljava/lang/Exception;JLandroid/net/Uri;Lcom/google/firebase/storage/StorageMetadata;)V

    .line 523
    return-object v8
.end method
