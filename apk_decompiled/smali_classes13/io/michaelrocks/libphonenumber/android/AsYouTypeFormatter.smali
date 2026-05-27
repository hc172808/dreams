.class public Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;
.super Ljava/lang/Object;
.source "AsYouTypeFormatter.java"


# static fields
.field private static final DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DIGIT_PLACEHOLDER:Ljava/lang/String; = "\u2008"

.field private static final ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMPTY_METADATA:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

.field private static final MIN_LEADING_DIGITS_LENGTH:I = 0x3

.field private static final NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_BEFORE_NATIONAL_NUMBER:C = ' '


# instance fields
.field private ableToFormat:Z

.field private accruedInput:Ljava/lang/StringBuilder;

.field private accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

.field private currentFormattingPattern:Ljava/lang/String;

.field private currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

.field private currentOutput:Ljava/lang/String;

.field private defaultCountry:Ljava/lang/String;

.field private defaultMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

.field private extractedNationalPrefix:Ljava/lang/String;

.field private formattingTemplate:Ljava/lang/StringBuilder;

.field private inputHasFormatting:Z

.field private isCompleteNumber:Z

.field private isExpectingCountryCallingCode:Z

.field private lastMatchPosition:I

.field private nationalNumber:Ljava/lang/StringBuilder;

.field private originalPosition:I

.field private final phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

.field private positionToRemember:I

.field private possibleFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

.field private regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

.field private shouldAddSpaceAfterNationalPrefix:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;-><init>()V

    .line 67
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->EMPTY_METADATA:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 76
    nop

    .line 77
    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    const-string v0, "[- ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 91
    const-string v0, "\u2008"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneUtil"    # Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
    .param p2, "regionCode"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    .line 47
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 58
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 59
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 92
    iput v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    .line 95
    iput v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->originalPosition:I

    .line 98
    iput v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->positionToRemember:I

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    .line 103
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 106
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    .line 111
    new-instance v0, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    .line 121
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 122
    iput-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    .line 123
    invoke-direct {p0, p2}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 124
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 125
    return-void
.end method

