.class public interface abstract Leasypay/listeners/WebClientListener;
.super Ljava/lang/Object;
.source "WebClientListener.java"


# virtual methods
.method public abstract OnWcPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract OnWcPageStart(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract OnWcSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end method

.method public abstract WcshouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract WcshouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/Object;)Z
.end method
