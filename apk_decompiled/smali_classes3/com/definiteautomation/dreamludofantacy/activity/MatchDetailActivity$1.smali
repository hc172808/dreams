.class Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;
.super Ljava/lang/Object;
.source "MatchDetailActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->searchParticipant()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/util/List<",
        "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
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
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 343
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;>;"
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
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
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
            ">;>;)V"
        }
    .end annotation

    .line 283
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 285
    .local v0, "legalData":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    if-eqz v0, :cond_4

    .line 286
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_id()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantIdSt:Ljava/lang/String;

    .line 287
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_id()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantIdSt:Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantNameSt:Ljava/lang/String;

    .line 291
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->nameTv:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v6, v6, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    aput-object v6, v3, v2

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v6, v6, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->sParticipantNameSt:Ljava/lang/String;

    aput-object v6, v3, v4

    const-string v4, "%s Vs %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->remarkTv:Landroid/widget/TextView;

    const-string v3, "Please, Share room code to opponent join match."

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 297
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "a"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "Please, Don\'t press back until waiting time over or opponent join match."

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 301
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->nameTv:Landroid/widget/TextView;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v4, v4, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "%s Vs Team 2"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->remarkTv:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "b"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)I

    move-result v1

    if-nez v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->nameTv:Landroid/widget/TextView;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v4, v4, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->fParticipantNameSt:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "%s Vs Player 2"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->remarkTv:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "c"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 319
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->nameTv:Landroid/widget/TextView;

    const-string v3, "Team 1 Vs Team 2"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->remarkTv:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "d"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)I

    move-result v1

    if-nez v1, :cond_4

    .line 328
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->nameTv:Landroid/widget/TextView;

    const-string v3, "Player 1 Vs Player 2"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$000(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$100(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 331
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->timerTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    iget-object v1, v1, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->remarkTv:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity$1;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/activity/MatchDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "e"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 338
    .end local v0    # "legalData":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    :cond_4
    :goto_0
    return-void
.end method
