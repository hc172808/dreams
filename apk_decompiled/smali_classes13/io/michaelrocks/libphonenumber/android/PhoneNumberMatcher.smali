.class final Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;
.super Ljava/lang/Object;
.source "PhoneNumberMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$NumberGroupingChecker;,
        Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final INNER_MATCHES:[Ljava/util/regex/Pattern;

.field private static final LEAD_CLASS:Ljava/util/regex/Pattern;

.field private static final MATCHING_BRACKETS:Ljava/util/regex/Pattern;

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final PUB_PAGES:Ljava/util/regex/Pattern;

.field private static final SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;


# instance fields
.field private lastMatch:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

.field private final leniency:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

.field private maxTries:J

.field private final phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

.field private final preferredRegion:Ljava/lang/String;

.field private final regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

.field private searchIndex:I

.field private state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 69
    const-string v0, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    .line 75
    nop

    .line 76
    const-string v0, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    .line 82
    nop

    .line 83
    const-string v0, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    .line 84
    const-string v0, ":[0-5]\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    .line 103
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/regex/Pattern;

    .line 105
    const-string v1, "/+(.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 108
    const-string v1, "(\\([^(]*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 111
    const-string v1, "(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 115
    const-string v1, "[\u2012-\u2015\uff0d]\\p{Z}*(.+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 117
    const-string v1, "\\.+\\p{Z}*([^.]+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 119
    const-string v1, "\\p{Z}+(\\P{Z}+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    .line 131
    const-string v0, "(\\[\uff08\uff3b"

    .line 132
    .local v0, "openingParens":Ljava/lang/String;
    const-string v1, ")\\]\uff09\uff3d"

    .line 133
    .local v1, "closingParens":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[^"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "nonParens":Ljava/lang/String;
    invoke-static {v2, v5}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "bracketPairLimit":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(?:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "])?(?:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "+["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "])?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "+(?:["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "])"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    .line 149
    invoke-static {v2, v4}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "leadLimit":Ljava/lang/String;
    invoke-static {v2, v6}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "punctuationLimit":Ljava/lang/String;
    const/16 v9, 0x14

    .line 159
    .local v9, "digitBlockLimit":I
    invoke-static {v2, v9}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "blockLimit":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 164
    .local v10, "punctuation":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\\p{Nd}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v9}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "digitSequence":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "+\uff0b"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 167
    .local v11, "leadClassChars":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, "leadClass":Ljava/lang/String;
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    .line 171
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x42

    invoke-static {v12, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    .line 176
    .end local v0    # "openingParens":Ljava/lang/String;
    .end local v1    # "closingParens":Ljava/lang/String;
    .end local v2    # "blockLimit":Ljava/lang/String;
    .end local v3    # "digitSequence":Ljava/lang/String;
    .end local v4    # "leadLimit":Ljava/lang/String;
    .end local v5    # "bracketPairLimit":Ljava/lang/String;
    .end local v6    # "punctuationLimit":Ljava/lang/String;
    .end local v7    # "nonParens":Ljava/lang/String;
    .end local v8    # "leadClass":Ljava/lang/String;
    .end local v9    # "digitBlockLimit":I
    .end local v10    # "punctuation":Ljava/lang/String;
    .end local v11    # "leadClassChars":Ljava/lang/String;
    return-void
.end method

.method constructor <init>(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;J)V
    .locals 3
    .param p1, "util"    # Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "leniency"    # Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;
    .param p5, "maxTries"    # J

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->NOT_READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->lastMatch:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->searchIndex:I

    .line 216
    new-instance v0, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    .line 236
    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    .line 239
    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-ltz v2, :cond_1

    .line 242
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 243
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    .line 244
    iput-object p3, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    .line 245
    iput-object p4, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->leniency:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    .line 246
    iput-wide p5, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    .line 247
    return-void

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 237
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static allNumberGroupsAreExactlyPresent(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "util"    # Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
    .param p1, "number"    # Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    .param p2, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p3, "formattedNumberGroups"    # [Ljava/lang/String;

    .line 507
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 508
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "candidateGroups":[Ljava/lang/String;
    nop

    .line 511
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_0
    array-length v1, v0

    sub-int/2addr v1, v2

    .line 515
    .local v1, "candidateNumberGroupIndex":I
    :goto_0
    array-length v3, v0

    if-eq v3, v2, :cond_5

    aget-object v3, v0, v1

    .line 517
    invoke-virtual {p0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 516
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 522
    :cond_1
    array-length v3, p3

    sub-int/2addr v3, v2

    .line 523
    .local v3, "formattedNumberGroupIndex":I
    :goto_1
    const/4 v4, 0x0

    if-lez v3, :cond_3

    if-ltz v1, :cond_3

    .line 525
    aget-object v5, v0, v1

    aget-object v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 527
    return v4

    .line 524
    :cond_2
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 532
    .end local v3    # "formattedNumberGroupIndex":I
    :cond_3
    if-ltz v1, :cond_4

    aget-object v3, v0, v1

    aget-object v5, p3, v4

    .line 533
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 532
    :goto_2
    return v2

    .line 518
    :cond_5
    :goto_3
    return v2
.end method

.method static allNumberGroupsRemainGrouped(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "util"    # Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
    .param p1, "number"    # Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    .param p2, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p3, "formattedNumberGroups"    # [Ljava/lang/String;

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "fromIndex":I
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    sget-object v2, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v1, v2, :cond_0

    .line 466
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "countryCode":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 471
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_3

    .line 474
    aget-object v2, p3, v1

    invoke-virtual {p2, v2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 475
    if-gez v0, :cond_1

    .line 476
    const/4 v2, 0x0

    return v2

    .line 479
    :cond_1
    aget-object v2, p3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 480
    if-nez v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 485
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "region":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 487
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 491
    invoke-virtual {p0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    aget-object v4, p3, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 493
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 492
    return v4

    .line 471
    .end local v2    # "region":Ljava/lang/String;
    .end local v3    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method static containsMoreThanOneSlashInNationalNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 6
    .param p0, "number"    # Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;

    .line 603
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 604
    .local v1, "firstSlashInBodyIndex":I
    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 606
    return v2

    .line 609
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 610
    .local v0, "secondSlashInBodyIndex":I
    if-gez v0, :cond_1

    .line 612
    return v2

    .line 616
    :cond_1
    nop

    .line 617
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    .line 618
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 619
    .local v3, "candidateHasCountryCode":Z
    :goto_1
    if-eqz v3, :cond_4

    .line 620
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 623
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 625
    :cond_4
    return v5
.end method

.method static containsOnlyValidXChars(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;)Z
    .locals 7
    .param p0, "number"    # Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "util"    # Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 635
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    .line 636
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 637
    .local v1, "charAtIndex":C
    const/16 v3, 0x58

    const/16 v4, 0x78

    if-eq v1, v4, :cond_0

    if-ne v1, v3, :cond_3

    .line 638
    :cond_0
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 639
    .local v5, "charAtNextIndex":C
    const/4 v6, 0x0

    if-eq v5, v4, :cond_2

    if-ne v5, v3, :cond_1

    goto :goto_1

    .line 648
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 649
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    .line 648
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 650
    return v6

    .line 642
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 643
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p0, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->isNumberMatch(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    move-result-object v3

    sget-object v4, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;->NSN_MATCH:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    if-eq v3, v4, :cond_3

    .line 644
    return v6

    .line 635
    .end local v1    # "charAtIndex":C
    .end local v5    # "charAtNextIndex":C
    :cond_3
    add-int/2addr v0, v2

    goto :goto_0

    .line 654
    .end local v0    # "index":I
    :cond_4
    return v2
.end method

.method private extractInnerMatch(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    .locals 13
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .line 356
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 357
    .local v4, "possibleInnerMatch":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 358
    .local v5, "groupMatcher":Ljava/util/regex/Matcher;
    const/4 v6, 0x1

    .line 359
    .local v6, "isFirstMatch":Z
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-wide v7, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_3

    .line 360
    const-wide/16 v7, 0x1

    if-eqz v6, :cond_1

    .line 362
    sget-object v9, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 364
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-interface {p1, v2, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 362
    invoke-static {v9, v10}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 365
    .local v9, "group":Ljava/lang/CharSequence;
    invoke-direct {p0, v9, p2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object v10

    .line 366
    .local v10, "match":Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    if-eqz v10, :cond_0

    .line 367
    return-object v10

    .line 369
    :cond_0
    iget-wide v11, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    sub-long/2addr v11, v7

    iput-wide v11, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    .line 370
    const/4 v6, 0x0

    .line 372
    .end local v9    # "group":Ljava/lang/CharSequence;
    .end local v10    # "match":Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    :cond_1
    sget-object v9, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 373
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 372
    invoke-static {v9, v11}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 374
    .restart local v9    # "group":Ljava/lang/CharSequence;
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v10

    add-int/2addr v10, p2

    invoke-direct {p0, v9, v10}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object v10

    .line 375
    .restart local v10    # "match":Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    if-eqz v10, :cond_2

    .line 376
    return-object v10

    .line 378
    :cond_2
    iget-wide v11, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    sub-long/2addr v11, v7

    iput-wide v11, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    .line 379
    .end local v9    # "group":Ljava/lang/CharSequence;
    .end local v10    # "match":Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    goto :goto_1

    .line 356
    .end local v4    # "possibleInnerMatch":Ljava/util/regex/Pattern;
    .end local v5    # "groupMatcher":Ljava/util/regex/Matcher;
    .end local v6    # "isFirstMatch":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 381
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private extractMatch(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    .locals 3
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .line 324
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 325
    return-object v1

    .line 329
    :cond_0
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "followingText":Ljava/lang/String;
    sget-object v2, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    return-object v1

    .line 337
    .end local v0    # "followingText":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object v0

    .line 338
    .local v0, "match":Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    if-eqz v0, :cond_2

    .line 339
    return-object v0

    .line 344
    :cond_2
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->extractInnerMatch(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object v1

    return-object v1
.end method

.method private find(I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    .locals 8
    .param p1, "index"    # I

    .line 257
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 258
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    iget-wide v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 260
    .local v1, "start":I
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-interface {v2, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 265
    .local v2, "candidate":Ljava/lang/CharSequence;
    sget-object v3, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 267
    invoke-direct {p0, v2, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->extractMatch(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object v3

    .line 268
    .local v3, "match":Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    if-eqz v3, :cond_0

    .line 269
    return-object v3

    .line 272
    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int p1, v1, v4

    .line 273
    iget-wide v4, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->maxTries:J

    .line 274
    .end local v1    # "start":I
    .end local v2    # "candidate":Ljava/lang/CharSequence;
    .end local v3    # "match":Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    goto :goto_0

    .line 276
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getNationalNumberGroups(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)[Ljava/lang/String;
    .locals 5
    .param p0, "util"    # Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
    .param p1, "number"    # Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    .line 544
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->format(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "rfc3966Format":Ljava/lang/String;
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 548
    .local v1, "endIndex":I
    if-gez v1, :cond_0

    .line 549
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 552
    :cond_0
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 553
    .local v2, "startIndex":I
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getNationalNumberGroups(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)[Ljava/lang/String;
    .locals 3
    .param p0, "util"    # Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
    .param p1, "number"    # Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    .param p2, "formattingPattern"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 564
    invoke-virtual {p0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, p2, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 566
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 565
    return-object v1
.end method

.method private static isInvalidPunctuationSymbol(C)Z
    .locals 2
    .param p0, "character"    # C

    .line 312
    const/16 v0, 0x25

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isLatinLetter(C)Z
    .locals 3
    .param p0, "letter"    # C

    .line 299
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 300
    return v1

    .line 302
    :cond_0
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 303
    .local v0, "block":Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    .line 308
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 303
    :cond_2
    return v1
.end method

.method static isNationalPrefixPresentIfRequired(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;)Z
    .locals 7
    .param p0, "number"    # Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    .param p1, "util"    # Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 660
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v1, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 661
    return v2

    .line 663
    :cond_0
    nop

    .line 664
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "phoneNumberRegion":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 666
    .local v1, "metadata":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_1

    .line 667
    return v2

    .line 670
    :cond_1
    invoke-virtual {p1, p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, "nationalNumber":Ljava/lang/String;
    nop

    .line 672
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    move-result-object v4

    .line 675
    .local v4, "formatRule":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 676
    invoke-virtual {v4}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 679
    return v2

    .line 681
    :cond_2
    nop

    .line 682
    invoke-virtual {v4}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 681
    invoke-static {v5}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 684
    return v2

    .line 687
    :cond_3
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, "rawInputCopy":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 691
    .local v5, "rawInput":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v1, v6}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    move-result v6

    return v6

    .line 693
    .end local v2    # "rawInputCopy":Ljava/lang/String;
    .end local v5    # "rawInput":Ljava/lang/StringBuilder;
    :cond_4
    return v2
.end method

.method private static limit(II)Ljava/lang/String;
    .locals 2
    .param p0, "lower"    # I
    .param p1, "upper"    # I

    .line 180
    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    if-lt p1, p0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private parseAndVerify(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    .locals 4
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .line 397
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 403
    :cond_0
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->leniency:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    sget-object v2, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->VALID:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    invoke-virtual {v1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 406
    if-lez p2, :cond_2

    sget-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_2

    .line 407
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 409
    .local v1, "previousChar":C
    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    :cond_1
    return-object v0

    .line 413
    .end local v1    # "previousChar":C
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, p2

    .line 414
    .local v1, "lastCharIndex":I
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 415
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 416
    .local v2, "nextChar":C
    invoke-static {v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 417
    :cond_3
    return-object v0

    .line 422
    .end local v1    # "lastCharIndex":I
    .end local v2    # "nextChar":C
    :cond_4
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 424
    .local v1, "number":Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->leniency:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v2, v1, p1, v3, p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->verify(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 428
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    .line 429
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->clearRawInput()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    .line 430
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    .line 431
    new-instance v2, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;-><init>(ILjava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)V
    :try_end_0
    .catch Lio/michaelrocks/libphonenumber/android/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 435
    .end local v1    # "number":Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    :cond_5
    goto :goto_1

    .line 398
    :cond_6
    :goto_0
    return-object v0

    .line 433
    :catch_0
    move-exception v1

    .line 436
    :goto_1
    return-object v0
.end method

.method private static trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .line 284
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 285
    .local v0, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 288
    :cond_0
    return-object p1
.end method


# virtual methods
.method checkNumberGroupingIsValid(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$NumberGroupingChecker;)Z
    .locals 10
    .param p1, "number"    # Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/CharSequence;
    .param p3, "util"    # Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
    .param p4, "checker"    # Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$NumberGroupingChecker;

    .line 572
    nop

    .line 573
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 574
    .local v1, "normalizedCandidate":Ljava/lang/StringBuilder;
    invoke-static {p3, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->getNationalNumberGroups(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)[Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "formattedNumberGroups":[Ljava/lang/String;
    invoke-interface {p4, p3, p1, v1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    return v0

    .line 579
    :cond_0
    nop

    .line 580
    invoke-virtual {p3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getMetadataSource()Lio/michaelrocks/libphonenumber/android/MetadataSource;

    move-result-object v3

    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-interface {v3, v4}, Lio/michaelrocks/libphonenumber/android/MetadataSource;->getAlternateFormatsForCountry(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 581
    .local v3, "alternateFormats":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    invoke-virtual {p3, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getNationalSignificantNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 582
    .local v4, "nationalSignificantNumber":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 583
    invoke-virtual {v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 584
    .local v7, "alternateFormat":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    invoke-virtual {v7}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v8

    if-lez v8, :cond_1

    .line 586
    iget-object v8, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    .line 587
    invoke-virtual {v7, v5}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 588
    .local v8, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v9

    if-nez v9, :cond_1

    .line 590
    goto :goto_0

    .line 593
    .end local v8    # "pattern":Ljava/util/regex/Pattern;
    :cond_1
    invoke-static {p3, p1, v7}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->getNationalNumberGroups(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-interface {p4, p3, p1, v1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 595
    return v0

    .line 597
    .end local v7    # "alternateFormat":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    :cond_2
    goto :goto_0

    .line 599
    :cond_3
    return v5
.end method

.method public hasNext()Z
    .locals 2

    .line 698
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    sget-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->NOT_READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_1

    .line 699
    iget v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->searchIndex:I

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->find(I)Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->lastMatch:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    .line 700
    if-nez v0, :cond_0

    .line 701
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->DONE:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    goto :goto_0

    .line 703
    :cond_0
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;->end()I

    move-result v0

    iput v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->searchIndex:I

    .line 704
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    .line 707
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    sget-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public next()Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    .locals 2

    .line 713
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->lastMatch:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    .line 719
    .local v0, "result":Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->lastMatch:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    .line 720
    sget-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;->NOT_READY:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->state:Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$State;

    .line 721
    return-object v0

    .line 714
    .end local v0    # "result":Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->next()Lio/michaelrocks/libphonenumber/android/PhoneNumberMatch;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 729
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
