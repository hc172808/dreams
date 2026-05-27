.class Leasypay/actions/NetBankingHelper$7$1;
.super Ljava/lang/Object;
.source "NetBankingHelper.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/NetBankingHelper$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Leasypay/actions/NetBankingHelper$7;


# direct methods
.method constructor <init>(Leasypay/actions/NetBankingHelper$7;)V
    .locals 0
    .param p1, "this$1"    # Leasypay/actions/NetBankingHelper$7;

    .line 351
    iput-object p1, p0, Leasypay/actions/NetBankingHelper$7$1;->this$1:Leasypay/actions/NetBankingHelper$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 351
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Leasypay/actions/NetBankingHelper$7$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 355
    return-void
.end method
