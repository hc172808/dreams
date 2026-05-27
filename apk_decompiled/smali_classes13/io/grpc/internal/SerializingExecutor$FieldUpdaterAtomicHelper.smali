.class final Lio/grpc/internal/SerializingExecutor$FieldUpdaterAtomicHelper;
.super Lio/grpc/internal/SerializingExecutor$AtomicHelper;
.source "SerializingExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/SerializingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FieldUpdaterAtomicHelper"
.end annotation


# instance fields
.field private final runStateUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/internal/SerializingExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/internal/SerializingExecutor;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p1, "runStateUpdater":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<Lio/grpc/internal/SerializingExecutor;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/internal/SerializingExecutor$AtomicHelper;-><init>(Lio/grpc/internal/SerializingExecutor$1;)V

    .line 149
    iput-object p1, p0, Lio/grpc/internal/SerializingExecutor$FieldUpdaterAtomicHelper;->runStateUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Lio/grpc/internal/SerializingExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .param p2, "x1"    # Lio/grpc/internal/SerializingExecutor$1;

    .line 144
    invoke-direct {p0, p1}, Lio/grpc/internal/SerializingExecutor$FieldUpdaterAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V

    return-void
.end method


# virtual methods
.method public runStateCompareAndSet(Lio/grpc/internal/SerializingExecutor;II)Z
    .locals 1
    .param p1, "obj"    # Lio/grpc/internal/SerializingExecutor;
    .param p2, "expect"    # I
    .param p3, "update"    # I

    .line 154
    iget-object v0, p0, Lio/grpc/internal/SerializingExecutor$FieldUpdaterAtomicHelper;->runStateUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public runStateSet(Lio/grpc/internal/SerializingExecutor;I)V
    .locals 1
    .param p1, "obj"    # Lio/grpc/internal/SerializingExecutor;
    .param p2, "newValue"    # I

    .line 159
    iget-object v0, p0, Lio/grpc/internal/SerializingExecutor$FieldUpdaterAtomicHelper;->runStateUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 160
    return-void
.end method
