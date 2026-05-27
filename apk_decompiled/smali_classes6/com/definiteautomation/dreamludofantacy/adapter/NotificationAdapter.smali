.class public Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final dataArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "applicationContext",
            "dataArrayList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p2, "dataArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->dataArrayList:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$NotificationAdapter(ILandroid/view/View;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->getImage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->getDate_created()Ljava/lang/String;

    move-result-object v1

    const-string v2, "created"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 21
    check-cast p1, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->getImage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p1, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;->iconTv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 44
    :cond_0
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;->titleTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;->timeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->getDate_created()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$NotificationAdapter$BBqgToA8hRrSkvnLHlZnjfDNp70;

    invoke-direct {v1, p0, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$NotificationAdapter$BBqgToA8hRrSkvnLHlZnjfDNp70;-><init>(Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
