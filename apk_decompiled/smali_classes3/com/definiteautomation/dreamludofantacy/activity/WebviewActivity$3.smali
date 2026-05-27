.class Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$3;
.super Ljava/lang/Object;
.source "WebviewActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->getPrivacyPolicy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
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
            "Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 158
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 159
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 10
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
            "Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;>;"
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/helper/ProgressBar;->hideProgressDialog()V

    .line 142
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;

    .line 145
    .local v0, "legalData":Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;->getResult()Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->getSuccess()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 148
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/WebviewActivity;)Landroid/webkit/WebView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->getPrivacy_policy()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const-string v7, "text/html"

    const-string v8, "UTF-8"

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v0    # "legalData":Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;>;"
    :cond_0
    return-void
.end method
