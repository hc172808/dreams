.class public final Lio/michaelrocks/libphonenumber/android/internal/RegexBasedMatcher;
.super Ljava/lang/Object;
.source "RegexBasedMatcher.java"

# interfaces
.implements Lio/michaelrocks/libphonenumber/android/internal/MatcherApi;


# instance fields
.field private final regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/internal/RegexBasedMatcher;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    .line 36
    return-void
.end method

.method public static create()Lio/michaelrocks/libphonenumber/android/internal/MatcherApi;
    .locals 1

    .line 31
    new-instance v0, Lio/michaelrocks/libphonenumber/android/internal/RegexBasedMatcher;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/internal/RegexBasedMatcher;-><init>()V

    return-object v0
.end method

.method private static match(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;Z)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "allowPrefixMatch"    # Z

    .line 51
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 52
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const/4 v1, 0x0

    return v1

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    return v1
.end method


# virtual methods
.method public matchNationalNumber(Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;Z)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "numberDesc"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .param p3, "allowPrefixMatch"    # Z

    .line 41
    invoke-virtual {p2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "nationalNumberPattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const/4 v1, 0x0

    return v1

    .line 47
    :cond_0
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/internal/RegexBasedMatcher;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    invoke-virtual {v1, v0}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lio/michaelrocks/libphonenumber/android/internal/RegexBasedMatcher;->match(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    return v1
.end method
