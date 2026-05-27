.class public Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WithdrawActivity.java"


# instance fields
.field public alertTv:Landroid/widget/TextView;

.field private amountEt:Lcom/google/android/material/textfield/TextInputEditText;

.field private amountSt:Ljava/lang/String;

.field private api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

.field public bonus:D

.field public codeTv:Landroid/widget/TextView;

.field public deposit:D

.field private googlePayRb:Landroid/widget/RadioButton;

.field private mopSt:Ljava/lang/String;

.field private nameEt:Lcom/google/android/material/textfield/TextInputEditText;

.field private nameSt:Ljava/lang/String;

.field public noteTv:Landroid/widget/TextView;

.field private numberEt:Lcom/google/android/material/textfield/TextInputEditText;

.field private numberSt:Ljava/lang/String;

.field private payTmRb:Landroid/widget/RadioButton;

.field private phonePeRb:Landroid/widget/RadioButton;

.field private progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

.field public signTv:Landroid/widget/TextView;

.field private submitBt:Landroid/widget/Button;

.field public total:D

.field public winning:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->deposit:D

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->winning:D

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->bonus:D

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->total:D

    return-void
.end method

.method static synthetic access$000(Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;

    .line 34
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    return-object v0
.end method

.method private getUserDetails()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v1

    const-string v2, "KEY_USER_ID"

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1234567890"

    invoke-interface {v0, v2, v1}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->getUserDetails(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 160
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$1;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 200
    return-void
.end method

.method private postWithdraw()V
    .locals 9

    .line 203
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->showProgressDialog()V

    .line 205
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v2, "KEY_USER_ID"

    invoke-virtual {v0, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->nameSt:Ljava/lang/String;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->numberSt:Ljava/lang/String;

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->amountSt:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iget-object v8, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->mopSt:Ljava/lang/String;

    const-string v2, "1234567890"

    invoke-interface/range {v1 .. v8}, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;->postWithdraw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 206
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/UserModel;>;"
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$2;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity$2;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 228
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$WithdrawActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$WithdrawActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->nameEt:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "Enter Account Holder Name"

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->numberEt:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "Enter PayTm Number"

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 86
    const-string v0, "PayTm"

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->mopSt:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public synthetic lambda$onCreate$2$WithdrawActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->nameEt:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "Enter Account Holder Name"

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->numberEt:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "Enter GooglePay Number"

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 92
    const-string v0, "GooglePay"

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->mopSt:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public synthetic lambda$onCreate$3$WithdrawActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->nameEt:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "Enter Account Holder Name"

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->numberEt:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "Enter PhonePe Number"

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 98
    const-string v0, "PhonePe"

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->mopSt:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public synthetic lambda$onCreate$4$WithdrawActivity(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->submitBt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 105
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    nop

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->payTmRb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "PayTm"

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->mopSt:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    const-string v2, "Enter Valid PayTm Number"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->googlePayRb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "GooglePay"

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->mopSt:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    const-string v2, "Enter Valid GooglePay Number"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->phonePeRb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const-string v0, "PhonePe"

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->mopSt:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    const-string v2, "Enter Valid PhonePe Number"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->nameEt:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->nameSt:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->numberEt:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->numberSt:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->amountEt:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->amountSt:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->nameSt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v2, "#ff0000"

    const/4 v3, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->numberSt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->amountSt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 126
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->amountEt:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v4, v0

    .line 128
    .local v4, "payout":D
    sget v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MIN_WITHDRAW_LIMIT:I

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->submitBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Minimum Redeem Amount is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MIN_WITHDRAW_LIMIT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 133
    :cond_3
    sget v0, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MAX_WITHDRAW_LIMIT:I

    int-to-double v6, v0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->submitBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum Redeem Amount is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MAX_WITHDRAW_LIMIT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 138
    :cond_4
    iget-wide v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->winning:D

    cmpl-double v0, v6, v4

    if-ltz v0, :cond_5

    .line 139
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->postWithdraw()V

    goto :goto_2

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->submitBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    const-string v1, "You don\'t have enough won amount to redeem."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .end local v4    # "payout":D
    :goto_2
    goto :goto_3

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->submitBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    const-string v1, "Please enter valid information."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    :goto_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->setContentView(I)V

    .line 55
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/MyApplication;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->api:Lcom/definiteautomation/dreamludofantacy/api/ApiCalling;

    .line 56
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->progressBar:Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    .line 58
    const v0, 0x7f0803d5

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 59
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 60
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 63
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WithdrawActivity$w3DDbeg6LJLxCSMfFdgfYbfFMIU;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WithdrawActivity$w3DDbeg6LJLxCSMfFdgfYbfFMIU;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->getUserDetails()V

    .line 67
    const v2, 0x7f0802c1

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->payTmRb:Landroid/widget/RadioButton;

    .line 68
    const v2, 0x7f0801b5

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->googlePayRb:Landroid/widget/RadioButton;

    .line 69
    const v2, 0x7f0802d0

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->phonePeRb:Landroid/widget/RadioButton;

    .line 70
    const v2, 0x7f08027b

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->nameEt:Lcom/google/android/material/textfield/TextInputEditText;

    .line 71
    const v2, 0x7f080299

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->numberEt:Lcom/google/android/material/textfield/TextInputEditText;

    .line 72
    const v2, 0x7f08009b

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->amountEt:Lcom/google/android/material/textfield/TextInputEditText;

    .line 73
    const v2, 0x7f080292

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->noteTv:Landroid/widget/TextView;

    .line 74
    const v2, 0x7f080097

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    .line 75
    const v2, 0x7f080114

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->codeTv:Landroid/widget/TextView;

    .line 76
    const v2, 0x7f080346

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->signTv:Landroid/widget/TextView;

    .line 77
    const v2, 0x7f080376

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->submitBt:Landroid/widget/Button;

    .line 79
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->codeTv:Landroid/widget/TextView;

    sget-object v4, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->signTv:Landroid/widget/TextView;

    sget-object v4, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->alertTv:Landroid/widget/TextView;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v5, v4, v1

    sget v1, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->MIN_WITHDRAW_LIMIT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    const-string v1, "Minimum Redeem Amount is %s%d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->payTmRb:Landroid/widget/RadioButton;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WithdrawActivity$JEt3Rp-KDUJ7n5H3WHFVC5jI-Zk;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WithdrawActivity$JEt3Rp-KDUJ7n5H3WHFVC5jI-Zk;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->googlePayRb:Landroid/widget/RadioButton;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WithdrawActivity$xUwRYMjHPgnyCTS09z8Q3T9KH2s;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WithdrawActivity$xUwRYMjHPgnyCTS09z8Q3T9KH2s;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->phonePeRb:Landroid/widget/RadioButton;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WithdrawActivity$ED50rpYtH5rizLv_QoqJOOlAb9M;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WithdrawActivity$ED50rpYtH5rizLv_QoqJOOlAb9M;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;->submitBt:Landroid/widget/Button;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WithdrawActivity$41BcR1PQ7kVTKZiha2YFD8gDsBw;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$WithdrawActivity$41BcR1PQ7kVTKZiha2YFD8gDsBw;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/WithdrawActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method
