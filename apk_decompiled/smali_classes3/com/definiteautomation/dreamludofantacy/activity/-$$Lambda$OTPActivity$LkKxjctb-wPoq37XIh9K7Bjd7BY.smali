.class public final synthetic Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$OTPActivity$LkKxjctb-wPoq37XIh9K7Bjd7BY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$OTPActivity$LkKxjctb-wPoq37XIh9K7Bjd7BY;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$OTPActivity$LkKxjctb-wPoq37XIh9K7Bjd7BY;->f$0:Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;

    invoke-virtual {v0, p1}, Lcom/definiteautomation/dreamludofantacy/activity/OTPActivity;->lambda$signInWithPhoneAuthCredential$0$OTPActivity(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
