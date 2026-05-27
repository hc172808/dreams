.class Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomFilter"
.end annotation


# instance fields
.field a:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;

.field final synthetic b:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

.field private c:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;


# direct methods
.method private constructor <init>(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;)V
    .locals 0
    .param p2, "mAdapter"    # Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;
    .param p3, "searchContentChangeListener"    # Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;

    .line 128
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;->b:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    .line 129
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;->c:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    .line 131
    iput-object p3, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;->a:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;
    .param p2, "x1"    # Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;
    .param p3, "x2"    # Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;
    .param p4, "x3"    # Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$1;

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;-><init>(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 136
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 137
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 141
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;->b:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->c(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/payumoney/core/entity/PaymentEntity;

    .line 142
    invoke-virtual {v4}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    goto :goto_0

    .line 146
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count Number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 150
    goto :goto_1

    .line 146
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;->b:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->c(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 152
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;->b:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->c(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 154
    :goto_1
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 159
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count Number 2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;->b:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Ljava/util/List;)Ljava/util/List;

    .line 161
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;->a:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;->publishSearchResult(Ljava/util/List;)V

    .line 162
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;->b:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method
