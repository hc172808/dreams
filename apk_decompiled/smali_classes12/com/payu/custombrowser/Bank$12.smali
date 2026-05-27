.class Lcom/payu/custombrowser/Bank$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$12;->a:Lcom/payu/custombrowser/Bank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 252
    const-string v0, "SmsRetrieverClient failed to start"

    invoke-static {v0}, Lcom/payu/custombrowser/util/e;->b(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    return-void
.end method
