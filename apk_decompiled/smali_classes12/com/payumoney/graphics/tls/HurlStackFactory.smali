.class public Lcom/payumoney/graphics/tls/HurlStackFactory;
.super Ljava/lang/Object;
.source "HurlStackFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHurlStack()Lcom/android/volley/toolbox/HurlStack;
    .locals 1

    .line 14
    new-instance v0, Lcom/payumoney/graphics/tls/HurlStackFactory$1;

    invoke-direct {v0}, Lcom/payumoney/graphics/tls/HurlStackFactory$1;-><init>()V

    .line 27
    .local v0, "hurlStack":Lcom/android/volley/toolbox/HurlStack;
    return-object v0
.end method
