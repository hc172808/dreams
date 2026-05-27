.class public final synthetic Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$lPSR-tDVUL8tmRpy-RDLVkH14gE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$lPSR-tDVUL8tmRpy-RDLVkH14gE;->f$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-wide p2, p0, Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$lPSR-tDVUL8tmRpy-RDLVkH14gE;->f$1:J

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$lPSR-tDVUL8tmRpy-RDLVkH14gE;->f$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iget-wide v1, p0, Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$lPSR-tDVUL8tmRpy-RDLVkH14gE;->f$1:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lambda$tryScheduleReconnect$1$PersistentConnectionImpl(JLjava/lang/Exception;)V

    return-void
.end method
