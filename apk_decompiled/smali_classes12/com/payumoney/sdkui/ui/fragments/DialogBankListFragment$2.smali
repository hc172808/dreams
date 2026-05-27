.class Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 132
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->hideKeyBoard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2$1;-><init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$2;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    return-void
.end method
