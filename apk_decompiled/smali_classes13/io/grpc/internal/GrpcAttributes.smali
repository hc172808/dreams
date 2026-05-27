.class public final Lio/grpc/internal/GrpcAttributes;
.super Ljava/lang/Object;
.source "GrpcAttributes.java"


# static fields
.field public static final ATTR_CLIENT_EAG_ATTRS:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Lio/grpc/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final ATTR_LB_ADDRS:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_LB_ADDR_AUTHORITY:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_LB_PROVIDED_BACKEND:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Lio/grpc/SecurityLevel;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME_RESOLVER_SERVICE_CONFIG:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    nop

    .line 39
    const-string v0, "service-config"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcAttributes;->NAME_RESOLVER_SERVICE_CONFIG:Lio/grpc/Attributes$Key;

    .line 48
    nop

    .line 49
    const-string v0, "io.grpc.grpclb.lbAddrs"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcAttributes;->ATTR_LB_ADDRS:Lio/grpc/Attributes$Key;

    .line 59
    nop

    .line 60
    const-string v0, "io.grpc.grpclb.lbAddrAuthority"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcAttributes;->ATTR_LB_ADDR_AUTHORITY:Lio/grpc/Attributes$Key;

    .line 67
    nop

    .line 68
    const-string v0, "io.grpc.grpclb.lbProvidedBackend"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcAttributes;->ATTR_LB_PROVIDED_BACKEND:Lio/grpc/Attributes$Key;

    .line 75
    nop

    .line 76
    const-string v0, "io.grpc.internal.GrpcAttributes.securityLevel"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcAttributes;->ATTR_SECURITY_LEVEL:Lio/grpc/Attributes$Key;

    .line 84
    nop

    .line 85
    const-string v0, "io.grpc.internal.GrpcAttributes.clientEagAttrs"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcAttributes;->ATTR_CLIENT_EAG_ATTRS:Lio/grpc/Attributes$Key;

    .line 84
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
