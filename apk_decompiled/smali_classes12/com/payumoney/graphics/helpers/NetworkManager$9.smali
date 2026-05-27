.class Lcom/payumoney/graphics/helpers/NetworkManager$9;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/graphics/helpers/NetworkManager;->downloadCoreSDKPriorityResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payumoney/graphics/helpers/NetworkManager;


# direct methods
.method constructor <init>(Lcom/payumoney/graphics/helpers/NetworkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/graphics/helpers/NetworkManager;

    .line 308
    iput-object p1, p0, Lcom/payumoney/graphics/helpers/NetworkManager$9;->this$0:Lcom/payumoney/graphics/helpers/NetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 315
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 0
    .param p1, "response"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .line 311
    return-void
.end method