.method private ableToExtractLongerNdd()Z
    .locals 3

    .line 403
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 405
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 410
    .local v0, "indexOfPreviousNdd":I
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 412
    .end local v0    # "indexOfPreviousNdd":I
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "nationalNumber"    # Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 466
    .local v0, "prefixBeforeNationalNumberLength":I
    iget-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 475
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private attemptToChooseFormattingPattern()Ljava/lang/String;
    .locals 2

    .line 486
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 488
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getAvailableFormats(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 492
    return-object v0

    .line 494
    :cond_0
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 496
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;
    .locals 2

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 388
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 389
    iput v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    .line 390
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 391
    const-string v0, ""

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 392
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attemptToExtractCountryCallingCode()Z
    .locals 6

    .line 593
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 594
    return v1

    .line 596
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .local v0, "numberWithoutCountryCallingCode":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v2

    .line 598
    .local v2, "countryCode":I
    if-nez v2, :cond_1

    .line 599
    return v1

    .line 601
    :cond_1
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 602
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 603
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, "newRegionCode":Ljava/lang/String;
    const-string v3, "001"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 605
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v3, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v3

    iput-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 606
    :cond_2
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 607
    invoke-direct {p0, v1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v3

    iput-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 609
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, "countryCodeString":Ljava/lang/String;
    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    const-string v4, ""

    iput-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 614
    const/4 v4, 0x1

    return v4
.end method

.method private attemptToExtractIdd()Z
    .locals 7

    .line 565
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\+|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 567
    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-virtual {v0, v1}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 568
    .local v0, "internationalPrefix":Ljava/util/regex/Pattern;
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 569
    .local v1, "iddMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 570
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 571
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 572
    .local v4, "startOfCountryCallingCode":I
    iget-object v5, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 573
    iget-object v5, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget-object v5, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 575
    iget-object v5, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    iget-object v5, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_0

    .line 578
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    :cond_0
    return v2

    .line 582
    .end local v4    # "startOfCountryCallingCode":I
    :cond_1
    return v3
.end method

.method private createFormattingTemplate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)Z
    .locals 4
    .param p1, "format"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 226
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "numberPattern":Ljava/lang/String;
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 228
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "tempTemplate":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 230
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const/4 v2, 0x1

    return v2

    .line 233
    :cond_0
    return v2
.end method

.method private getAvailableFormats(Ljava/lang/String;)V
    .locals 6
    .param p1, "leadingDigits"    # Ljava/lang/String;

    .line 171
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 172
    .local v0, "isInternationalNumber":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 173
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 174
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 175
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v1

    :goto_1
    nop

    .line 176
    .local v1, "formatList":Ljava/util/List;, "Ljava/util/List<Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 179
    .local v3, "format":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 181
    invoke-virtual {v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-static {v4}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    invoke-virtual {v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v4

    if-nez v4, :cond_2

    .line 183
    invoke-virtual {v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule()Z

    move-result v4

    if-nez v4, :cond_2

    .line 188
    goto :goto_2

    .line 189
    :cond_2
    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    if-nez v4, :cond_3

    .line 192
    invoke-virtual {v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-static {v4}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 193
    invoke-virtual {v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v4

    if-nez v4, :cond_3

    .line 196
    goto :goto_2

    .line 198
    :cond_3
    sget-object v4, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 199
    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v3    # "format":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    :cond_4
    goto :goto_2

    .line 202
    :cond_5
    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "numberPattern"    # Ljava/lang/String;
    .param p2, "numberFormat"    # Ljava/lang/String;

    .line 241
    const-string v0, "999999999999999"

    .line 242
    .local v0, "longestPhoneNumber":Ljava/lang/String;
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 243
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 244
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "aPhoneNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 248
    const-string v3, ""

    return-object v3

    .line 251
    :cond_0
    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "template":Ljava/lang/String;
    const-string v4, "9"

    const-string v5, "\u2008"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    return-object v3
.end method

.method private getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, "countryCallingCode":I
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v1, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "mainCountry":Ljava/lang/String;
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v2, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 133
    .local v2, "metadata":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_0

    .line 134
    return-object v2

    .line 138
    :cond_0
    sget-object v3, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->EMPTY_METADATA:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    return-object v3
.end method

.method private inputAccruedNationalNumber()Ljava/lang/String;
    .locals 4

    .line 505
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 506
    .local v0, "lengthOfNationalNumber":I
    if-lez v0, :cond_2

    .line 507
    const-string v1, ""

    .line 508
    .local v1, "tempNationalNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 509
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v1

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    .end local v2    # "i":I
    :cond_0
    iget-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 513
    .end local v1    # "tempNationalNumber":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private inputDigitHelper(C)Ljava/lang/String;
    .locals 6
    .param p1, "nextChar"    # C

    .line 642
    sget-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 643
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    iget v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 644
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "tempTemplate":Ljava/lang/String;
    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v3, v5, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    iput v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    .line 647
    iget-object v5, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    add-int/2addr v4, v2

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 649
    .end local v1    # "tempTemplate":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 652
    iput-boolean v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    .line 654
    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 655
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;
    .locals 3
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    .line 310
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    if-eqz p2, :cond_0

    .line 312
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->originalPosition:I

    .line 316
    :cond_0
    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isDigitOrLeadingPlusSign(C)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 317
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    .line 318
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputHasFormatting:Z

    goto :goto_0

    .line 320
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->normalizeAndAccrueDigitsAndPlusSign(CZ)C

    move-result p1

    .line 322
    :goto_0
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v0, :cond_5

    .line 326
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputHasFormatting:Z

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :cond_2
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 332
    :cond_3
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToExtractLongerNdd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 339
    :cond_4
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 344
    :cond_5
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 350
    :pswitch_0
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 351
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    goto :goto_1

    .line 353
    :cond_6
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 354
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 348
    :pswitch_1
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 358
    :goto_1
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    if-eqz v0, :cond_8

    .line 359
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 360
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 362
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 364
    :cond_8
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 365
    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "tempNationalNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "formattedNumber":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 370
    return-object v1

    .line 372
    :cond_9
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 373
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 374
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 376
    :cond_a
    iget-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v2, :cond_b

    .line 377
    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_b
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    :goto_2
    return-object v2

    .line 380
    .end local v0    # "tempNationalNumber":Ljava/lang/String;
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_c
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDigitOrLeadingPlusSign(C)Z
    .locals 3
    .param p1, "nextChar"    # C

    .line 416
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 418
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 416
    :goto_1
    return v1
.end method

.method private isNanpaNumberWithNationalPrefix()Z
    .locals 5

    .line 526
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v3, 0x31

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 526
    :goto_0
    return v1
.end method

.method private maybeCreateNewTemplate()Z
    .locals 6

    .line 145
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 148
    .local v1, "numberFormat":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "pattern":Ljava/lang/String;
    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    return v2

    .line 152
    :cond_0
    invoke-direct {p0, v1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->createFormattingTemplate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    iput-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 154
    sget-object v4, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 156
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 156
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    iput-boolean v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 159
    iput v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    .line 160
    const/4 v2, 0x1

    return v2

    .line 162
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 164
    .end local v1    # "numberFormat":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    .end local v3    # "pattern":Ljava/lang/String;
    goto :goto_0

    .line 165
    :cond_2
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    .line 166
    return v2
.end method

.method private narrowDownPossibleFormats(Ljava/lang/String;)V
    .locals 7
    .param p1, "leadingDigits"    # Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 207
    .local v0, "indexOfLeadingDigitsPattern":I
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 208
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 210
    .local v2, "format":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v3

    if-nez v3, :cond_0

    .line 212
    goto :goto_0

    .line 214
    :cond_0
    nop

    .line 215
    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 216
    .local v3, "lastLeadingDigitsPattern":I
    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    .line 217
    invoke-virtual {v2, v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-virtual {v4, v5}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 218
    .local v4, "leadingDigitsPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 219
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-nez v6, :cond_1

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 222
    .end local v2    # "format":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    .end local v3    # "lastLeadingDigitsPattern":I
    .end local v4    # "leadingDigitsPattern":Ljava/util/regex/Pattern;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :cond_1
    goto :goto_0

    .line 223
    :cond_2
    return-void
.end method

.method private normalizeAndAccrueDigitsAndPlusSign(CZ)C
    .locals 3
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    .line 624
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_0

    .line 625
    move v0, p1

    .line 626
    .local v0, "normalizedChar":C
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 628
    .end local v0    # "normalizedChar":C
    :cond_0
    const/16 v0, 0xa

    .line 629
    .local v0, "radix":I
    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    .line 630
    .local v1, "normalizedChar":C
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 633
    .end local v1    # "normalizedChar":C
    .local v0, "normalizedChar":C
    :goto_0
    if-eqz p2, :cond_1

    .line 634
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iput v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->positionToRemember:I

    .line 636
    :cond_1
    return v0
.end method

.method private removeNationalPrefixFromNationalNumber()Ljava/lang/String;
    .locals 6

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "startOfNationalNumber":I
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isNanpaNumberWithNationalPrefix()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 534
    const/4 v0, 0x1

    .line 535
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v4, 0x31

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    goto :goto_0

    .line 537
    :cond_0
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 539
    invoke-virtual {v4}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 540
    .local v1, "nationalPrefixForParsing":Ljava/util/regex/Pattern;
    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 543
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    if-lez v5, :cond_1

    .line 547
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 548
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 549
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .end local v1    # "nationalPrefixForParsing":Ljava/util/regex/Pattern;
    .end local v4    # "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "nationalPrefix":Ljava/lang/String;
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 554
    return-object v1
.end method


# virtual methods
.method attemptToFormatAccruedDigits()Ljava/lang/String;
    .locals 4

    .line 426
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 427
    .local v1, "numberFormat":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 428
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    sget-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 431
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 432
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 435
    .end local v0    # "formattedNumber":Ljava/lang/String;
    .end local v1    # "numberFormat":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_0
    goto :goto_0

    .line 436
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public clear()V
    .locals 3

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 263
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 264
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 265
    iput v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    .line 266
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 268
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    .line 271
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 272
    iput v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->positionToRemember:I

    .line 273
    iput v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->originalPosition:I

    .line 274
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 275
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 276
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 278
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 281
    :cond_0
    return-void
.end method

.method getExtractedNationalPrefix()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRememberedPosition()I
    .locals 4

    .line 444
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v0, :cond_0

    .line 445
    iget v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->originalPosition:I

    return v0

    .line 447
    :cond_0
    const/4 v0, 0x0

    .line 448
    .local v0, "accruedInputIndex":I
    const/4 v1, 0x0

    .line 449
    .local v1, "currentOutputIndex":I
    :goto_0
    iget v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->positionToRemember:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 450
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 451
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    .line 452
    add-int/lit8 v0, v0, 0x1

    .line 454
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    :cond_2
    return v1
.end method

.method public inputDigit(C)Ljava/lang/String;
    .locals 1
    .param p1, "nextChar"    # C

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 294
    return-object v0
.end method

.method public inputDigitAndRememberPosition(C)Ljava/lang/String;
    .locals 1
    .param p1, "nextChar"    # C

    .line 304
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 305
    return-object v0
.end method
