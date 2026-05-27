.class Lio/grpc/okhttp/OkHttpClientTransport$4$1;
.super Ljava/lang/Object;
.source "OkHttpClientTransport.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/OkHttpClientTransport$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/okhttp/OkHttpClientTransport$4;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpClientTransport$4;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/okhttp/OkHttpClientTransport$4;

    .line 536
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport$4$1;->this$1:Lio/grpc/okhttp/OkHttpClientTransport$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 549
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 2
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    .line 539
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 544
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method
