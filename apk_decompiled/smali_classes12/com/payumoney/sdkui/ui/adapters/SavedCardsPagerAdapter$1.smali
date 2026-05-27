.class Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    .line 116
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$1;->a:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$1;->a:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;->onAddCardClick()V

    .line 119
    return-void
.end method
