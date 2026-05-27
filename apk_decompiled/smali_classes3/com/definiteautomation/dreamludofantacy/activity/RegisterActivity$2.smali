.class Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->lambda$showBottomSheetDialog$3(Landroid/widget/EditText;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/definiteautomation/dreamludofantacy/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

.field final synthetic val$cvApplyCouponSocial:Landroidx/cardview/widget/CardView;

.field final synthetic val$etCouponSocial:Landroid/widget/EditText;

.field final synthetic val$imgCheckSocial:Landroid/widget/ImageView;

.field final synthetic val$imgRemoveCouponSocial:Landroid/widget/TextView;

.field final synthetic val$promoAppliedTextSocial:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$promoAppliedTextSocial",
            "val$cvApplyCouponSocial",
            "val$imgRemoveCouponSocial",
            "val$imgCheckSocial",
            "val$etCouponSocial"
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$promoAppliedTextSocial:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$cvApplyCouponSocial:Landroidx/cardview/widget/CardView;

    iput-object p4, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$imgRemoveCouponSocial:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$imgCheckSocial:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$etCouponSocial:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "call"    # Lretrofit2/Call;
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
            "Lcom/definiteautomation/dreamludofantacy/model/UserModel;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$700(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$cvApplyCouponSocial:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e1":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 346
    .end local v0    # "e1":Ljava/lang/NullPointerException;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$imgRemoveCouponSocial:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$imgRemoveCouponSocial:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$imgCheckSocial:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    goto :goto_1

    .line 349
    :catch_1
    move-exception v0

    .line 350
    .local v0, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 352
    .end local v0    # "e2":Ljava/lang/NullPointerException;
    :goto_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$etCouponSocial:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$imgRemoveCouponSocial:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$602(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
    .param p1, "call"    # Lretrofit2/Call;
    .param p2, "response"    # Lretrofit2/Response;
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
            "Lcom/definiteautomation/dreamludofantacy/model/UserModel;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/definiteautomation/dreamludofantacy/model/UserModel;",
            ">;)V"
        }
    .end annotation

    .line 290
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/UserModel;

    .line 293
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/UserModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 295
    .local v1, "res":Ljava/util/List;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getSuccess()I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-ne v3, v4, :cond_0

    .line 296
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$700(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 297
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$promoAppliedTextSocial:Landroid/widget/TextView;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v6}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$600(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v6, "%s refer code applied"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :try_start_0
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$cvApplyCouponSocial:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v5}, Landroidx/cardview/widget/CardView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v3

    .line 302
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 305
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$promoAppliedTextSocial:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$imgRemoveCouponSocial:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$imgCheckSocial:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 310
    goto :goto_1

    .line 308
    :catch_1
    move-exception v3

    .line 309
    .restart local v3    # "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 312
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_1
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 314
    :cond_0
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$700(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 316
    :try_start_2
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$cvApplyCouponSocial:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 319
    goto :goto_2

    .line 317
    :catch_2
    move-exception v3

    .line 318
    .restart local v3    # "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 321
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$promoAppliedTextSocial:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$imgRemoveCouponSocial:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$imgCheckSocial:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 326
    goto :goto_3

    .line 324
    :catch_3
    move-exception v3

    .line 325
    .restart local v3    # "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 327
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_3
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->val$etCouponSocial:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-static {v3, v4}, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;->access$602(Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity$2;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/RegisterActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/UserModel;
    .end local v1    # "res":Ljava/util/List;
    :cond_1
    :goto_4
    return-void
.end method
