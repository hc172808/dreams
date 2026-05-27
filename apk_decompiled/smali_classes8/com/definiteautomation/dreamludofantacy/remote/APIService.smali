.class public interface abstract Lcom/definiteautomation/dreamludofantacy/remote/APIService;
.super Ljava/lang/Object;
.source "APIService.java"


# virtual methods
.method public abstract sendNotification(Lcom/definiteautomation/dreamludofantacy/model/Sender;)Lretrofit2/Call;
    .param p1    # Lcom/definiteautomation/dreamludofantacy/model/Sender;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/definiteautomation/dreamludofantacy/model/Sender;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/definiteautomation/dreamludofantacy/model/MyResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type:application/json",
            "Authorization:key=AAAALwiwBIs:APA91bGSaV4e4YZ2JOVeN7imRkwvXogL4c3FZUv0Ukl8CL3QwhUweLOpfZY5dHnOCHalkyri8xsU_uAu5Bj_LXxcpfMj3NebPSwhkCznxstbCorIFek1ZaQ2bMJiMeMtS5K7CgzYDYGD"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "fcm/send"
    .end annotation
.end method
