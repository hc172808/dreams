.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;
.super Ljava/lang/Object;
.source "CrashlyticsFileMarker.java"


# instance fields
.field private final fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

.field private final markerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/persistence/FileStore;)V
    .locals 0
    .param p1, "markerName"    # Ljava/lang/String;
    .param p2, "fileStore"    # Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->markerName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    .line 41
    return-void
.end method

.method private getMarkerFile()Ljava/io/File;
    .locals 3

    .line 78
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->fileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/persistence/FileStore;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->markerName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public create()Z
    .locals 5

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "wasCreated":Z
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->getMarkerFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating marker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->markerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return v0
.end method

.method public isPresent()Z
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->getMarkerFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public remove()Z
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsFileMarker;->getMarkerFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method
