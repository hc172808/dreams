.class public final enum Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

.field public static final enum EXACT_MATCH:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

.field public static final enum NOT_A_NUMBER:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

.field public static final enum NO_MATCH:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

.field public static final enum NSN_MATCH:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

.field public static final enum SHORT_NSN_MATCH:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 438
    new-instance v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    const-string v1, "NOT_A_NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    .line 439
    new-instance v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    const-string v3, "NO_MATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;->NO_MATCH:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    .line 440
    new-instance v3, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    const-string v5, "SHORT_NSN_MATCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    .line 441
    new-instance v5, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    const-string v7, "NSN_MATCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;->NSN_MATCH:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    .line 442
    new-instance v7, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    const-string v9, "EXACT_MATCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    .line 437
    const/4 v9, 0x5

    new-array v9, v9, [Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;->$VALUES:[Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 437
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 437
    const-class v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    return-object v0
.end method

.method public static values()[Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;
    .locals 1

    .line 437
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;->$VALUES:[Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    invoke-virtual {v0}, [Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    return-object v0
.end method
