.class public Lcom/payumoney/sdkui/ui/fragments/ResultFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/payumoney/sdkui/ui/utils/ResultModel;

.field private b:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 36
    return-void
.end method

.method public static newInstance(Lcom/payumoney/sdkui/ui/utils/ResultModel;)Lcom/payumoney/sdkui/ui/fragments/ResultFragment;
    .locals 3
    .param p0, "resultModel"    # Lcom/payumoney/sdkui/ui/utils/ResultModel;

    .line 39
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;

    invoke-direct {v0}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;-><init>()V

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41
    const-string v2, "result"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 113
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->b:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    nop

    .line 118
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement FragmentCallbacks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/utils/ResultModel;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->a:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    .line 52
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 58
    sget v0, Lcom/payumoney/sdkui/R$layout;->fragment_result_new:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    sget v2, Lcom/payumoney/sdkui/R$id;->payment_result_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 60
    sget v3, Lcom/payumoney/sdkui/R$id;->payment_result_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 61
    sget v4, Lcom/payumoney/sdkui/R$id;->btn_continue_shopping:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    .line 62
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payumoney/core/PayUmoneyConfig;->getDoneButtonText()Ljava/lang/String;

    move-result-object v5

    .line 63
    sget v6, Lcom/payumoney/sdkui/R$id;->transaction_response_msg:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 65
    if-eqz v5, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 66
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payumoney/core/PayUmoneyConfig;->getDoneButtonText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :cond_0
    sget v5, Lcom/payumoney/sdkui/R$string;->text_return_to_app_shopping:I

    invoke-virtual {p0, v5}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->a:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    invoke-virtual {v5}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getTransactionResponse()Lcom/payumoney/core/entity/TransactionResponse;

    move-result-object v5

    const-string v7, "ResultFragment$ Transaction Error "

    if-eqz v5, :cond_3

    .line 71
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->a:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    invoke-virtual {v5}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getTransactionResponse()Lcom/payumoney/core/entity/TransactionResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payumoney/core/entity/TransactionResponse;->getTransactionStatus()Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    move-result-object v5

    sget-object v8, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->SUCCESSFUL:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    invoke-virtual {v5, v8}, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    sget v5, Lcom/payumoney/sdkui/R$drawable;->ic_txn_done:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    sget v2, Lcom/payumoney/sdkui/R$string;->text_payment_success:I

    invoke-virtual {p0, v2}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v2, Lcom/payumoney/core/entity/Amount;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "netamount"

    invoke-static {v3, v5}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "INR"

    invoke-direct {v2, v3, v5}, Lcom/payumoney/core/entity/Amount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget v3, Lcom/payumoney/sdkui/R$string;->transaction_response_msg:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "#.##"

    invoke-virtual {v2, v7}, Lcom/payumoney/core/entity/Amount;->getValueAsFormattedDouble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {p0, v3, v5}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    goto/16 :goto_1

    :cond_1
    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->a:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    invoke-virtual {v5}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getTransactionResponse()Lcom/payumoney/core/entity/TransactionResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payumoney/core/entity/TransactionResponse;->getTransactionStatus()Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    move-result-object v5

    sget-object v8, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->TRANSACTION_EXPIRY:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    invoke-virtual {v5, v8}, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    sget v5, Lcom/payumoney/sdkui/R$drawable;->ic_txn_fail:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    sget v2, Lcom/payumoney/sdkui/R$string;->text_payment_failure:I

    invoke-virtual {p0, v2}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->a:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getTransactionResponse()Lcom/payumoney/core/entity/TransactionResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/entity/TransactionResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->a:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    invoke-virtual {v5}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getTransactionResponse()Lcom/payumoney/core/entity/TransactionResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payumoney/core/entity/TransactionResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 83
    :cond_2
    sget v5, Lcom/payumoney/sdkui/R$drawable;->ic_txn_fail:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    sget v2, Lcom/payumoney/sdkui/R$string;->text_payment_failure:I

    invoke-virtual {p0, v2}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->a:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getError()Lcom/payumoney/core/response/PayumoneyError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/response/PayumoneyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->a:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    invoke-virtual {v5}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getTransactionResponse()Lcom/payumoney/core/entity/TransactionResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payumoney/core/entity/TransactionResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 89
    :cond_3
    sget v5, Lcom/payumoney/sdkui/R$drawable;->ic_txn_fail:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    sget v2, Lcom/payumoney/sdkui/R$string;->text_payment_failure:I

    invoke-virtual {p0, v2}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->a:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getError()Lcom/payumoney/core/response/PayumoneyError;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 92
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->a:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getError()Lcom/payumoney/core/response/PayumoneyError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/response/PayumoneyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->a:Lcom/payumoney/sdkui/ui/utils/ResultModel;

    invoke-virtual {v5}, Lcom/payumoney/sdkui/ui/utils/ResultModel;->getError()Lcom/payumoney/core/response/PayumoneyError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payumoney/core/response/PayumoneyError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_4
    :goto_1
    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/ResultFragment$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/ResultFragment$1;-><init>(Lcom/payumoney/sdkui/ui/fragments/ResultFragment;)V

    invoke-virtual {v4, v1}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 122
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ResultFragment;->b:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    .line 124
    return-void
.end method
