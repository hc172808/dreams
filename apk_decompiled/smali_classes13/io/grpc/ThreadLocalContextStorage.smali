.class final Lio/grpc/ThreadLocalContextStorage;
.super Lio/grpc/Context$Storage;
.source "ThreadLocalContextStorage.java"


# static fields
.field static final localContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/grpc/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lio/grpc/ThreadLocalContextStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/ThreadLocalContextStorage;->log:Ljava/util/logging/Logger;

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/grpc/ThreadLocalContextStorage;->localContext:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/grpc/Context$Storage;-><init>()V

    return-void
.end method


# virtual methods
.method public current()Lio/grpc/Context;
    .locals 2

    .line 67
    sget-object v0, Lio/grpc/ThreadLocalContextStorage;->localContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Context;

    .line 68
    .local v0, "current":Lio/grpc/Context;
    if-nez v0, :cond_0

    .line 69
    sget-object v1, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    return-object v1

    .line 71
    :cond_0
    return-object v0
.end method

.method public detach(Lio/grpc/Context;Lio/grpc/Context;)V
    .locals 4
    .param p1, "toDetach"    # Lio/grpc/Context;
    .param p2, "toRestore"    # Lio/grpc/Context;

    .line 43
    invoke-virtual {p0}, Lio/grpc/ThreadLocalContextStorage;->current()Lio/grpc/Context;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 47
    sget-object v0, Lio/grpc/ThreadLocalContextStorage;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 48
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    .line 47
    const-string v3, "Context was not attached when detaching"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_0
    sget-object v0, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    if-eq p2, v0, :cond_1

    .line 51
    sget-object v0, Lio/grpc/ThreadLocalContextStorage;->localContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lio/grpc/ThreadLocalContextStorage;->localContext:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 63
    :goto_0
    return-void
.end method

.method public doAttach(Lio/grpc/Context;)Lio/grpc/Context;
    .locals 2
    .param p1, "toAttach"    # Lio/grpc/Context;

    .line 36
    invoke-virtual {p0}, Lio/grpc/ThreadLocalContextStorage;->current()Lio/grpc/Context;

    move-result-object v0

    .line 37
    .local v0, "current":Lio/grpc/Context;
    sget-object v1, Lio/grpc/ThreadLocalContextStorage;->localContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 38
    return-object v0
.end method
