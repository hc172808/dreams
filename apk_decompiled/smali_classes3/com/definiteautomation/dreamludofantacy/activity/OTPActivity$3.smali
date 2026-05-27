.class Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$3;
.super Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
.source "OTPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->setUpVerificationCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-direct {p0}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 1
    .param p1, "verificationId"    # Ljava/lang/String;
    .param p2, "token"    # Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "verificationId",
            "token"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$302(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0, p2}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$402(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 190
    return-void
.end method

.method public onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 1
    .param p1, "credential"    # Lcom/google/firebase/auth/PhoneAuthCredential;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "credential"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->access$200(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 170
    return-void
.end method

.method public onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .locals 4
    .param p1, "e"    # Lcom/google/firebase/FirebaseException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 174
    instance-of v0, p1, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    const/4 v1, 0x0

    const-string v2, "PhoneAuth"

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid credential: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    const-string v2, "Invalid OTP"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 178
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/FirebaseTooManyRequestsException;

    if-eqz v0, :cond_1

    .line 180
    const-string v0, "SMS Quota exceeded."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity$3;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    :cond_1
    :goto_0
    return-void
.end method
