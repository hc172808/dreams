.class public Lcom/payumoney/graphics/helpers/DiskLruImageCache;
.super Ljava/lang/Object;
.source "DiskLruImageCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# static fields
.field private static final APP_VERSION:I = 0x1

.field private static IO_BUFFER_SIZE:I = 0x0

.field private static final VALUE_COUNT:I = 0x1


# instance fields
.field private ctx:Landroid/content/Context;

.field private diskCacheSize:I

.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompressQuality:I

.field private mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

.field private uniqueName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/16 v0, 0x2000

    sput v0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->IO_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;
    .param p3, "diskCacheSize"    # I
    .param p4, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p5, "quality"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 29
    const/16 v0, 0x46

    iput v0, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mCompressQuality:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->uniqueName:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->diskCacheSize:I

    .line 41
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 42
    .local v0, "diskCacheDir":Ljava/io/File;
    iput-object p1, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->ctx:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->uniqueName:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->diskCacheSize:I

    .line 45
    int-to-long v1, p3

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 46
    iput-object p4, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 47
    iput p5, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mCompressQuality:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "diskCacheDir":Ljava/io/File;
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "cachePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private writeBitmapToFile(Landroid/graphics/Bitmap;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Z
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "editor"    # Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    sget v3, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->IO_BUFFER_SIZE:I

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v0, v1

    .line 58
    iget-object v1, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mCompressQuality:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    nop

    .line 61
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 58
    return v1

    .line 60
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 63
    :cond_0
    throw v1
.end method


# virtual methods
.method public clearCache()V
    .locals 4

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->delete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->uniqueName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 170
    .local v0, "diskCacheDir":Ljava/io/File;
    iget v1, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->diskCacheSize:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    .end local v0    # "diskCacheDir":Ljava/io/File;
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 175
    :catch_1
    move-exception v0

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "contained":Z
    const/4 v1, 0x0

    .line 148
    .local v1, "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    :try_start_0
    iget-object v2, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v2, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 149
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 153
    if-eqz v1, :cond_1

    .line 154
    :goto_1
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V

    goto :goto_2

    .line 153
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 154
    goto :goto_1

    .line 158
    :cond_1
    :goto_2
    return v0

    .line 153
    :goto_3
    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V

    .line 156
    :cond_2
    throw v2
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 115
    .local v1, "snapshot":Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    :try_start_0
    iget-object v2, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 118
    if-nez v1, :cond_1

    .line 119
    const/4 v2, 0x0

    .line 130
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V

    .line 119
    :cond_0
    return-object v2

    .line 121
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v2

    .line 122
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_2

    .line 123
    new-instance v3, Ljava/io/BufferedInputStream;

    sget v4, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->IO_BUFFER_SIZE:I

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 125
    .local v3, "buffIn":Ljava/io/BufferedInputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    .line 130
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "buffIn":Ljava/io/BufferedInputStream;
    :cond_2
    if-eqz v1, :cond_3

    .line 131
    :goto_0
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V

    goto :goto_1

    .line 130
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 131
    goto :goto_0

    .line 139
    :cond_3
    :goto_1
    return-object v0

    .line 130
    :goto_2
    if-eqz v1, :cond_4

    .line 131
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V

    .line 133
    :cond_4
    throw v2
.end method

.method public getCacheFolder()Ljava/io/File;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/graphics/Bitmap;

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    :try_start_0
    iget-object v1, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    move-object v0, v1

    .line 78
    if-nez v0, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->writeBitmapToFile(Landroid/graphics/Bitmap;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/payumoney/graphics/helpers/DiskLruImageCache;->mDiskCache:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->flush()V

    .line 84
    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    goto :goto_2

    .line 94
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_2

    .line 100
    :try_start_1
    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 102
    :catch_1
    move-exception v2

    goto :goto_2

    .line 103
    :cond_2
    :goto_1
    nop

    .line 106
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method
