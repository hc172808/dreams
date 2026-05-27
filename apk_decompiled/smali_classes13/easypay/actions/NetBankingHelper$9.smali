.class Leasypay/actions/NetBankingHelper$9;
.super Ljava/lang/Object;
.source "NetBankingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/NetBankingHelper;->activate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/NetBankingHelper;


# direct methods
.method constructor <init>(Leasypay/actions/NetBankingHelper;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/NetBankingHelper;

    .line 413
    iput-object p1, p0, Leasypay/actions/NetBankingHelper$9;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 418
    iget-object v0, p0, Leasypay/actions/NetBankingHelper$9;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-virtual {v0}, Leasypay/actions/NetBankingHelper;->setPassword()V

    .line 419
    return-void
.end method
