.class public final synthetic Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$N2fhKkJD4F2daDVJHVfjsGPcofI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/google/android/gms/tasks/Task;

.field public final synthetic f$3:Lcom/google/android/gms/tasks/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/connection/PersistentConnectionImpl;JLcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$N2fhKkJD4F2daDVJHVfjsGPcofI;->f$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iput-wide p2, p0, Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$N2fhKkJD4F2daDVJHVfjsGPcofI;->f$1:J

    iput-object p4, p0, Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$N2fhKkJD4F2daDVJHVfjsGPcofI;->f$2:Lcom/google/android/gms/tasks/Task;

    iput-object p5, p0, Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$N2fhKkJD4F2daDVJHVfjsGPcofI;->f$3:Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$N2fhKkJD4F2daDVJHVfjsGPcofI;->f$0:Lcom/google/firebase/database/connection/PersistentConnectionImpl;

    iget-wide v1, p0, Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$N2fhKkJD4F2daDVJHVfjsGPcofI;->f$1:J

    iget-object v3, p0, Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$N2fhKkJD4F2daDVJHVfjsGPcofI;->f$2:Lcom/google/android/gms/tasks/Task;

    iget-object v4, p0, Lcom/google/firebase/database/connection/-$$Lambda$PersistentConnectionImpl$N2fhKkJD4F2daDVJHVfjsGPcofI;->f$3:Lcom/google/android/gms/tasks/Task;

    move-object v5, p1

    check-cast v5, Ljava/lang/Void;

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lambda$tryScheduleReconnect$0$PersistentConnectionImpl(JLcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Ljava/lang/Void;)V

    return-void
.end method
