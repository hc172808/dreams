.class Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    .line 145
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object v0

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3$1;-><init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 169
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->b(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->b(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_1
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v1

    const-string v2, "NullPointerException"

    invoke-virtual {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 176
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->b(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$3;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->b(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v1

    const-string v2, "NullPointerException"

    invoke-virtual {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 155
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
