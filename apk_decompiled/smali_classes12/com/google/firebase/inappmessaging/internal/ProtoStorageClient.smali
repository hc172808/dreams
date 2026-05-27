.class public Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;
.super Ljava/lang/Object;
.source "ProtoStorageClient.java"


# instance fields
.field private final application:Landroid/app/Application;

.field private final fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->application:Landroid/app/Application;

    .line 51
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->fileName:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public synthetic lambda$read$1$ProtoStorageClient(Lcom/google/protobuf/Parser;)Lcom/google/protobuf/AbstractMessageLite;
    .locals 3
    .param p1, "parser"    # Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Application;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 98
    .local v0, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-interface {p1, v0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/AbstractMessageLite;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 98
    return-object v1

    .line 97
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "parser":Lcom/google/protobuf/Parser;
    :cond_1
    :goto_0
    throw v1
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 103
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "parser":Lcom/google/protobuf/Parser;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 99
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recoverable exception while reading cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    .line 101
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public synthetic lambda$write$0$ProtoStorageClient(Lcom/google/protobuf/AbstractMessageLite;)Ljava/lang/Object;
    .locals 3
    .param p1, "messageLite"    # Lcom/google/protobuf/AbstractMessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 70
    .local v0, "output":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    nop

    .line 72
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 71
    return-object p1

    .line 69
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "messageLite":Lcom/google/protobuf/AbstractMessageLite;
    :cond_1
    :goto_0
    throw v1

    .line 73
    .end local v0    # "output":Ljava/io/FileOutputStream;
    .restart local p1    # "messageLite":Lcom/google/protobuf/AbstractMessageLite;
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public read(Lcom/google/protobuf/Parser;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/AbstractMessageLite;",
            ">(",
            "Lcom/google/protobuf/Parser<",
            "TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .line 93
    .local p1, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TT;>;"
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProtoStorageClient$wgl9_Wxhr-f40A4WcaGqygPRPFo;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProtoStorageClient$wgl9_Wxhr-f40A4WcaGqygPRPFo;-><init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lcom/google/protobuf/Parser;)V

    invoke-static {v0}, Lio/reactivex/Maybe;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/protobuf/AbstractMessageLite;)Lio/reactivex/Completable;
    .locals 1
    .param p1, "messageLite"    # Lcom/google/protobuf/AbstractMessageLite;

    .line 65
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProtoStorageClient$AHlGVOuaI-HzU71SUoAqMt-GITM;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ProtoStorageClient$AHlGVOuaI-HzU71SUoAqMt-GITM;-><init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lcom/google/protobuf/AbstractMessageLite;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method
