.class Lio/grpc/internal/ProxyDetectorImpl$1;
.super Ljava/lang/Object;
.source "ProxyDetectorImpl.java"

# interfaces
.implements Lio/grpc/internal/ProxyDetectorImpl$AuthenticationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ProxyDetectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 12
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "protocol"    # Ljava/lang/String;
    .param p5, "prompt"    # Ljava/lang/String;
    .param p6, "scheme"    # Ljava/lang/String;

    .line 129
    move-object v9, p1

    move-object/from16 v10, p4

    const/4 v1, 0x0

    .line 131
    .local v1, "url":Ljava/net/URL;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v2, ""
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move v11, p3

    :try_start_1
    invoke-direct {v0, v10, p1, p3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    .line 137
    goto :goto_1

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v11, p3

    .line 134
    .local v0, "e":Ljava/net/MalformedURLException;
    :goto_0
    invoke-static {}, Lio/grpc/internal/ProxyDetectorImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    .line 136
    const-string v5, "failed to create URL for Authenticator: %s %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v0, v1

    .line 139
    .end local v1    # "url":Ljava/net/URL;
    .local v0, "url":Ljava/net/URL;
    :goto_1
    sget-object v8, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    invoke-static/range {v1 .. v8}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v1

    return-object v1
.end method
