.class final Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity$1;->a:Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 195
    nop

    .end local p1    # "view":Landroid/webkit/WebView;
    .end local p2    # "url":Ljava/lang/String;
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 196
    nop

    .end local p0    # "this":Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity$1;
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity$1;->a:Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;

    invoke-static {p1}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a(Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;)V

    .line 197
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 190
    nop

    .end local p0    # "this":Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity$1;
    .end local p1    # "view":Landroid/webkit/WebView;
    .end local p2    # "url":Ljava/lang/String;
    .end local p3    # "favicon":Landroid/graphics/Bitmap;
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 191
    return-void
.end method
