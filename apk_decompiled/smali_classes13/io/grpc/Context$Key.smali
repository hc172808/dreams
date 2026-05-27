.class public final Lio/grpc/Context$Key;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 911
    .local p0, "this":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/Context$Key;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 912
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 914
    .local p0, "this":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/Context$Key;->name:Ljava/lang/String;

    .line 916
    iput-object p2, p0, Lio/grpc/Context$Key;->defaultValue:Ljava/lang/Object;

    .line 917
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 924
    .local p0, "this":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TT;>;"
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/Context$Key;->get(Lio/grpc/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lio/grpc/Context;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Lio/grpc/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Context;",
            ")TT;"
        }
    .end annotation

    .line 932
    .local p0, "this":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TT;>;"
    invoke-virtual {p1, p0}, Lio/grpc/Context;->lookup(Lio/grpc/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 933
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lio/grpc/Context$Key;->defaultValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 938
    .local p0, "this":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TT;>;"
    iget-object v0, p0, Lio/grpc/Context$Key;->name:Ljava/lang/String;

    return-object v0
.end method
