.class Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterWrapper"
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

.field private final b:Landroidx/viewpager/widget/PagerAdapter;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .param p2, "adapter"    # Landroidx/viewpager/widget/PagerAdapter;

    .line 189
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->a:Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    .line 191
    new-instance p1, Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->c:Landroid/util/SparseArray;

    .line 192
    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/Object;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 211
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 220
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 221
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 260
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPageWidth(I)F
    .locals 1
    .param p1, "position"    # I

    .line 255
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 202
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 241
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 245
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 246
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 230
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 231
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 216
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 197
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 198
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 250
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/WrapContentHeightViewPager$PagerAdapterWrapper;->b:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 251
    return-void
.end method
