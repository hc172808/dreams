.class Lcom/payumoney/core/SdkSession$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/SdkSession$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->create(Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnUserLoginListener;Lcom/payumoney/core/listener/PayULoginDialogListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/payumoney/core/listener/OnUserLoginListener;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/payumoney/core/listener/PayULoginDialogListener;

.field final synthetic f:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnUserLoginListener;Ljava/lang/String;Lcom/payumoney/core/listener/PayULoginDialogListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 668
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$14;->f:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$14;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$14;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/payumoney/core/SdkSession$14;->c:Lcom/payumoney/core/listener/OnUserLoginListener;

    iput-object p5, p0, Lcom/payumoney/core/SdkSession$14;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/payumoney/core/SdkSession$14;->e:Lcom/payumoney/core/listener/PayULoginDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 741
    const-string v0, "error_description"

    .line 743
    :try_start_0
    new-instance v1, Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/android/volley/ServerError;

    iget-object v2, v2, Lcom/android/volley/ServerError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v2, v2, Lcom/android/volley/NetworkResponse;->data:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 744
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$14;->e:Lcom/payumoney/core/listener/PayULoginDialogListener;

    if-eqz v1, :cond_0

    .line 747
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$14;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/PayULoginDialogListener;->onErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :cond_0
    return-void

    .line 752
    :cond_1
    goto :goto_0

    .line 750
    :catch_0
    move-exception v0

    .line 753
    :goto_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$14;->c:Lcom/payumoney/core/listener/OnUserLoginListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$14;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnUserLoginListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$14;->e:Lcom/payumoney/core/listener/PayULoginDialogListener;

    if-eqz v0, :cond_2

    .line 755
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$14;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/PayULoginDialogListener;->onErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_2
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 761
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 737
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$14;->c:Lcom/payumoney/core/listener/OnUserLoginListener;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$14;->d:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/payumoney/core/listener/OnUserLoginListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 672
    const-string v0, "access_token"

    :try_start_0
    new-instance v1, Lcom/payumoney/core/utils/ResponseParser;

    invoke-direct {v1}, Lcom/payumoney/core/utils/ResponseParser;-><init>()V

    .line 673
    invoke-virtual {v1, p1}, Lcom/payumoney/core/utils/ResponseParser;->parseLoginResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;

    move-result-object v1

    .line 674
    instance-of v2, v1, Lcom/payumoney/core/response/PayUMoneyLoginResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "LoginFailed"

    const-string v4, "clevertap"

    const-string v5, "IdValue"

    if-eqz v2, :cond_4

    .line 675
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 678
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 679
    iget-object v3, p0, Lcom/payumoney/core/SdkSession$14;->a:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    iget-object v3, p0, Lcom/payumoney/core/SdkSession$14;->f:Lcom/payumoney/core/SdkSession;

    iget-object v5, p0, Lcom/payumoney/core/SdkSession$14;->b:Ljava/lang/String;

    invoke-static {v3, v5, v2}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 682
    iget-object v3, p0, Lcom/payumoney/core/SdkSession$14;->f:Lcom/payumoney/core/SdkSession;

    invoke-static {v3}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "LoginSucceeded"

    invoke-static {v3, v5, v2, v4}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 684
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 685
    iget-object v3, p0, Lcom/payumoney/core/SdkSession$14;->f:Lcom/payumoney/core/SdkSession;

    invoke-static {v3}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/payumoney/core/utils/SharedPrefsUtils;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 686
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$14;->f:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/payumoney/core/SdkSession;->setToken(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$14;->f:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->resetSessionUpdateTimeStamp(Landroid/content/Context;)V

    .line 688
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$14;->f:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "email"

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$14;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/payumoney/core/utils/SharedPrefsUtils;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 689
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$14;->c:Lcom/payumoney/core/listener/OnUserLoginListener;

    check-cast v1, Lcom/payumoney/core/response/PayUMoneyLoginResponse;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$14;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnUserLoginListener;->onSuccessfulLogin(Lcom/payumoney/core/response/PayUMoneyLoginResponse;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$14;->e:Lcom/payumoney/core/listener/PayULoginDialogListener;

    if-eqz v0, :cond_0

    .line 691
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$14;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/payumoney/core/listener/PayULoginDialogListener;->onDialogDismiss(Ljava/lang/String;)V

    .line 692
    :cond_0
    goto/16 :goto_1

    .line 694
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 695
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$14;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$14;->f:Lcom/payumoney/core/SdkSession;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$14;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 698
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$14;->f:Lcom/payumoney/core/SdkSession;

    invoke-static {v1}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v4}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 700
    new-instance v0, Lcom/payumoney/core/response/ErrorResponse;

    invoke-direct {v0}, Lcom/payumoney/core/response/ErrorResponse;-><init>()V

    .line 701
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payumoney/core/response/ErrorResponse;->setMessage(Ljava/lang/String;)V

    .line 702
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$14;->c:Lcom/payumoney/core/listener/OnUserLoginListener;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$14;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/OnUserLoginListener;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V

    .line 704
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "Something went wrong"

    .line 706
    :goto_0
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$14;->e:Lcom/payumoney/core/listener/PayULoginDialogListener;

    if-eqz v1, :cond_3

    .line 707
    iget-object v2, p0, Lcom/payumoney/core/SdkSession$14;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/PayULoginDialogListener;->onErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_3
    goto :goto_1

    .line 711
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 712
    iget-object v2, p0, Lcom/payumoney/core/SdkSession$14;->a:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v2, p0, Lcom/payumoney/core/SdkSession$14;->f:Lcom/payumoney/core/SdkSession;

    iget-object v5, p0, Lcom/payumoney/core/SdkSession$14;->b:Ljava/lang/String;

    invoke-static {v2, v5, v0}, Lcom/payumoney/core/SdkSession;->a(Lcom/payumoney/core/SdkSession;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 715
    iget-object v2, p0, Lcom/payumoney/core/SdkSession$14;->f:Lcom/payumoney/core/SdkSession;

    invoke-static {v2}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v0, v4}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$14;->c:Lcom/payumoney/core/listener/OnUserLoginListener;

    move-object v2, v1

    check-cast v2, Lcom/payumoney/core/response/ErrorResponse;

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$14;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/payumoney/core/listener/OnUserLoginListener;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$14;->e:Lcom/payumoney/core/listener/PayULoginDialogListener;

    if-eqz v0, :cond_5

    .line 724
    check-cast v1, Lcom/payumoney/core/response/ErrorResponse;

    invoke-virtual {v1}, Lcom/payumoney/core/response/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$14;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/PayULoginDialogListener;->onErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 732
    :cond_5
    :goto_1
    goto :goto_2

    .line 726
    :catch_0
    move-exception v0

    .line 727
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$14;->c:Lcom/payumoney/core/listener/OnUserLoginListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$14;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/payumoney/core/listener/OnUserLoginListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v1, p0, Lcom/payumoney/core/SdkSession$14;->e:Lcom/payumoney/core/listener/PayULoginDialogListener;

    if-eqz v1, :cond_6

    .line 731
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$14;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/payumoney/core/listener/PayULoginDialogListener;->onErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_6
    :goto_2
    return-void
.end method
