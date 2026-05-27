.class public final enum Lcom/hbb20/CountryCodePicker$PhoneNumberType;
.super Ljava/lang/Enum;
.source "CountryCodePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/CountryCodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hbb20/CountryCodePicker$PhoneNumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum FIXED_LINE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum FIXED_LINE_OR_MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum PAGER:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum PERSONAL_NUMBER:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum PREMIUM_RATE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum SHARED_COST:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum TOLL_FREE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum UAN:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum UNKNOWN:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum VOICEMAIL:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field public static final enum VOIP:Lcom/hbb20/CountryCodePicker$PhoneNumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 2456
    new-instance v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2457
    new-instance v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v3, "FIXED_LINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->FIXED_LINE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2460
    new-instance v3, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v5, "FIXED_LINE_OR_MOBILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2462
    new-instance v5, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v7, "TOLL_FREE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->TOLL_FREE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2463
    new-instance v7, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v9, "PREMIUM_RATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->PREMIUM_RATE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2467
    new-instance v9, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v11, "SHARED_COST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->SHARED_COST:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2469
    new-instance v11, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v13, "VOIP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->VOIP:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2473
    new-instance v13, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v15, "PERSONAL_NUMBER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->PERSONAL_NUMBER:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2474
    new-instance v15, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v14, "PAGER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->PAGER:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2477
    new-instance v14, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v12, "UAN"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->UAN:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2479
    new-instance v12, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v10, "VOICEMAIL"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->VOICEMAIL:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2482
    new-instance v10, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v8, "UNKNOWN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->UNKNOWN:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2455
    const/16 v8, 0xc

    new-array v8, v8, [Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->$VALUES:[Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2455
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$PhoneNumberType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2455
    const-class v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    return-object v0
.end method

.method public static values()[Lcom/hbb20/CountryCodePicker$PhoneNumberType;
    .locals 1

    .line 2455
    sget-object v0, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->$VALUES:[Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    invoke-virtual {v0}, [Lcom/hbb20/CountryCodePicker$PhoneNumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    return-object v0
.end method
