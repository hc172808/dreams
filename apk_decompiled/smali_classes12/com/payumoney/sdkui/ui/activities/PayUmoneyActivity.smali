.class public Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;
.super Lcom/payumoney/sdkui/ui/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;
.implements Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;
.implements Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;
.implements Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;
.implements Lcom/payumoney/sdkui/presenter/fragmentPresenter/ILogoutListener;


# instance fields
.field i:Z

.field private j:Landroid/app/Activity;

.field private k:Lcom/payumoney/sdkui/ui/utils/ResultModel;

.field private l:Z

.field private m:I

.field private n:Lcom/payumoney/core/response/PaymentOptionDetails;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->j:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 139
    return-void
.end method

.method private a(Lcom/payumoney/core/response/PaymentOptionDetails;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/response/PaymentOptionDetails;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/payumoney/core/response/BinDetail;",
            ">;)V"
        }
    .end annotation

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->o:Z

    .line 236
    iget v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->g:I

    invoke-static {p1, p2, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->newInstance(Lcom/payumoney/core/response/PaymentOptionDetails;Ljava/util/HashMap;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->navigateWithReplace(Landroidx/fragment/app/Fragment;I)V

    .line 237
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/CardDetail;",
            ">;)V"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/CardDetail;

    .line 271
    invoke-virtual {v1}, Lcom/payumoney/core/entity/CardDetail;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    goto :goto_0

    .line 274
    :cond_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object p1

    const-string v1, "fetch_multiple_api_tag"

    invoke-virtual {p1, p0, v0, v1}, Lcom/payumoney/core/PayUmoneySDK;->getMultipleCardBinDetails(Lcom/payumoney/core/listener/OnMultipleCardBinDetailsListener;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method private a(ZLcom/payumoney/sdkui/ui/utils/ResultModel;Z)V
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->b()V

    .line 181
    if-eqz p1, :cond_0

    .line 182
    const-string p1, "0"

    iput-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->e:Ljava/lang/String;

    .line 187
    :cond_0
    iget-boolean p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->l:Z

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->c()V

    .line 189
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->finish()V

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->clearAllFragments()V

    .line 192
    invoke-static {p2}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->newInstance(Lcom/payumoney/sdkui/ui/utils/ResultModel;)Lcom/payumoney/sdkui/ui/fragments/ResultFragment;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->navigateWithReplace(Landroidx/fragment/app/Fragment;I)V

    .line 194
    :goto_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 209
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->h:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->k:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    if-eqz v1, :cond_1

    .line 210
    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->h:Z

    .line 211
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->k:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getTransactionResponse()Lcom/payumoney/core/entity/TransactionResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    sget-object v2, Lcom/payumoney/sdkui/ui/utils/PayUmoneyFlowManager;->INTENT_EXTRA_TRANSACTION_RESPONSE:Ljava/lang/String;

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->k:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    invoke-virtual {v3}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getTransactionResponse()Lcom/payumoney/core/entity/TransactionResponse;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->j:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 215
    goto :goto_0

    .line 217
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "result"

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->k:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_1
    :goto_0
    goto :goto_1

    .line 221
    :catch_0
    move-exception v1

    .line 222
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v0, "Exception"

    invoke-virtual {v2, v0, v3}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    :goto_1
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 330
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 331
    const-string v0, "fetch_nitro_payment_options_api_tag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 334
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {p1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 335
    invoke-virtual {p1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 336
    invoke-virtual {p1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 337
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {p1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    .line 340
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-direct {p0, p1, v2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a(Lcom/payumoney/core/response/PaymentOptionDetails;Ljava/util/HashMap;)V

    goto :goto_0

    .line 346
    :cond_2
    const-string v1, "fetch_nitro_payment_options_api_on_logout_tag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 349
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_3

    .line 350
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 353
    :cond_3
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {p1, v2}, Lcom/payumoney/core/response/PaymentOptionDetails;->setUserDetails(Lcom/payumoney/core/response/UserDetail;)V

    .line 354
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-direct {p0, p1, v2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a(Lcom/payumoney/core/response/PaymentOptionDetails;Ljava/util/HashMap;)V

    goto :goto_0

    .line 356
    :cond_4
    const-string v1, "get_net_banking_status_api_tag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 361
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {p1}, Lcom/payumoney/core/response/PaymentOptionDetails;->isNitroEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 364
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object p1

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1, v0}, Lcom/payumoney/core/PayUmoneySDK;->fetchDetailsForNitroFlow(Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_5
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_6

    .line 367
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 370
    :cond_6
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-direct {p0, p1, v2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a(Lcom/payumoney/core/response/PaymentOptionDetails;Ljava/util/HashMap;)V

    goto :goto_0

    .line 373
    :cond_7
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_8

    .line 374
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 376
    :cond_8
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->j:Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "Some error occured"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 377
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->finish()V

    .line 380
    :cond_9
    :goto_0
    return-void
.end method


# virtual methods
.method public OnNetBankingListReceived(Lcom/payumoney/core/response/NetBankingStatusResponse;Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Lcom/payumoney/core/response/NetBankingStatusResponse;
    .param p2, "tag"    # Ljava/lang/String;

    .line 402
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {p1}, Lcom/payumoney/core/response/NetBankingStatusResponse;->getNetBankList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->setNetBankingStatusList(Ljava/util/ArrayList;)V

    .line 406
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->isNitroEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fetch_nitro_payment_options_api_tag"

    invoke-virtual {v0, p0, v1, v2}, Lcom/payumoney/core/PayUmoneySDK;->fetchDetailsForNitroFlow(Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 417
    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 418
    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUserDetails()Lcom/payumoney/core/response/UserDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a(Lcom/payumoney/core/response/PaymentOptionDetails;Ljava/util/HashMap;)V

    .line 426
    :cond_3
    :goto_0
    return-void
.end method

.method protected a()I
    .locals 1

    .line 134
    sget v0, Lcom/payumoney/sdkui/R$layout;->activity_citrus_ui:I

    return v0
.end method

.method public getPrimaryColor()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->m:I

    return v0
.end method

.method public isStopEditing()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->i:Z

    return v0
.end method

.method public missingParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->j:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->j:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 316
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->finish()V

    .line 318
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 145
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 384
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->onBackPressed()V

    .line 385
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_style"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->g:I

    .line 56
    iget v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->g:I

    if-eq v0, v2, :cond_0

    .line 57
    iget v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->g:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->setTheme(I)V

    goto :goto_0

    .line 59
    :cond_0
    sget v0, Lcom/payumoney/sdkui/R$style;->AppTheme_default:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->setTheme(I)V

    .line 61
    :goto_0
    invoke-super {p0, p1}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->i:Z

    .line 63
    invoke-static {p0}, Lcom/payumoney/sdkui/ui/utils/PreferenceManager;->initializeInstance(Landroid/content/Context;)V

    .line 64
    iput-object p0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->j:Landroid/app/Activity;

    .line 65
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_email"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_mobile"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p0, v1, v2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->setUserDetails(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_amount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->e:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->e:Ljava/lang/String;

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_flow"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 75
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "override_result_screen"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->l:Z

    .line 76
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 77
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->j:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/payumoney/sdkui/R$attr;->colorPrimary:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 78
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    .line 79
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    const-string v3, "Getting payment details"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 81
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 82
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 83
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->j:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/payumoney/sdkui/R$attr;->colorPrimary:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 84
    iget v2, v2, Landroid/util/TypedValue;->data:I

    iput v2, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->m:I

    .line 85
    sget v2, Lcom/payumoney/sdkui/R$string;->color_string:I

    invoke-virtual {p0, v2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 87
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 88
    iget-object v4, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->j:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v6, Lcom/payumoney/sdkui/R$attr;->colorPrimaryDark:I

    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 89
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 90
    sget v4, Lcom/payumoney/sdkui/R$string;->color_string:I

    invoke-virtual {p0, v4}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 92
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 93
    iget-object v6, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->j:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Lcom/payumoney/sdkui/R$attr;->actionMenuTextColor:I

    invoke-virtual {v6, v7, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 94
    iget v4, v4, Landroid/util/TypedValue;->data:I

    .line 95
    sget v6, Lcom/payumoney/sdkui/R$string;->color_string:I

    invoke-virtual {p0, v6}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v0

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v5

    .line 99
    invoke-virtual {v5, v2}, Lcom/payumoney/core/PayUmoneyConfig;->setColorPrimary(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v5, v3}, Lcom/payumoney/core/PayUmoneyConfig;->setColorPrimaryDark(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v5, v4}, Lcom/payumoney/core/PayUmoneyConfig;->setTextColorPrimary(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->b()V

    .line 105
    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->o:Z

    .line 107
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 108
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 113
    :cond_2
    invoke-virtual {p0, p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->isDataConnectionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    const-string v1, "citrus_ui_activity"

    invoke-virtual {v0, p0, v1}, Lcom/payumoney/core/PayUmoneySDK;->addPayment(Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payumoney/sdkui/R$string;->no_internet_connection:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->finish()V

    .line 121
    :cond_4
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 389
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->onDestroy()V

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->o:Z

    .line 393
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    .line 397
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 304
    invoke-direct {p0, p2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->c(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Lcom/payumoney/core/response/ErrorResponse;
    .param p2, "tag"    # Ljava/lang/String;

    .line 322
    invoke-direct {p0, p2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->c(Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public onLogout()V
    .locals 3

    .line 430
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 432
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->clearAllFragments()V

    .line 434
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    if-eqz v0, :cond_2

    .line 437
    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->isNitroEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getPaymentID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fetch_nitro_payment_options_api_on_logout_tag"

    invoke-virtual {v0, p0, v1, v2}, Lcom/payumoney/core/PayUmoneySDK;->fetchDetailsForNitroFlow(Lcom/payumoney/core/listener/OnFetchUserDetailsForNitroFlowListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->setUserDetails(Lcom/payumoney/core/response/UserDetail;)V

    .line 445
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-direct {p0, v0, v1}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a(Lcom/payumoney/core/response/PaymentOptionDetails;Ljava/util/HashMap;)V

    .line 449
    :cond_2
    :goto_0
    return-void
.end method

.method public onMultipleCardBinDetailsReceived(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/payumoney/core/response/BinDetail;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 280
    .local p1, "binDetailresponse":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/payumoney/core/response/BinDetail;>;"
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-direct {p0, v0, p1}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a(Lcom/payumoney/core/response/PaymentOptionDetails;Ljava/util/HashMap;)V

    .line 286
    :cond_1
    return-void
.end method

.method public onPaymentOptionReceived(Lcom/payumoney/core/response/PaymentOptionDetails;Ljava/lang/String;)V
    .locals 2
    .param p1, "paymentDetails"    # Lcom/payumoney/core/response/PaymentOptionDetails;
    .param p2, "tag"    # Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 296
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->b()V

    .line 297
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    const-string v1, "get_net_banking_status_api_tag"

    invoke-virtual {v0, p0, v1}, Lcom/payumoney/core/PayUmoneySDK;->getNetBankingStatusList(Lcom/payumoney/core/listener/OnNetBankingStatusListReceivedListener;Ljava/lang/String;)V

    .line 300
    :cond_0
    return-void
.end method

.method protected onResumeFragments()V
    .locals 3

    .line 199
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->onResumeFragments()V

    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v1

    const-string v2, "Exception"

    invoke-virtual {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 205
    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 290
    return-void
.end method

.method public onUserDetailsReceivedForNitroFlow(Lcom/payumoney/core/response/UserDetail;Ljava/lang/String;)V
    .locals 2
    .param p1, "userDetail"    # Lcom/payumoney/core/response/UserDetail;
    .param p2, "tag"    # Ljava/lang/String;

    .line 243
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-virtual {v0, p1}, Lcom/payumoney/core/response/PaymentOptionDetails;->setUserDetails(Lcom/payumoney/core/response/UserDetail;)V

    .line 249
    invoke-virtual {p1}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/payumoney/core/response/UserDetail;->getSaveCardList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->n:Lcom/payumoney/core/response/PaymentOptionDetails;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a(Lcom/payumoney/core/response/PaymentOptionDetails;Ljava/util/HashMap;)V

    .line 260
    :cond_2
    :goto_0
    return-void
.end method

.method public processAndShowResult(Lcom/payumoney/sdkui/ui/utils/ResultModel;Z)V
    .locals 5
    .param p1, "resultModel"    # Lcom/payumoney/sdkui/ui/utils/ResultModel;
    .param p2, "isAddMoneyTxn"    # Z

    .line 148
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->k:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->h:Z

    .line 150
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->c()V

    .line 151
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "CitrusActivity$ Screen Size = "

    if-le v1, v0, :cond_1

    .line 155
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-le v1, v0, :cond_2

    .line 157
    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->h:Z

    .line 158
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->onBackPressed()V

    .line 156
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_2
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getTransactionResponse()Lcom/payumoney/core/entity/TransactionResponse;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 167
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getTransactionResponse()Lcom/payumoney/core/entity/TransactionResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/entity/TransactionResponse;->getTransactionStatus()Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    move-result-object v1

    sget-object v3, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->SUCCESSFUL:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0, p1, p2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a(ZLcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    goto :goto_2

    .line 171
    :cond_4
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getError()Lcom/payumoney/core/response/PayumoneyError;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 172
    invoke-direct {p0, v2, p1, p2}, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->a(ZLcom/payumoney/sdkui/ui/utils/ResultModel;Z)V

    .line 174
    :cond_5
    :goto_2
    return-void
.end method

.method public setStopEditing(Z)V
    .locals 0
    .param p1, "stopEditing"    # Z

    .line 231
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->i:Z

    .line 232
    return-void
.end method

.method public setUserDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "mobile"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->c:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/activities/PayUmoneyActivity;->d:Ljava/lang/String;

    .line 130
    return-void
.end method
