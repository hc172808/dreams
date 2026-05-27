.class final Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;
.super Ljava/lang/Object;
.source "JndiResourceResolverFactory.java"

# interfaces
.implements Lio/grpc/internal/DnsNameResolver$ResourceResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/JndiResourceResolverFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JndiResourceResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;

.field private static final whitespace:Ljava/util/regex/Pattern;


# instance fields
.field private final recordFetcher:Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    const-class v0, Lio/grpc/internal/JndiResourceResolverFactory;

    .line 101
    const-class v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->logger:Ljava/util/logging/Logger;

    .line 104
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->whitespace:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;)V
    .locals 0
    .param p1, "recordFetcher"    # Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->recordFetcher:Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;

    .line 110
    return-void
.end method

.method private static parseSrvRecord(Ljava/lang/String;)Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;
    .locals 4
    .param p0, "rawRecord"    # Ljava/lang/String;

    .line 205
    sget-object v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->whitespace:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Bad SRV Record: %s"

    invoke-static {v1, v2, p0}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 207
    new-instance v1, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "txtRecord"    # Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 216
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 217
    .local v1, "inquote":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 218
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 219
    .local v3, "c":C
    const/16 v4, 0x22

    if-nez v1, :cond_1

    .line 220
    const/16 v5, 0x20

    if-ne v3, v5, :cond_0

    .line 221
    goto :goto_2

    .line 222
    :cond_0
    if-ne v3, v4, :cond_4

    .line 223
    const/4 v1, 0x1

    .line 224
    goto :goto_2

    .line 227
    :cond_1
    if-ne v3, v4, :cond_2

    .line 228
    const/4 v1, 0x0

    .line 229
    goto :goto_2

    .line 230
    :cond_2
    const/16 v5, 0x5c

    if-ne v3, v5, :cond_4

    .line 231
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 232
    if-eq v3, v4, :cond_4

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 235
    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    .end local v3    # "c":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public resolveSrv(Lio/grpc/internal/DnsNameResolver$AddressResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p1, "addressResolver"    # Lio/grpc/internal/DnsNameResolver$AddressResolver;
    .param p2, "grpclbHostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/DnsNameResolver$AddressResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    move-object/from16 v1, p2

    sget-object v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 137
    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const-string v6, "About to query SRV records for {0}"

    invoke-virtual {v0, v2, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_0
    move-object/from16 v2, p0

    iget-object v5, v2, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->recordFetcher:Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dns:///"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    const-string v7, "SRV"

    invoke-interface {v5, v7, v6}, Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;->getAllRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 142
    .local v5, "grpclbSrvRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 143
    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-array v7, v4, [Ljava/lang/Object;

    .line 144
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 143
    const-string v8, "Found {0} SRV records"

    invoke-virtual {v0, v6, v8, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 147
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v0

    .line 148
    .local v6, "balancerAddresses":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    const/4 v0, 0x0

    .line 149
    .local v0, "first":Ljava/lang/Exception;
    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 150
    .local v7, "level":Ljava/util/logging/Level;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v7

    move-object v7, v0

    .end local v0    # "first":Ljava/lang/Exception;
    .local v7, "first":Ljava/lang/Exception;
    .local v9, "level":Ljava/util/logging/Level;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 152
    .local v10, "srvRecord":Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->parseSrvRecord(Ljava/lang/String;)Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;

    move-result-object v0

    .line 154
    .local v0, "record":Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;
    iget-object v11, v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;->host:Ljava/lang/String;

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 160
    iget-object v11, v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;->host:Ljava/lang/String;

    iget-object v12, v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;->host:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v4

    invoke-virtual {v11, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 163
    .local v11, "authority":Ljava/lang/String;
    iget-object v12, v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;->host:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v13, p1

    :try_start_1
    invoke-interface {v13, v12}, Lio/grpc/internal/DnsNameResolver$AddressResolver;->resolveAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 164
    .local v12, "addrs":Ljava/util/List;, "Ljava/util/List<+Ljava/net/InetAddress;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v14, "sockaddrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/net/InetAddress;

    move-object/from16 v17, v16

    .line 166
    .local v17, "addr":Ljava/net/InetAddress;
    new-instance v3, Ljava/net/InetSocketAddress;

    iget v4, v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;->port:I

    move-object/from16 v1, v17

    .end local v17    # "addr":Ljava/net/InetAddress;
    .local v1, "addr":Ljava/net/InetAddress;
    invoke-direct {v3, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    move-object/from16 v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .end local v1    # "addr":Ljava/net/InetAddress;
    goto :goto_1

    .line 168
    :cond_2
    invoke-static {}, Lio/grpc/Attributes;->newBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v1

    sget-object v3, Lio/grpc/internal/GrpcAttributes;->ATTR_LB_ADDR_AUTHORITY:Lio/grpc/Attributes$Key;

    .line 169
    invoke-virtual {v1, v3, v11}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v1

    .line 171
    .local v1, "attrs":Lio/grpc/Attributes;
    new-instance v3, Lio/grpc/EquivalentAddressGroup;

    .line 172
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/util/List;Lio/grpc/Attributes;)V

    .line 171
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    nop

    .end local v0    # "record":Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;
    .end local v1    # "attrs":Lio/grpc/Attributes;
    .end local v11    # "authority":Ljava/lang/String;
    .end local v12    # "addrs":Ljava/util/List;, "Ljava/util/List<+Ljava/net/InetAddress;>;"
    .end local v14    # "sockaddrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    goto :goto_4

    .line 155
    .restart local v0    # "record":Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;
    :cond_3
    move-object/from16 v13, p1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returned SRV host does not end in period: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v5    # "grpclbSrvRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "balancerAddresses":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    .end local v7    # "first":Ljava/lang/Exception;
    .end local v9    # "level":Ljava/util/logging/Level;
    .end local v10    # "srvRecord":Ljava/lang/String;
    .end local p1    # "addressResolver":Lio/grpc/internal/DnsNameResolver$AddressResolver;
    .end local p2    # "grpclbHostname":Ljava/lang/String;
    throw v1
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    .end local v0    # "record":Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver$SrvRecord;
    .restart local v5    # "grpclbSrvRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "balancerAddresses":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    .restart local v7    # "first":Ljava/lang/Exception;
    .restart local v9    # "level":Ljava/util/logging/Level;
    .restart local v10    # "srvRecord":Ljava/lang/String;
    .restart local p1    # "addressResolver":Lio/grpc/internal/DnsNameResolver$AddressResolver;
    .restart local p2    # "grpclbHostname":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 173
    :catch_1
    move-exception v0

    goto :goto_3

    .line 180
    :catch_2
    move-exception v0

    move-object/from16 v13, p1

    .line 181
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2
    sget-object v1, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to construct SRV record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    if-nez v7, :cond_5

    .line 183
    move-object v1, v0

    .line 184
    .end local v7    # "first":Ljava/lang/Exception;
    .local v1, "first":Ljava/lang/Exception;
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object v7, v1

    move-object v9, v3

    .end local v9    # "level":Ljava/util/logging/Level;
    .local v3, "level":Ljava/util/logging/Level;
    goto :goto_4

    .line 173
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "first":Ljava/lang/Exception;
    .end local v3    # "level":Ljava/util/logging/Level;
    .restart local v7    # "first":Ljava/lang/Exception;
    .restart local v9    # "level":Ljava/util/logging/Level;
    :catch_3
    move-exception v0

    move-object/from16 v13, p1

    .line 174
    .local v0, "e":Ljava/net/UnknownHostException;
    :goto_3
    sget-object v1, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find address for SRV record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    if-nez v7, :cond_4

    .line 177
    move-object v7, v0

    .line 178
    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 186
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_4
    nop

    .line 187
    .end local v10    # "srvRecord":Ljava/lang/String;
    :cond_5
    :goto_4
    move-object/from16 v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 188
    :cond_6
    move-object/from16 v13, p1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v7, :cond_7

    goto :goto_5

    .line 189
    :cond_7
    throw v7

    .line 191
    :cond_8
    :goto_5
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resolveTxt(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "serviceConfigHostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 114
    sget-object v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string v5, "About to query TXT records for {0}"

    invoke-virtual {v0, v1, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->recordFetcher:Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dns:///"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    const-string v5, "TXT"

    invoke-interface {v1, v5, v4}, Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;->getAllRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "serviceConfigRawTxtRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-array v3, v3, [Ljava/lang/Object;

    .line 122
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 121
    const-string v2, "Found {0} TXT records"

    invoke-virtual {v0, v4, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 125
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .local v0, "serviceConfigTxtRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 127
    .local v3, "serviceConfigRawTxtRecord":Ljava/lang/String;
    invoke-static {v3}, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v3    # "serviceConfigRawTxtRecord":Ljava/lang/String;
    goto :goto_0

    .line 129
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
