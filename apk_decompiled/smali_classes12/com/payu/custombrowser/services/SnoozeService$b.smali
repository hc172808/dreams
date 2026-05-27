.class public Lcom/payu/custombrowser/services/SnoozeService$b;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/services/SnoozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/services/SnoozeService;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/services/SnoozeService;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$b;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/payu/custombrowser/services/SnoozeService;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$b;->a:Lcom/payu/custombrowser/services/SnoozeService;

    return-object v0
.end method
