.class Leasypay/actions/NBHelper$2$3;
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

.field final synthetic val$mUIDList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Leasypay/actions/NBHelper$2;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Leasypay/actions/NBHelper$2;

    .line 267
    iput-object p1, p0, Leasypay/actions/NBHelper$2$3;->this$1:Leasypay/actions/NBHelper$2;

    iput-object p2, p0, Leasypay/actions/NBHelper$2$3;->val$mUIDList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 271
    iget-object v0, p0, Leasypay/actions/NBHelper$2$3;->this$1:Leasypay/actions/NBHelper$2;

    iget-object v0, v0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    iget-object v1, p0, Leasypay/actions/NBHelper$2$3;->val$mUIDList:Ljava/util/ArrayList;

    iget-object v2, p0, Leasypay/actions/NBHelper$2$3;->this$1:Leasypay/actions/NBHelper$2;

    iget-object v2, v2, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v2}, Leasypay/actions/NBHelper;->access$600(Leasypay/actions/NBHelper;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Leasypay/actions/NBHelper;->access$700(Leasypay/actions/NBHelper;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Leasypay/actions/NBHelper$2$3;->this$1:Leasypay/actions/NBHelper$2;

    iget-object v0, v0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v0}, Leasypay/actions/NBHelper;->access$100(Leasypay/actions/NBHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->hideNBCustIdShowPassword()V

    .line 273
    return-void
.end method
