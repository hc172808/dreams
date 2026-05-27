.class public Landroidx/databinding/MergedDataBinderMapper;
.super Landroidx/databinding/DataBinderMapper;
.source "MergedDataBinderMapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MergedDataBinderMapper"


# instance fields
.field private mExistingMappers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/databinding/DataBinderMapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFeatureBindingMappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/databinding/DataBinderMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/databinding/DataBinderMapper;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mExistingMappers:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mMappers:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mFeatureBindingMappers:Ljava/util/List;

    return-void
.end method

.method private loadFeatures()Z
    .locals 7

    .line 132
    const-string/jumbo v0, "unable to add feature mapper for "

    const-string v1, "MergedDataBinderMapper"

    const/4 v2, 0x0

    .line 133
    .local v2, "found":Z
    iget-object v3, p0, Landroidx/databinding/MergedDataBinderMapper;->mFeatureBindingMappers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 135
    .local v4, "mapper":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 136
    .local v5, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Landroidx/databinding/DataBinderMapper;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/databinding/DataBinderMapper;

    invoke-virtual {p0, v6}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Landroidx/databinding/DataBinderMapper;)V

    .line 138
    iget-object v6, p0, Landroidx/databinding/MergedDataBinderMapper;->mFeatureBindingMappers:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v2, 0x1

    .line 146
    .end local v5    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    goto :goto_2

    .line 144
    :catch_0
    move-exception v5

    .line 145
    .local v5, "exception":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 142
    .end local v5    # "exception":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v5

    .line 143
    .local v5, "exception":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "exception":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 141
    :catch_2
    move-exception v5

    goto :goto_1

    .line 147
    .end local v4    # "mapper":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 148
    :cond_1
    return v2
.end method


# virtual methods
.method public addMapper(Landroidx/databinding/DataBinderMapper;)V
    .locals 4
    .param p1, "mapper"    # Landroidx/databinding/DataBinderMapper;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "mapperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/databinding/DataBinderMapper;>;"
    iget-object v1, p0, Landroidx/databinding/MergedDataBinderMapper;->mExistingMappers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Landroidx/databinding/MergedDataBinderMapper;->mMappers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p1}, Landroidx/databinding/DataBinderMapper;->collectDependencies()Ljava/util/List;

    move-result-object v1

    .line 59
    .local v1, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroidx/databinding/DataBinderMapper;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/databinding/DataBinderMapper;

    .line 60
    .local v3, "dependency":Landroidx/databinding/DataBinderMapper;
    invoke-virtual {p0, v3}, Landroidx/databinding/MergedDataBinderMapper;->addMapper(Landroidx/databinding/DataBinderMapper;)V

    .line 61
    .end local v3    # "dependency":Landroidx/databinding/DataBinderMapper;
    goto :goto_0

    .line 63
    .end local v1    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroidx/databinding/DataBinderMapper;>;"
    :cond_0
    return-void
.end method

.method protected addMapper(Ljava/lang/String;)V
    .locals 3
    .param p1, "featureMapper"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mFeatureBindingMappers:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".DataBinderMapperImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public convertBrIdToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .line 116
    iget-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mMappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/DataBinderMapper;

    .line 117
    .local v1, "mapper":Landroidx/databinding/DataBinderMapper;
    invoke-virtual {v1, p1}, Landroidx/databinding/DataBinderMapper;->convertBrIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 119
    return-object v2

    .line 121
    .end local v1    # "mapper":Landroidx/databinding/DataBinderMapper;
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;->loadFeatures()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p0, p1}, Landroidx/databinding/MergedDataBinderMapper;->convertBrIdToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 3
    .param p1, "bindingComponent"    # Landroidx/databinding/DataBindingComponent;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "layoutId"    # I

    .line 73
    iget-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mMappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/DataBinderMapper;

    .line 74
    .local v1, "mapper":Landroidx/databinding/DataBinderMapper;
    invoke-virtual {v1, p1, p2, p3}, Landroidx/databinding/DataBinderMapper;->getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    .line 75
    .local v2, "result":Landroidx/databinding/ViewDataBinding;
    if-eqz v2, :cond_0

    .line 76
    return-object v2

    .line 78
    .end local v1    # "mapper":Landroidx/databinding/DataBinderMapper;
    .end local v2    # "result":Landroidx/databinding/ViewDataBinding;
    :cond_0
    goto :goto_0

    .line 79
    :cond_1
    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;->loadFeatures()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    return-object v0

    .line 82
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 3
    .param p1, "bindingComponent"    # Landroidx/databinding/DataBindingComponent;
    .param p2, "view"    # [Landroid/view/View;
    .param p3, "layoutId"    # I

    .line 88
    iget-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mMappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/DataBinderMapper;

    .line 89
    .local v1, "mapper":Landroidx/databinding/DataBinderMapper;
    invoke-virtual {v1, p1, p2, p3}, Landroidx/databinding/DataBinderMapper;->getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    .line 90
    .local v2, "result":Landroidx/databinding/ViewDataBinding;
    if-eqz v2, :cond_0

    .line 91
    return-object v2

    .line 93
    .end local v1    # "mapper":Landroidx/databinding/DataBinderMapper;
    .end local v2    # "result":Landroidx/databinding/ViewDataBinding;
    :cond_0
    goto :goto_0

    .line 94
    :cond_1
    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;->loadFeatures()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    return-object v0

    .line 97
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Landroidx/databinding/MergedDataBinderMapper;->mMappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/DataBinderMapper;

    .line 103
    .local v1, "mapper":Landroidx/databinding/DataBinderMapper;
    invoke-virtual {v1, p1}, Landroidx/databinding/DataBinderMapper;->getLayoutId(Ljava/lang/String;)I

    move-result v2

    .line 104
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 105
    return v2

    .line 107
    .end local v1    # "mapper":Landroidx/databinding/DataBinderMapper;
    .end local v2    # "result":I
    :cond_0
    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;->loadFeatures()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p0, p1}, Landroidx/databinding/MergedDataBinderMapper;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 111
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
