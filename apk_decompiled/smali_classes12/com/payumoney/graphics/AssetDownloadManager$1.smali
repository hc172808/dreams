.class Lcom/payumoney/graphics/AssetDownloadManager$1;
.super Ljava/lang/Object;
.source "AssetDownloadManager.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/graphics/AssetDownloadManager;->getAllResources(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payumoney/graphics/AssetDownloadManager;

.field final synthetic val$netBanking:Lcom/payumoney/graphics/classes/NetBanking;


# direct methods
.method constructor <init>(Lcom/payumoney/graphics/AssetDownloadManager;Lcom/payumoney/graphics/classes/NetBanking;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/graphics/AssetDownloadManager;

    .line 117
    iput-object p1, p0, Lcom/payumoney/graphics/AssetDownloadManager$1;->this$0:Lcom/payumoney/graphics/AssetDownloadManager;

    iput-object p2, p0, Lcom/payumoney/graphics/AssetDownloadManager$1;->val$netBanking:Lcom/payumoney/graphics/classes/NetBanking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 124
    iget-object v0, p0, Lcom/payumoney/graphics/AssetDownloadManager$1;->this$0:Lcom/payumoney/graphics/AssetDownloadManager;

    iget-object v0, v0, Lcom/payumoney/graphics/AssetDownloadManager;->failedResourceList:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/payumoney/graphics/AssetDownloadManager$1;->val$netBanking:Lcom/payumoney/graphics/classes/NetBanking;

    invoke-virtual {v1}, Lcom/payumoney/graphics/classes/NetBanking;->getIssuerCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 0
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .line 120
    return-void
.end method
