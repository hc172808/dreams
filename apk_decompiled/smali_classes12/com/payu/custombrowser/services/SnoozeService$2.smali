.class Lcom/payu/custombrowser/services/SnoozeService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/services/SnoozeService;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/services/SnoozeService;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/services/SnoozeService;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService$2;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$2;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->i(Lcom/payu/custombrowser/services/SnoozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService$2;->a:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-static {v0}, Lcom/payu/custombrowser/services/SnoozeService;->j(Lcom/payu/custombrowser/services/SnoozeService;)V

    .line 355
    :cond_0
    return-void
.end method
