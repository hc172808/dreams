.class public Lcom/payu/custombrowser/PackageListDialogFragment;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyVpa(Ljava/lang/String;)V
    .locals 1
    .param p1, "hash"    # Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/payu/custombrowser/b/b;

    invoke-direct {v0}, Lcom/payu/custombrowser/b/b;-><init>()V

    .line 8
    invoke-virtual {v0, p1}, Lcom/payu/custombrowser/b/b;->a(Ljava/lang/String;)V

    .line 9
    return-void
.end method
