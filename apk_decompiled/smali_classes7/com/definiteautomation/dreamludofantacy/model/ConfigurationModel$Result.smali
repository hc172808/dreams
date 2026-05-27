.class public Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;
.super Ljava/lang/Object;
.source "ConfigurationModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private about_us:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "about_us"
    .end annotation
.end field

.field private faq:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "faq"
    .end annotation
.end field

.field private legal_policy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "legal_policy"
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field private privacy_policy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "privacy_policy"
    .end annotation
.end field

.field private rules:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rules"
    .end annotation
.end field

.field private success:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field

.field private terms_condition:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "terms_condition"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbout_us()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->about_us:Ljava/lang/String;

    return-object v0
.end method

.method public getFaq()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->faq:Ljava/lang/String;

    return-object v0
.end method

.method public getLegal_policy()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->legal_policy:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacy_policy()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->privacy_policy:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->rules:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->success:I

    return v0
.end method

.method public getTerms_condition()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->terms_condition:Ljava/lang/String;

    return-object v0
.end method

.method public setAbout_us(Ljava/lang/String;)V
    .locals 0
    .param p1, "about_us"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "about_us"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->about_us:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setFaq(Ljava/lang/String;)V
    .locals 0
    .param p1, "faq"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faq"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->faq:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setLegal_policy(Ljava/lang/String;)V
    .locals 0
    .param p1, "legal_policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "legal_policy"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->legal_policy:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->msg:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPrivacy_policy(Ljava/lang/String;)V
    .locals 0
    .param p1, "privacy_policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privacy_policy"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->privacy_policy:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setRules(Ljava/lang/String;)V
    .locals 0
    .param p1, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rules"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->rules:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setSuccess(I)V
    .locals 0
    .param p1, "success"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    .line 59
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->success:I

    .line 60
    return-void
.end method

.method public setTerms_condition(Ljava/lang/String;)V
    .locals 0
    .param p1, "terms_condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terms_condition"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/ConfigurationModel$Result;->terms_condition:Ljava/lang/String;

    .line 100
    return-void
.end method
