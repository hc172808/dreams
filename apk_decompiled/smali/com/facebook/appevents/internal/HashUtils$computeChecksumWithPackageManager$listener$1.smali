.class public final Lcom/facebook/appevents/internal/HashUtils$computeChecksumWithPackageManager$listener$1;
.super Ljava/lang/Object;
.source "HashUtils.kt"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/HashUtils;->computeChecksumWithPackageManager(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008H\u0096\u0002\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "com/facebook/appevents/internal/HashUtils$computeChecksumWithPackageManager$listener$1",
        "Ljava/lang/reflect/InvocationHandler;",
        "invoke",
        "",
        "o",
        "method",
        "Ljava/lang/reflect/Method;",
        "objects",
        "",
        "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $TYPE_WHOLE_MD5:Ljava/lang/Object;

.field final synthetic $checksumReady:Ljava/util/concurrent/locks/Condition;

.field final synthetic $lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic $resultChecksum:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Ljava/lang/Object;
    .param p2, "$captured_local_variable$1"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p3, "$captured_local_variable$2"    # Ljava/util/concurrent/locks/ReentrantLock;
    .param p4, "$captured_local_variable$3"    # Ljava/util/concurrent/locks/Condition;

    .line 81
    iput-object p1, p0, Lcom/facebook/appevents/internal/HashUtils$computeChecksumWithPackageManager$listener$1;->$TYPE_WHOLE_MD5:Ljava/lang/Object;

    iput-object p2, p0, Lcom/facebook/appevents/internal/HashUtils$computeChecksumWithPackageManager$listener$1;->$resultChecksum:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/facebook/appevents/internal/HashUtils$computeChecksumWithPackageManager$listener$1;->$lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p4, p0, Lcom/facebook/appevents/internal/HashUtils$computeChecksumWithPackageManager$listener$1;->$checksumReady:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "objects"    # [Ljava/lang/Object;

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "objects"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 86
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onChecksumsReady"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    aget-object v3, p3, v1

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 87
    aget-object v3, p3, v1

    if-eqz v3, :cond_2

    check-cast v3, Ljava/util/List;

    .line 88
    .local v3, "list":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 89
    .local v5, "c":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 90
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getSplitName"

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "c.javaClass.getMethod(\"getSplitName\")"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .local v6, "getSplitNameMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getType"

    new-array v9, v1, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v8, "c.javaClass.getMethod(\"getType\")"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .local v7, "getTypeMethod":Ljava/lang/reflect/Method;
    nop

    .line 93
    nop

    .line 92
    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 93
    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/appevents/internal/HashUtils$computeChecksumWithPackageManager$listener$1;->$TYPE_WHOLE_MD5:Ljava/lang/Object;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 94
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v8, "getValue"

    new-array v9, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v8, "c.javaClass.getMethod(\"getValue\")"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .local v4, "getValueMethod":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, [B

    .line 96
    .local v1, "checksumValue":[B
    iget-object v8, p0, Lcom/facebook/appevents/internal/HashUtils$computeChecksumWithPackageManager$listener$1;->$resultChecksum:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 97
    iget-object v2, p0, Lcom/facebook/appevents/internal/HashUtils$computeChecksumWithPackageManager$listener$1;->$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    nop

    .line 99
    :try_start_1
    iget-object v2, p0, Lcom/facebook/appevents/internal/HashUtils$computeChecksumWithPackageManager$listener$1;->$checksumReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    iget-object v2, p0, Lcom/facebook/appevents/internal/HashUtils$computeChecksumWithPackageManager$listener$1;->$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    nop

    .line 103
    return-object v0

    .line 102
    :catchall_0
    move-exception v2

    .line 101
    iget-object v8, p0, Lcom/facebook/appevents/internal/HashUtils$computeChecksumWithPackageManager$listener$1;->$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "method":Ljava/lang/reflect/Method;
    .end local p3    # "objects":[Ljava/lang/Object;
    throw v2

    .line 95
    .end local v1    # "checksumValue":[B
    .restart local p1    # "o":Ljava/lang/Object;
    .restart local p2    # "method":Ljava/lang/reflect/Method;
    .restart local p3    # "objects":[Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "method":Ljava/lang/reflect/Method;
    .end local p3    # "objects":[Ljava/lang/Object;
    throw v1

    .line 87
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "getValueMethod":Ljava/lang/reflect/Method;
    .end local v5    # "c":Ljava/lang/Object;
    .end local v6    # "getSplitNameMethod":Ljava/lang/reflect/Method;
    .end local v7    # "getTypeMethod":Ljava/lang/reflect/Method;
    .restart local p1    # "o":Ljava/lang/Object;
    .restart local p2    # "method":Ljava/lang/reflect/Method;
    .restart local p3    # "objects":[Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<*>"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p1    # "o":Ljava/lang/Object;
    .end local p2    # "method":Ljava/lang/reflect/Method;
    .end local p3    # "objects":[Ljava/lang/Object;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    .restart local p1    # "o":Ljava/lang/Object;
    .restart local p2    # "method":Ljava/lang/reflect/Method;
    .restart local p3    # "objects":[Ljava/lang/Object;
    :catchall_1
    move-exception v1

    .line 109
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/facebook/appevents/internal/HashUtils;->INSTANCE:Lcom/facebook/appevents/internal/HashUtils;

    invoke-static {v2}, Lcom/facebook/appevents/internal/HashUtils;->access$getTAG$p(Lcom/facebook/appevents/internal/HashUtils;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t fetch checksum."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    nop

    .line 111
    return-object v0
.end method
