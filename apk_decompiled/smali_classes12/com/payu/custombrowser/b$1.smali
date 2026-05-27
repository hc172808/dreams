.class Lcom/payu/custombrowser/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/b;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/b;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/payu/custombrowser/b$1;->a:Lcom/payu/custombrowser/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 111
    move-object v0, p2

    check-cast v0, Lcom/payu/custombrowser/services/SnoozeService$b;

    .line 112
    iget-object v1, p0, Lcom/payu/custombrowser/b$1;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService$b;->a()Lcom/payu/custombrowser/services/SnoozeService;

    move-result-object v0

    iput-object v0, v1, Lcom/payu/custombrowser/b;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    .line 113
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 117
    iget-object v0, p0, Lcom/payu/custombrowser/b$1;->a:Lcom/payu/custombrowser/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/payu/custombrowser/b;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    .line 118
    return-void
.end method
