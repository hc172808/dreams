.class Leasypay/manager/PaytmAssist$2$1;
.super Ljava/lang/Object;
.source "PaytmAssist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/manager/PaytmAssist$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Leasypay/manager/PaytmAssist$2;


# direct methods
.method constructor <init>(Leasypay/manager/PaytmAssist$2;)V
    .locals 0
    .param p1, "this$1"    # Leasypay/manager/PaytmAssist$2;

    .line 457
    iput-object p1, p0, Leasypay/manager/PaytmAssist$2$1;->this$1:Leasypay/manager/PaytmAssist$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 460
    iget-object v0, p0, Leasypay/manager/PaytmAssist$2$1;->this$1:Leasypay/manager/PaytmAssist$2;

    iget-object v0, v0, Leasypay/manager/PaytmAssist$2;->this$0:Leasypay/manager/PaytmAssist;

    invoke-static {v0}, Leasypay/manager/PaytmAssist;->access$400(Leasypay/manager/PaytmAssist;)V

    .line 461
    return-void
.end method
