.class public final Lio/grpc/internal/ReflectionLongAdderCounter;
.super Ljava/lang/Object;
.source "ReflectionLongAdderCounter.java"

# interfaces
.implements Lio/grpc/internal/LongCounter;


# static fields
.field private static final addMethod:Ljava/lang/reflect/Method;

.field private static final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final initializationException:Ljava/lang/RuntimeException;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final sumMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 30
    const-class v0, Lio/grpc/internal/ReflectionLongAdderCounter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ReflectionLongAdderCounter;->logger:Ljava/util/logging/Logger;

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 41
    .local v1, "defaultConstructorLookup":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    .line 42
    .local v2, "addMethodLookup":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 43
    .local v3, "sumMethodLookup":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 45
    .local v4, "caught":Ljava/lang/Throwable;
    :try_start_0
    const-string v5, "java.util.concurrent.atomic.LongAdder"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v0, v5

    .line 47
    const-string v5, "add"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v2, v5

    .line 48
    const-string v5, "sum"

    new-array v6, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v3, v5

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 51
    .local v5, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v6, v5

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v7, v5, v8

    .line 52
    .local v7, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_0

    .line 53
    move-object v1, v7

    .line 54
    goto :goto_1

    .line 51
    .end local v7    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 63
    .end local v5    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    :goto_1
    goto :goto_2

    .line 57
    :catchall_0
    move-exception v5

    .line 58
    .local v5, "e":Ljava/lang/Throwable;
    sget-object v6, Lio/grpc/internal/ReflectionLongAdderCounter;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "LongAdder can not be found via reflection, this is normal for JDK7 and below"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    move-object v4, v5

    .line 65
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_2
    const/4 v5, 0x0

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    .line 66
    sput-object v1, Lio/grpc/internal/ReflectionLongAdderCounter;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 67
    sput-object v2, Lio/grpc/internal/ReflectionLongAdderCounter;->addMethod:Ljava/lang/reflect/Method;

    .line 68
    sput-object v3, Lio/grpc/internal/ReflectionLongAdderCounter;->sumMethod:Ljava/lang/reflect/Method;

    .line 69
    sput-object v5, Lio/grpc/internal/ReflectionLongAdderCounter;->initializationException:Ljava/lang/RuntimeException;

    goto :goto_3

    .line 71
    :cond_2
    sput-object v5, Lio/grpc/internal/ReflectionLongAdderCounter;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 72
    sput-object v5, Lio/grpc/internal/ReflectionLongAdderCounter;->addMethod:Ljava/lang/reflect/Method;

    .line 73
    sput-object v5, Lio/grpc/internal/ReflectionLongAdderCounter;->sumMethod:Ljava/lang/reflect/Method;

    .line 74
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    sput-object v5, Lio/grpc/internal/ReflectionLongAdderCounter;->initializationException:Ljava/lang/RuntimeException;

    .line 76
    .end local v0    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "defaultConstructorLookup":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "addMethodLookup":Ljava/lang/reflect/Method;
    .end local v3    # "sumMethodLookup":Ljava/lang/reflect/Method;
    .end local v4    # "caught":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lio/grpc/internal/ReflectionLongAdderCounter;->initializationException:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    .line 83
    :try_start_0
    sget-object v0, Lio/grpc/internal/ReflectionLongAdderCounter;->defaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ReflectionLongAdderCounter;->instance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .line 91
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 86
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 84
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :cond_0
    throw v0
.end method

.method static isAvailable()Z
    .locals 1

    .line 97
    sget-object v0, Lio/grpc/internal/ReflectionLongAdderCounter;->initializationException:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public add(J)V
    .locals 5
    .param p1, "delta"    # J

    .line 103
    :try_start_0
    sget-object v0, Lio/grpc/internal/ReflectionLongAdderCounter;->addMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/grpc/internal/ReflectionLongAdderCounter;->instance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    nop

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 104
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public value()J
    .locals 3

    .line 114
    :try_start_0
    sget-object v0, Lio/grpc/internal/ReflectionLongAdderCounter;->sumMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/grpc/internal/ReflectionLongAdderCounter;->instance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 115
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method
