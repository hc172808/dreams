.class Leasypay/actions/EasypayBrowserFragment$8;
.super Ljava/lang/Object;
.source "EasypayBrowserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/EasypayBrowserFragment;->NbWatcher(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/EasypayBrowserFragment;


# direct methods
.method constructor <init>(Leasypay/actions/EasypayBrowserFragment;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 1088
    iput-object p1, p0, Leasypay/actions/EasypayBrowserFragment$8;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1091
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$8;->this$0:Leasypay/actions/EasypayBrowserFragment;

    const-string v1, ""

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Leasypay/actions/EasypayBrowserFragment;->passwordViewer(Ljava/lang/String;I)V

    .line 1092
    return-void
.end method
