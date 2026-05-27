.class public interface abstract Lcom/payu/socketverification/util/PayUNetworkConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTENT_TYPE_APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final DEVICE_ANALYTICS:Ljava/lang/String; = "DeviceAnalytics"

.field public static final FINISH:Ljava/lang/String; = "FINISH"

.field public static final FINISH_USING_HTTP:Ljava/lang/String; = "finish_using_http"

.field public static final FORCE:Ljava/lang/String; = "force"

.field public static final HTTP_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final METHOD_TYPE_POST:Ljava/lang/String; = "POST"

.field public static final PAYMENT_DEFAULT_PARAMS:Ljava/lang/String; = "payment_default_params"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PAYU_ID_KEY:Ljava/lang/String; = "payuId"

.field public static final PENDING_STATUS_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_KEY:Ljava/lang/String; = "result"

.field public static final SOCKET_CONNECTED:Ljava/lang/String; = "socket_connected"

.field public static final SOCKET_DISCONNECTED:Ljava/lang/String; = "socket_disconnected"

.field public static final SOCKET_FINISH:Ljava/lang/String; = "/upi/finish"

.field public static final SOCKET_NOT_CREATED:I = 0x3eb

.field public static final SOCKET_NOT_CREATED_MESSAGE:Ljava/lang/String; = "Socket is not created "

.field public static final SOCKET_NULL:I = 0x3ec

.field public static final SOCKET_NULL_MESSAGE:Ljava/lang/String; = "Socket is null, please create socket before calling startSocketEvents()"

.field public static final SOCKET_VERIFY:Ljava/lang/String; = "/upi/verify"

.field public static final UPI_RESPONSE_PARAM:Ljava/lang/String; = "/upi-response?payuId="

.field public static final UPI_SOCKET:Ljava/lang/String; = "upi_socket"

.field public static final UPI_UPDATE_EVENT:Ljava/lang/String; = "upi-update"

.field public static final UPI_VERFICATION_EVENT:Ljava/lang/String; = "upi-verification"

.field public static final UPI_VERIFICATION_RESPONSE_EVENT:Ljava/lang/String; = "upi-verification-response"

.field public static final VERIFY:Ljava/lang/String; = "VERIFY"

.field public static final VERIFY_HTTP_TIMEOUT:I = 0x1d4c0


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "pending"

    const-string v2, "rnf"

    const-string v3, "no data found"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/payu/socketverification/util/PayUNetworkConstant;->PENDING_STATUS_LIST:Ljava/util/List;

    return-void
.end method
