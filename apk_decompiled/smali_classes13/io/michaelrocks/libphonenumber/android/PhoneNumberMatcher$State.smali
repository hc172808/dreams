.class final enum Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;
.super Ljava/lang/Enum;
.source "PhoneNumberMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

.field public static final enum DONE:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

.field public static final enum NOT_READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

.field public static final enum READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 188
    new-instance v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->NOT_READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    new-instance v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    new-instance v3, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->DONE:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    .line 187
    const/4 v5, 0x3

    new-array v5, v5, [Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->$VALUES:[Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 187
    const-class v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    return-object v0
.end method

.method public static values()[Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;
    .locals 1

    .line 187
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->$VALUES:[Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    invoke-virtual {v0}, [Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    return-object v0
.end method
