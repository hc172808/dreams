.class final Lio/grpc/internal/InternalHandlerRegistry;
.super Lio/grpc/HandlerRegistry;
.source "InternalHandlerRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/InternalHandlerRegistry$Builder;
    }
.end annotation


# instance fields
.field private final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/ServerMethodDefinition<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerServiceDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/ServerServiceDefinition;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/ServerMethodDefinition<",
            "**>;>;)V"
        }
    .end annotation

    .line 36
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerServiceDefinition;>;"
    .local p2, "methods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/grpc/ServerMethodDefinition<**>;>;"
    invoke-direct {p0}, Lio/grpc/HandlerRegistry;-><init>()V

    .line 37
    iput-object p1, p0, Lio/grpc/internal/InternalHandlerRegistry;->services:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lio/grpc/internal/InternalHandlerRegistry;->methods:Ljava/util/Map;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/Map;Lio/grpc/internal/InternalHandlerRegistry$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lio/grpc/internal/InternalHandlerRegistry$1;

    .line 30
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/InternalHandlerRegistry;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerServiceDefinition;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lio/grpc/internal/InternalHandlerRegistry;->services:Ljava/util/List;

    return-object v0
.end method

.method public lookupMethod(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/ServerMethodDefinition;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/ServerMethodDefinition<",
            "**>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 53
    iget-object v0, p0, Lio/grpc/internal/InternalHandlerRegistry;->methods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ServerMethodDefinition;

    return-object v0
.end method
