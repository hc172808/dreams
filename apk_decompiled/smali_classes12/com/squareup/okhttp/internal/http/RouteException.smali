.class public final Lcom/squareup/okhttp/internal/http/RouteException;
.super Ljava/lang/Exception;
.source "RouteException.java"


# static fields
.field private static final addSuppressedExceptionMethod:Ljava/lang/reflect/Method;


# instance fields
.field private lastException:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .local v0, "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 32
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 33
    .restart local v0    # "m":Ljava/lang/reflect/Method;
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 35
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sput-object v0, Lcom/squareup/okhttp/internal/http/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    .line 36
    .end local v0    # "m":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "cause"    # Ljava/io/IOException;

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 41
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    .line 42
    return-void
.end method

.method private addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "suppressed"    # Ljava/io/IOException;

    .line 54
    sget-object v0, Lcom/squareup/okhttp/internal/http/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 56
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 60
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addConnectException(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .line 49
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/http/RouteException;->addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V

    .line 50
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    .line 51
    return-void
.end method

.method public getLastConnectException()Ljava/io/IOException;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    return-object v0
.end method
