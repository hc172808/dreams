.class public final Lio/grpc/okhttp/internal/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cipherSuites:[Ljava/lang/String;

.field private supportsTlsExtensions:Z

.field private tls:Z

.field private tlsVersions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/internal/ConnectionSpec;)V
    .locals 1
    .param p1, "connectionSpec"    # Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iget-boolean v0, p1, Lio/grpc/okhttp/internal/ConnectionSpec;->tls:Z

    iput-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tls:Z

    .line 286
    invoke-static {p1}, Lio/grpc/okhttp/internal/ConnectionSpec;->access$400(Lio/grpc/okhttp/internal/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 287
    invoke-static {p1}, Lio/grpc/okhttp/internal/ConnectionSpec;->access$500(Lio/grpc/okhttp/internal/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 288
    iget-boolean v0, p1, Lio/grpc/okhttp/internal/ConnectionSpec;->supportsTlsExtensions:Z

    iput-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 289
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "tls"    # Z

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-boolean p1, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tls:Z

    .line 282
    return-void
.end method

.method static synthetic access$000(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    .line 274
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tls:Z

    return v0
.end method

.method static synthetic access$100(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    .line 274
    iget-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    .line 274
    iget-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    .line 274
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return v0
.end method


# virtual methods
.method public build()Lio/grpc/okhttp/internal/ConnectionSpec;
    .locals 2

    .line 351
    new-instance v0, Lio/grpc/okhttp/internal/ConnectionSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec;-><init>(Lio/grpc/okhttp/internal/ConnectionSpec$Builder;Lio/grpc/okhttp/internal/ConnectionSpec$1;)V

    return-object v0
.end method

.method public varargs cipherSuites([Lio/grpc/okhttp/internal/CipherSuite;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;
    .locals 3
    .param p1, "cipherSuites"    # [Lio/grpc/okhttp/internal/CipherSuite;

    .line 292
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_1

    .line 295
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 296
    .local v0, "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 297
    aget-object v2, p1, v1

    iget-object v2, v2, Lio/grpc/okhttp/internal/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 300
    return-object p0

    .line 292
    .end local v0    # "strings":[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;
    .locals 2
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .line 304
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_1

    .line 306
    if-nez p1, :cond_0

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 313
    :goto_0
    return-object p0

    .line 304
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsTlsExtensions(Z)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;
    .locals 2
    .param p1, "supportsTlsExtensions"    # Z

    .line 345
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_0

    .line 346
    iput-boolean p1, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 347
    return-object p0

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs tlsVersions([Lio/grpc/okhttp/internal/TlsVersion;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;
    .locals 3
    .param p1, "tlsVersions"    # [Lio/grpc/okhttp/internal/TlsVersion;

    .line 317
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_2

    .line 318
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 323
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 324
    .local v0, "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 325
    aget-object v2, p1, v1

    iget-object v2, v2, Lio/grpc/okhttp/internal/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 328
    return-object p0

    .line 319
    .end local v0    # "strings":[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one TlsVersion is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;
    .locals 2
    .param p1, "tlsVersions"    # [Ljava/lang/String;

    .line 332
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_1

    .line 334
    if-nez p1, :cond_0

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 341
    :goto_0
    return-object p0

    .line 332
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
