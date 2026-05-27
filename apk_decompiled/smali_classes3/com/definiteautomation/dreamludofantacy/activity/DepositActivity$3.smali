.class Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$3;
.super Ljava/lang/Object;
.source "DepositActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->getHashkey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 288
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hash error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 272
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Ljava/lang/String;>;"
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hash res "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    .local v0, "merchantHash":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    const-string v3, "Could not generate hash"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 276
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hash empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->setMerchantHash(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v1

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    const v4, 0x7f110011

    invoke-static {v1, v3, v4, v2}, Lcom/payumoney/sdkui/ui/utils/PayUmoneyFlowManager;->startPayUMoneyFlow(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;Landroid/app/Activity;IZ)V

    .line 284
    :goto_0
    return-void
.end method
