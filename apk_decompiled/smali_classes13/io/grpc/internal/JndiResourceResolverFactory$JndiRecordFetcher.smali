.class final Lio/grpc/internal/JndiResourceResolverFactory$JndiRecordFetcher;
.super Ljava/lang/Object;
.source "JndiResourceResolverFactory.java"

# interfaces
.implements Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/JndiResourceResolverFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JndiRecordFetcher"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 241
    const-class v0, Lio/grpc/internal/JndiResourceResolverFactory;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAvailable()V
    .locals 3

    .line 310
    invoke-static {}, Lio/grpc/internal/JndiResourceResolverFactory;->access$000()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 314
    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 312
    invoke-static {}, Lio/grpc/internal/JndiResourceResolverFactory;->access$000()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "JNDI is not currently available"

    invoke-direct {v0, v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static closeThenThrow(Ljavax/naming/NamingEnumeration;Ljavax/naming/NamingException;)V
    .locals 1
    .param p1, "e"    # Ljavax/naming/NamingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/naming/NamingEnumeration<",
            "*>;",
            "Ljavax/naming/NamingException;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 293
    .local p0, "namingEnumeration":Ljavax/naming/NamingEnumeration;, "Ljavax/naming/NamingEnumeration<*>;"
    :try_start_0
    invoke-interface {p0}, Ljavax/naming/NamingEnumeration;->close()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 297
    :goto_0
    throw p1
.end method

.method private static closeThenThrow(Ljavax/naming/directory/DirContext;Ljavax/naming/NamingException;)V
    .locals 1
    .param p0, "ctx"    # Ljavax/naming/directory/DirContext;
    .param p1, "e"    # Ljavax/naming/NamingException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 302
    :try_start_0
    invoke-interface {p0}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 306
    :goto_0
    throw p1
.end method


# virtual methods
.method public getAllRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "recordType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 250
    invoke-static {}, Lio/grpc/internal/JndiResourceResolverFactory$JndiRecordFetcher;->checkAvailable()V

    .line 251
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 252
    .local v0, "rrType":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 256
    .local v2, "env":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "com.sun.jndi.ldap.connect.timeout"

    const-string v4, "5000"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v3, "com.sun.jndi.ldap.read.timeout"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v3, Ljavax/naming/directory/InitialDirContext;

    invoke-direct {v3, v2}, Ljavax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    .line 261
    .local v3, "dirContext":Ljavax/naming/directory/DirContext;
    :try_start_0
    invoke-interface {v3, p2, v0}, Ljavax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object v4

    .line 262
    .local v4, "attrs":Ljavax/naming/directory/Attributes;
    invoke-interface {v4}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v5
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 265
    .local v5, "rrGroups":Ljavax/naming/NamingEnumeration;, "Ljavax/naming/NamingEnumeration<+Ljavax/naming/directory/Attribute;>;"
    :goto_0
    :try_start_1
    invoke-interface {v5}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 266
    invoke-interface {v5}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/naming/directory/Attribute;

    .line 267
    .local v6, "rrEntry":Ljavax/naming/directory/Attribute;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 268
    invoke-interface {v6}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v7
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    .local v7, "rrValues":Ljavax/naming/NamingEnumeration;, "Ljavax/naming/NamingEnumeration<*>;"
    :goto_1
    :try_start_2
    invoke-interface {v7}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 271
    invoke-interface {v7}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 275
    :cond_0
    goto :goto_2

    .line 273
    :catch_0
    move-exception v8

    .line 274
    .local v8, "ne":Ljavax/naming/NamingException;
    :try_start_3
    invoke-static {v7, v8}, Lio/grpc/internal/JndiResourceResolverFactory$JndiRecordFetcher;->closeThenThrow(Ljavax/naming/NamingEnumeration;Ljavax/naming/NamingException;)V

    .line 276
    .end local v8    # "ne":Ljavax/naming/NamingException;
    :goto_2
    invoke-interface {v7}, Ljavax/naming/NamingEnumeration;->close()V

    .line 277
    .end local v6    # "rrEntry":Ljavax/naming/directory/Attribute;
    .end local v7    # "rrValues":Ljavax/naming/NamingEnumeration;, "Ljavax/naming/NamingEnumeration<*>;"
    goto :goto_0

    .line 267
    .restart local v6    # "rrEntry":Ljavax/naming/directory/Attribute;
    :cond_1
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "rrType":[Ljava/lang/String;
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "env":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "dirContext":Ljavax/naming/directory/DirContext;
    .end local v4    # "attrs":Ljavax/naming/directory/Attributes;
    .end local v5    # "rrGroups":Ljavax/naming/NamingEnumeration;, "Ljavax/naming/NamingEnumeration<+Ljavax/naming/directory/Attribute;>;"
    .end local p1    # "recordType":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    throw v7
    :try_end_3
    .catch Ljavax/naming/NamingException; {:try_start_3 .. :try_end_3} :catch_1

    .line 280
    .end local v6    # "rrEntry":Ljavax/naming/directory/Attribute;
    .restart local v0    # "rrType":[Ljava/lang/String;
    .restart local v1    # "records":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "env":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "dirContext":Ljavax/naming/directory/DirContext;
    .restart local v4    # "attrs":Ljavax/naming/directory/Attributes;
    .restart local v5    # "rrGroups":Ljavax/naming/NamingEnumeration;, "Ljavax/naming/NamingEnumeration<+Ljavax/naming/directory/Attribute;>;"
    .restart local p1    # "recordType":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    :cond_2
    goto :goto_3

    .line 278
    :catch_1
    move-exception v6

    .line 279
    .local v6, "ne":Ljavax/naming/NamingException;
    :try_start_4
    invoke-static {v5, v6}, Lio/grpc/internal/JndiResourceResolverFactory$JndiRecordFetcher;->closeThenThrow(Ljavax/naming/NamingEnumeration;Ljavax/naming/NamingException;)V

    .line 281
    .end local v6    # "ne":Ljavax/naming/NamingException;
    :goto_3
    invoke-interface {v5}, Ljavax/naming/NamingEnumeration;->close()V
    :try_end_4
    .catch Ljavax/naming/NamingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 284
    .end local v4    # "attrs":Ljavax/naming/directory/Attributes;
    .end local v5    # "rrGroups":Ljavax/naming/NamingEnumeration;, "Ljavax/naming/NamingEnumeration<+Ljavax/naming/directory/Attribute;>;"
    goto :goto_4

    .line 282
    :catch_2
    move-exception v4

    .line 283
    .local v4, "ne":Ljavax/naming/NamingException;
    invoke-static {v3, v4}, Lio/grpc/internal/JndiResourceResolverFactory$JndiRecordFetcher;->closeThenThrow(Ljavax/naming/directory/DirContext;Ljavax/naming/NamingException;)V

    .line 285
    .end local v4    # "ne":Ljavax/naming/NamingException;
    :goto_4
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V

    .line 287
    return-object v1
.end method
