.class public final synthetic Lcom/google/firebase/database/core/-$$Lambda$Context$1$6UCcIBjvMQxvY-dubrUxTviMRZ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/-$$Lambda$Context$1$6UCcIBjvMQxvY-dubrUxTviMRZ4;->f$0:Lcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;

    iput-object p2, p0, Lcom/google/firebase/database/core/-$$Lambda$Context$1$6UCcIBjvMQxvY-dubrUxTviMRZ4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/core/-$$Lambda$Context$1$6UCcIBjvMQxvY-dubrUxTviMRZ4;->f$0:Lcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;

    iget-object v1, p0, Lcom/google/firebase/database/core/-$$Lambda$Context$1$6UCcIBjvMQxvY-dubrUxTviMRZ4;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/Context$1;->lambda$onSuccess$0(Lcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;Ljava/lang/String;)V

    return-void
.end method
