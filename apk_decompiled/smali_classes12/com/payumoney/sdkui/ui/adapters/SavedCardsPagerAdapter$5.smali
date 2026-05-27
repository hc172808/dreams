.class Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$5;
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
.field final synthetic a:I

.field final synthetic b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    .line 184
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$5;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    iput p2, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$5;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->c(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;I)I

    .line 187
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$5;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    iget v1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$5;->a:I

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;I)I

    .line 188
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$5;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$5;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->c(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$5;->b:Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;->d(Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/adapters/SavedCardsPagerAdapter$OnCardClickListener;->onSavedCardClick(II)V

    .line 189
    return-void
.end method
