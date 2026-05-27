.class public Lio/michaelrocks/libphonenumber/android/AssetsMetadataLoader;
.super Ljava/lang/Object;
.source "AssetsMetadataLoader.java"

# interfaces
.implements Lio/michaelrocks/libphonenumber/android/MetadataLoader;


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AssetsMetadataLoader;->assetManager:Landroid/content/res/AssetManager;

    .line 29
    return-void
.end method


# virtual methods
.method public loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "metadataFileName"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "assetFileName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AssetsMetadataLoader;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "exception":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method
