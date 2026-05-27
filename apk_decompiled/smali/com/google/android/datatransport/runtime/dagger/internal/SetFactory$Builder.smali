.class public final Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;
.super Ljava/lang/Object;
.source "SetFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final collectionProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/inject/Provider<",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private final individualProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/inject/Provider<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1
    .param p1, "individualProviderSize"    # I
    .param p2, "collectionProviderSize"    # I

    .line 63
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;, "Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/DaggerCollections;->presizedList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;->individualProviders:Ljava/util/List;

    .line 65
    invoke-static {p2}, Lcom/google/android/datatransport/runtime/dagger/internal/DaggerCollections;->presizedList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;->collectionProviders:Ljava/util/List;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(IILcom/google/android/datatransport/runtime/dagger/internal/SetFactory$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$1;

    .line 59
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;, "Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;-><init>(II)V

    return-void
.end method


# virtual methods
.method public addCollectionProvider(Ljavax/inject/Provider;)Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "+",
            "Ljava/util/Collection<",
            "+TT;>;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;, "Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder<TT;>;"
    .local p1, "collectionProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+Ljava/util/Collection<+TT;>;>;"
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;->collectionProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-object p0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Codegen error? Null provider"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public addProvider(Ljavax/inject/Provider;)Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "+TT;>;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;, "Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder<TT;>;"
    .local p1, "individualProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;->individualProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-object p0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Codegen error? Null provider"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public build()Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory<",
            "TT;>;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;, "Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder<TT;>;"
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;->individualProviders:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/DaggerCollections;->hasDuplicates(Ljava/util/List;)Z

    move-result v0

    const-string v1, "Codegen error?  Duplicates in the provider list"

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;->collectionProviders:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/DaggerCollections;->hasDuplicates(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;->individualProviders:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder;->collectionProviders:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory;-><init>(Ljava/util/List;Ljava/util/List;Lcom/google/android/datatransport/runtime/dagger/internal/SetFactory$1;)V

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
