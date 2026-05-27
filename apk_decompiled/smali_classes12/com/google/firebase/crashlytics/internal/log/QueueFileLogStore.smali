.class Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;
.super Ljava/lang/Object;
.source "QueueFileLogStore.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/log/FileLogStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;
    }
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

.field private final maxLogSize:I

.field private final workingFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Ljava/io/File;I)V
    .locals 0
    .param p1, "workingFile"    # Ljava/io/File;
    .param p2, "maxLogSize"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->workingFile:Ljava/io/File;

    .line 47
    iput p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->maxLogSize:I

    .line 48
    return-void
.end method

.method private doWriteToLog(JLjava/lang/String;)V
    .locals 6
    .param p1, "timestamp"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .line 136
    const-string v0, " "

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    if-nez v1, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    if-nez p3, :cond_1

    .line 140
    const-string p3, "null"

    .line 160
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->maxLogSize:I

    div-int/lit8 v1, v1, 0x4

    .line 162
    .local v1, "quarterMaxLogSize":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object p3, v2

    .line 166
    :cond_2
    const-string v2, "\r"

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object p3, v2

    .line 167
    const-string v2, "\n"

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p3, v0

    .line 169
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %s%n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 171
    .local v0, "msgBytes":[B
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    invoke-virtual {v2, v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->add([B)V

    .line 174
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->usedBytes()I

    move-result v2

    iget v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->maxLogSize:I

    if-le v2, v3, :cond_3

    .line 175
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v0    # "msgBytes":[B
    .end local v1    # "quarterMaxLogSize":I
    :cond_3
    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "There was a problem writing to the Crashlytics log."

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private getLogBytes()Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    return-object v1

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->openLogFile()V

    .line 81
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    if-nez v0, :cond_1

    .line 83
    return-object v1

    .line 89
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 91
    .local v1, "offsetHolder":[I
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->usedBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 94
    .local v0, "logBytes":[B
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    new-instance v4, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$1;-><init>(Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;[B[I)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;->forEach(Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v4

    const-string v5, "A problem occurred while reading the Crashlytics log file."

    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    new-instance v3, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;

    aget v2, v1, v2

    invoke-direct {v3, v0, v2}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;-><init>([BI)V

    return-object v3
.end method

.method private openLogFile()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    if-nez v0, :cond_0

    .line 128
    :try_start_0
    new-instance v0, Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/internal/log/QueueFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open log file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public closeLogFile()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    const-string v1, "There was a problem closing the Crashlytics log file."

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->logFile:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 117
    return-void
.end method

.method public deleteLogFile()V
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->closeLogFile()V

    .line 122
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->workingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 123
    return-void
.end method

.method public getLogAsBytes()[B
    .locals 5

    .line 58
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->getLogBytes()Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;

    move-result-object v0

    .line 59
    .local v0, "logBytes":Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;
    if-nez v0, :cond_0

    .line 60
    const/4 v1, 0x0

    return-object v1

    .line 62
    :cond_0
    iget v1, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;->offset:I

    new-array v1, v1, [B

    .line 63
    .local v1, "rawBytes":[B
    iget-object v2, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;->bytes:[B

    iget v3, v0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;->offset:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    return-object v1
.end method

.method public getLogAsString()Ljava/lang/String;
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->getLogAsBytes()[B

    move-result-object v0

    .line 70
    .local v0, "logBytes":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public writeToLog(JLjava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "msg"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->openLogFile()V

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;->doWriteToLog(JLjava/lang/String;)V

    .line 54
    return-void
.end method
