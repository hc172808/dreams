.class public final Lcom/payu/custombrowser/util/g$l;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation


# instance fields
.field private final a:Lcom/payu/custombrowser/util/g$k$b;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/util/g$k$b;Ljava/lang/String;)V
    .locals 0

    .line 793
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 794
    iput-object p1, p0, Lcom/payu/custombrowser/util/g$l;->a:Lcom/payu/custombrowser/util/g$k$b;

    .line 795
    return-void
.end method

.method public constructor <init>(Lcom/payu/custombrowser/util/g$k$b;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 798
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 799
    iput-object p1, p0, Lcom/payu/custombrowser/util/g$l;->a:Lcom/payu/custombrowser/util/g$k$b;

    .line 800
    return-void
.end method


# virtual methods
.method public a()Lcom/payu/custombrowser/util/g$k$b;
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$l;->a:Lcom/payu/custombrowser/util/g$k$b;

    return-object v0
.end method
