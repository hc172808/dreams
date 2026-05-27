.class public Lcom/google/firebase/crashlytics/internal/log/LogFileManager;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;,
        Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;
    }
.end annotation


# static fields
.field private static final COLLECT_CUSTOM_LOGS:Ljava/lang/String; = "com.crashlytics.CollectCustomLogs"

.field private static final LOGFILE_EXT:Ljava/lang/String; = ".temp"

.field private static final LOGFILE_PREFIX:Ljava/lang/String; = "crashlytics-userlog-"

.field static final MAX_LOG_SIZE:I = 0x10000

.field private static final NOOP_LOG_STORE:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;


# instance fields
.field private final context:Landroid/content/Context;

.field private currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

.field private final directoryProvider:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;-><init>(Lcom/google/firebase/crashlytics/internal/log/LogFileManager$1;)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->NOOP_LOG_STORE:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "directoryProvider"    # Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "directoryProvider"    # Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;
    .param p3, "currentSessionId"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->directoryProvider:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;

    .line 55
    sget-object v0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->NOOP_LOG_STORE:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    .line 56
    invoke-virtual {p0, p3}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->setCurrentSession(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private getSessionIdForFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p1, "workingFile"    # Ljava/io/File;

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "filename":Ljava/lang/String;
    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, "indexOfExtension":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 132
    return-object v0

    .line 134
    :cond_0
    const-string v2, "crashlytics-userlog-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getWorkingFileForSession(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crashlytics-userlog-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->directoryProvider:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;

    invoke-interface {v2}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;->getLogFileDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public clearLog()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/log/FileLogStore;->deleteLogFile()V

    .line 100
    return-void
.end method

.method public discardOldLogFiles(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "sessionIdsToKeep":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->directoryProvider:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;->getLogFileDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 109
    .local v0, "logFiles":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 110
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 111
    .local v3, "file":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->getSessionIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 112
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 110
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return-void
.end method

.method public getBytesForLog()[B
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/log/FileLogStore;->getLogAsBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getLogString()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/log/FileLogStore;->getLogAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setCurrentSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/log/FileLogStore;->closeLogFile()V

    .line 66
    sget-object v0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->NOOP_LOG_STORE:Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    .line 68
    if-nez p1, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->context:Landroid/content/Context;

    const/4 v1, 0x1

    .line 73
    const-string v2, "com.crashlytics.CollectCustomLogs"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    .local v0, "isLoggingEnabled":Z
    if-nez v0, :cond_1

    .line 76
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Preferences requested no custom logs. Aborting log file creation."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 77
    return-void

    .line 80
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->getWorkingFileForSession(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->setLogFile(Ljava/io/File;I)V

    .line 81
    return-void
.end method

.method setLogFile(Ljava/io/File;I)V
    .locals 1
    .param p1, "workingFile"    # Ljava/io/File;
    .param p2, "maxLogSize"    # I

    .line 120
    new-instance v0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    .line 121
    return-void
.end method

.method public writeToLog(JLjava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->currentLog:Lcom/google/firebase/crashlytics/internal/log/FileLogStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/log/FileLogStore;->writeToLog(JLjava/lang/String;)V

    .line 86
    return-void
.end method
