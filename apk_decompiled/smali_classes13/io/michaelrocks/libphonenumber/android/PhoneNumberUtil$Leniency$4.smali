.class final enum Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$4;
.super Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 561
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILio/michaelrocks/libphonenumber/android/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method verify(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;)Z
    .locals 2
    .param p1, "number"    # Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/CharSequence;
    .param p3, "util"    # Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
    .param p4, "matcher"    # Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;

    .line 568
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "candidateString":Ljava/lang/String;
    invoke-virtual {p3, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->isValidNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    invoke-static {p1, v0, p3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->containsOnlyValidXChars(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    invoke-static {p1, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->containsMoreThanOneSlashInNationalNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 572
    invoke-static {p1, p3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->isNationalPrefixPresentIfRequired(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    new-instance v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$4$1;

    invoke-direct {v1, p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$4$1;-><init>(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$4;)V

    invoke-virtual {p4, p1, p2, p3, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->checkNumberGroupingIsValid(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$NumberGroupingChecker;)Z

    move-result v1

    return v1

    .line 573
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method
