.class public final Lio/grpc/internal/ConscryptLoader;
.super Ljava/lang/Object;
.source "ConscryptLoader.java"


# static fields
.field private static final IS_CONSCRYPT_METHOD:Ljava/lang/reflect/Method;

.field private static final NEW_PROVIDER_METHOD:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    :try_start_0
    const-string v0, "org.conscrypt.Conscrypt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    .local v0, "conscryptClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "newProvider"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 36
    .local v1, "newProvider":Ljava/lang/reflect/Method;
    const-string v3, "isConscrypt"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/security/Provider;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .local v0, "isConscrypt":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 40
    .end local v0    # "isConscrypt":Ljava/lang/reflect/Method;
    .end local v1    # "newProvider":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 37
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 38
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    .line 39
    .restart local v1    # "newProvider":Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .line 42
    .local v0, "isConscrypt":Ljava/lang/reflect/Method;
    :goto_0
    nop

    .line 43
    sput-object v1, Lio/grpc/internal/ConscryptLoader;->NEW_PROVIDER_METHOD:Ljava/lang/reflect/Method;

    .line 44
    sput-object v0, Lio/grpc/internal/ConscryptLoader;->IS_CONSCRYPT_METHOD:Ljava/lang/reflect/Method;

    .line 45
    .end local v0    # "isConscrypt":Ljava/lang/reflect/Method;
    .end local v1    # "newProvider":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConscrypt(Ljava/security/Provider;)Z
    .locals 4
    .param p0, "provider"    # Ljava/security/Provider;

    .line 57
    invoke-static {}, Lio/grpc/internal/ConscryptLoader;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    return v1

    .line 61
    :cond_0
    :try_start_0
    sget-object v0, Lio/grpc/internal/ConscryptLoader;->IS_CONSCRYPT_METHOD:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 62
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static isPresent()Z
    .locals 1

    .line 52
    sget-object v0, Lio/grpc/internal/ConscryptLoader;->NEW_PROVIDER_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newProvider()Ljava/security/Provider;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    invoke-static {}, Lio/grpc/internal/ConscryptLoader;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lio/grpc/internal/ConscryptLoader;->NEW_PROVIDER_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    return-object v0

    .line 72
    :cond_0
    const-string v0, "org.conscrypt.Conscrypt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 73
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unexpected failure referencing Conscrypt class"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
