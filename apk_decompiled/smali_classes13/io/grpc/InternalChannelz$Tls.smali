.class public final Lio/grpc/InternalChannelz$Tls;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tls"
.end annotation


# instance fields
.field public final cipherSuiteStandardName:Ljava/lang/String;

.field public final localCert:Ljava/security/cert/Certificate;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final remoteCert:Ljava/security/cert/Certificate;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/Certificate;Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "cipherSuiteName"    # Ljava/lang/String;
    .param p2, "localCert"    # Ljava/security/cert/Certificate;
    .param p3, "remoteCert"    # Ljava/security/cert/Certificate;

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput-object p1, p0, Lio/grpc/InternalChannelz$Tls;->cipherSuiteStandardName:Ljava/lang/String;

    .line 666
    iput-object p2, p0, Lio/grpc/InternalChannelz$Tls;->localCert:Ljava/security/cert/Certificate;

    .line 667
    iput-object p3, p0, Lio/grpc/InternalChannelz$Tls;->remoteCert:Ljava/security/cert/Certificate;

    .line 668
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSession;)V
    .locals 10
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "cipherSuiteStandardName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 676
    .local v1, "localCert":Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    .line 677
    .local v2, "remoteCert":Ljava/security/cert/Certificate;
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 678
    .local v3, "localCerts":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 679
    aget-object v1, v3, v4

    .line 682
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 683
    .local v5, "peerCerts":[Ljava/security/cert/Certificate;
    if-eqz v5, :cond_1

    .line 686
    aget-object v4, v5, v4
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 694
    .end local v5    # "peerCerts":[Ljava/security/cert/Certificate;
    :cond_1
    goto :goto_0

    .line 688
    :catch_0
    move-exception v5

    .line 690
    .local v5, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-static {}, Lio/grpc/InternalChannelz;->access$400()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 692
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v4, "Peer cert not available for peerHost=%s"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 690
    invoke-virtual {v6, v7, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 695
    .end local v5    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :goto_0
    iput-object v0, p0, Lio/grpc/InternalChannelz$Tls;->cipherSuiteStandardName:Ljava/lang/String;

    .line 696
    iput-object v1, p0, Lio/grpc/InternalChannelz$Tls;->localCert:Ljava/security/cert/Certificate;

    .line 697
    iput-object v2, p0, Lio/grpc/InternalChannelz$Tls;->remoteCert:Ljava/security/cert/Certificate;

    .line 698
    return-void
.end method
