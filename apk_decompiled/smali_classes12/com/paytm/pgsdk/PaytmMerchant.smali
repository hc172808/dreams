.class public Lcom/paytm/pgsdk/PaytmMerchant;
.super Ljava/lang/Object;
.source "PaytmMerchant.java"


# instance fields
.field public mChannelId:Ljava/lang/String;

.field public mChecksumGenerationURL:Ljava/lang/String;

.field public mChecksumVerificationURL:Ljava/lang/String;

.field public mIndustryTypeId:Ljava/lang/String;

.field public mMerchantIdentifier:Ljava/lang/String;

.field public mTheme:Ljava/lang/String;

.field public mWebsite:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "inChecksumGenerationUR"    # Ljava/lang/String;
    .param p2, "inChecksumVerificationURL"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmMerchant;->mChecksumGenerationURL:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/paytm/pgsdk/PaytmMerchant;->mChecksumVerificationURL:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "inMerchantIdentifier"    # Ljava/lang/String;
    .param p2, "inChannelId"    # Ljava/lang/String;
    .param p3, "inIndustryTypeId"    # Ljava/lang/String;
    .param p4, "inWebsite"    # Ljava/lang/String;
    .param p5, "inTheme"    # Ljava/lang/String;
    .param p6, "inChecksumGenerationUR"    # Ljava/lang/String;
    .param p7, "inChecksumVerificationURL"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmMerchant;->mMerchantIdentifier:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/paytm/pgsdk/PaytmMerchant;->mChannelId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/paytm/pgsdk/PaytmMerchant;->mIndustryTypeId:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/paytm/pgsdk/PaytmMerchant;->mWebsite:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/paytm/pgsdk/PaytmMerchant;->mTheme:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/paytm/pgsdk/PaytmMerchant;->mChecksumGenerationURL:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/paytm/pgsdk/PaytmMerchant;->mChecksumVerificationURL:Ljava/lang/String;

    .line 33
    return-void
.end method
