.class Leasypay/actions/NBHelper$2$2;
.super Ljava/lang/Object;
.source "NBHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/NBHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Leasypay/actions/NBHelper$2;

.field final synthetic val$mCurrentUserId:Ljava/lang/String;

.field final synthetic val$mUIDList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Leasypay/actions/NBHelper$2;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Leasypay/actions/NBHelper$2;

    .line 250
    iput-object p1, p0, Leasypay/actions/NBHelper$2$2;->this$1:Leasypay/actions/NBHelper$2;

    iput-object p2, p0, Leasypay/actions/NBHelper$2$2;->val$mCurrentUserId:Ljava/lang/String;

    iput-object p3, p0, Leasypay/actions/NBHelper$2$2;->val$mUIDList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 253
    iget-object v0, p0, Leasypay/actions/NBHelper$2$2;->this$1:Leasypay/actions/NBHelper$2;

    iget-object v0, v0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v0}, Leasypay/actions/NBHelper;->access$100(Leasypay/actions/NBHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    iget-object v1, p0, Leasypay/actions/NBHelper$2$2;->val$mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Leasypay/actions/EasypayBrowserFragment;->setCurrentUserId(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Leasypay/actions/NBHelper$2$2;->this$1:Leasypay/actions/NBHelper$2;

    iget-object v0, v0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v0}, Leasypay/actions/NBHelper;->access$600(Leasypay/actions/NBHelper;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Leasypay/actions/NBHelper$2$2;->this$1:Leasypay/actions/NBHelper$2;

    iget-object v0, v0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v0}, Leasypay/actions/NBHelper;->access$100(Leasypay/actions/NBHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    iget-object v2, p0, Leasypay/actions/NBHelper$2$2;->this$1:Leasypay/actions/NBHelper$2;

    iget-object v2, v2, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v2}, Leasypay/actions/NBHelper;->access$600(Leasypay/actions/NBHelper;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Leasypay/actions/EasypayBrowserFragment;->toggleHistoricIds(IZ)V

    .line 256
    iget-object v0, p0, Leasypay/actions/NBHelper$2$2;->this$1:Leasypay/actions/NBHelper$2;

    iget-object v0, v0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v0}, Leasypay/actions/NBHelper;->access$100(Leasypay/actions/NBHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Leasypay/actions/EasypayBrowserFragment;->toggleSuggestionBox(Z)V

    .line 257
    iget-object v0, p0, Leasypay/actions/NBHelper$2$2;->this$1:Leasypay/actions/NBHelper$2;

    iget-object v0, v0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v0}, Leasypay/actions/NBHelper;->access$100(Leasypay/actions/NBHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    iget-object v1, p0, Leasypay/actions/NBHelper$2$2;->val$mUIDList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Leasypay/actions/EasypayBrowserFragment;->setHistoricIdTexts(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Leasypay/actions/NBHelper$2$2;->this$1:Leasypay/actions/NBHelper$2;

    iget-object v0, v0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v0}, Leasypay/actions/NBHelper;->access$100(Leasypay/actions/NBHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    iget-object v1, p0, Leasypay/actions/NBHelper$2$2;->this$1:Leasypay/actions/NBHelper$2;

    iget-object v1, v1, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v1}, Leasypay/actions/NBHelper;->access$600(Leasypay/actions/NBHelper;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Leasypay/actions/EasypayBrowserFragment;->toggleHistoricIds(IZ)V

    .line 260
    iget-object v0, p0, Leasypay/actions/NBHelper$2$2;->this$1:Leasypay/actions/NBHelper$2;

    iget-object v0, v0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v0}, Leasypay/actions/NBHelper;->access$100(Leasypay/actions/NBHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Leasypay/actions/EasypayBrowserFragment;->toggleSuggestionBox(Z)V

    .line 262
    :goto_0
    return-void
.end method
