.class public Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/michaelrocks/libphonenumber/android/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private carrierSpecific_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private countryCode_:I

.field private emergency_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private fixedLine_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private generalDesc_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private hasCarrierSpecific:Z

.field private hasCountryCode:Z

.field private hasEmergency:Z

.field private hasFixedLine:Z

.field private hasGeneralDesc:Z

.field private hasId:Z

.field private hasInternationalPrefix:Z

.field private hasLeadingDigits:Z

.field private hasLeadingZeroPossible:Z

.field private hasMainCountryForCode:Z

.field private hasMobile:Z

.field private hasMobileNumberPortableRegion:Z

.field private hasNationalPrefix:Z

.field private hasNationalPrefixForParsing:Z

.field private hasNationalPrefixTransformRule:Z

.field private hasNoInternationalDialling:Z

.field private hasPager:Z

.field private hasPersonalNumber:Z

.field private hasPreferredExtnPrefix:Z

.field private hasPreferredInternationalPrefix:Z

.field private hasPremiumRate:Z

.field private hasSameMobileAndFixedLinePattern:Z

.field private hasSharedCost:Z

.field private hasShortCode:Z

.field private hasSmsServices:Z

.field private hasStandardRate:Z

.field private hasTollFree:Z

.field private hasUan:Z

.field private hasVoicemail:Z

.field private hasVoip:Z

.field private id_:Ljava/lang/String;

.field private internationalPrefix_:Ljava/lang/String;

.field private intlNumberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private leadingDigits_:Ljava/lang/String;

.field private leadingZeroPossible_:Z

.field private mainCountryForCode_:Z

.field private mobileNumberPortableRegion_:Z

.field private mobile_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private nationalPrefixForParsing_:Ljava/lang/String;

.field private nationalPrefixTransformRule_:Ljava/lang/String;

.field private nationalPrefix_:Ljava/lang/String;

.field private noInternationalDialling_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private numberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private pager_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private personalNumber_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private preferredExtnPrefix_:Ljava/lang/String;

.field private preferredInternationalPrefix_:Ljava/lang/String;

.field private premiumRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private sameMobileAndFixedLinePattern_:Z

.field private sharedCost_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private shortCode_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private smsServices_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private standardRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private tollFree_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private uan_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private voicemail_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private voip_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->generalDesc_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 385
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->fixedLine_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 399
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobile_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 413
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->tollFree_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 427
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->premiumRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 441
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sharedCost_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 455
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->personalNumber_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 469
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voip_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 483
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->pager_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 497
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->uan_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 511
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->emergency_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 525
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voicemail_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 539
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->shortCode_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 553
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->standardRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 567
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 581
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->smsServices_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 595
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 609
    const-string v0, ""

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    .line 620
    const/4 v1, 0x0

    iput v1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 631
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 642
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 658
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 674
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 690
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 701
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 717
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 732
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    .line 749
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    .line 773
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 792
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 803
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    .line 819
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    .line 353
    return-void
.end method

.method public static newBuilder()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata$Builder;
    .locals 1

    .line 366
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata$Builder;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addIntlNumberFormat(Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 760
    if-eqz p1, :cond_0

    .line 763
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    return-object p0

    .line 761
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public addNumberFormat(Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 741
    if-eqz p1, :cond_0

    .line 744
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    return-object p0

    .line 742
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public clearIntlNumberFormat()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 767
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 768
    return-object p0
.end method

.method public clearLeadingZeroPossible()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    .line 813
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    .line 814
    return-object p0
.end method

.method public clearMainCountryForCode()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 786
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 787
    return-object p0
.end method

.method public clearMobileNumberPortableRegion()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    .line 829
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    .line 830
    return-object p0
.end method

.method public clearNationalPrefix()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    .line 668
    const-string v0, ""

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 669
    return-object p0
.end method

.method public clearNationalPrefixTransformRule()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    .line 711
    const-string v0, ""

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 712
    return-object p0
.end method

.method public clearPreferredExtnPrefix()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 685
    return-object p0
.end method

.method public clearPreferredInternationalPrefix()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    .line 652
    const-string v0, ""

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 653
    return-object p0
.end method

.method public clearSameMobileAndFixedLinePattern()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 727
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 728
    return-object p0
.end method

.method public getCarrierSpecific()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 569
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getCountryCode()I
    .locals 1

    .line 622
    iget v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->countryCode_:I

    return v0
.end method

.method public getEmergency()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 513
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->emergency_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getFixedLine()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 387
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->fixedLine_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getGeneralDesc()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 373
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->generalDesc_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 611
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalPrefix()Ljava/lang/String;
    .locals 1

    .line 633
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntlNumberFormat(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "index"    # I

    .line 756
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public getLeadingDigits()Ljava/lang/String;
    .locals 1

    .line 794
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCountryForCode()Z
    .locals 1

    .line 778
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public getMobile()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 401
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobile_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNationalPrefix()Ljava/lang/String;
    .locals 1

    .line 660
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixForParsing()Ljava/lang/String;
    .locals 1

    .line 692
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixTransformRule()Ljava/lang/String;
    .locals 1

    .line 703
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getNoInternationalDialling()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 597
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNumberFormat(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "index"    # I

    .line 738
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public getPager()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 485
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->pager_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPersonalNumber()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 457
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->personalNumber_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPreferredExtnPrefix()Ljava/lang/String;
    .locals 1

    .line 676
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredInternationalPrefix()Ljava/lang/String;
    .locals 1

    .line 644
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumRate()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 429
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->premiumRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getSameMobileAndFixedLinePattern()Z
    .locals 1

    .line 719
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return v0
.end method

.method public getSharedCost()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 443
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sharedCost_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getShortCode()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 541
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->shortCode_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getSmsServices()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 583
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->smsServices_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getStandardRate()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 555
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->standardRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getTollFree()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 415
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->tollFree_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getUan()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 499
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->uan_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoicemail()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 527
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voicemail_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoip()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 471
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voip_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public hasCarrierSpecific()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .line 621
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    return v0
.end method

.method public hasEmergency()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    return v0
.end method

.method public hasFixedLine()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    return v0
.end method

.method public hasGeneralDesc()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .line 610
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasId:Z

    return v0
.end method

.method public hasInternationalPrefix()Z
    .locals 1

    .line 632
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    return v0
.end method

.method public hasLeadingDigits()Z
    .locals 1

    .line 793
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    return v0
.end method

.method public hasLeadingZeroPossible()Z
    .locals 1

    .line 804
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    return v0
.end method

.method public hasMainCountryForCode()Z
    .locals 1

    .line 774
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    return v0
.end method

.method public hasMobile()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobile:Z

    return v0
.end method

.method public hasMobileNumberPortableRegion()Z
    .locals 1

    .line 820
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    return v0
.end method

.method public hasNationalPrefix()Z
    .locals 1

    .line 659
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    return v0
.end method

.method public hasNationalPrefixForParsing()Z
    .locals 1

    .line 691
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    return v0
.end method

.method public hasNationalPrefixTransformRule()Z
    .locals 1

    .line 702
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    return v0
.end method

.method public hasNoInternationalDialling()Z
    .locals 1

    .line 596
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    return v0
.end method

.method public hasPager()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPager:Z

    return v0
.end method

.method public hasPersonalNumber()Z
    .locals 1

    .line 456
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    return v0
.end method

.method public hasPreferredExtnPrefix()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    return v0
.end method

.method public hasPreferredInternationalPrefix()Z
    .locals 1

    .line 643
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    return v0
.end method

.method public hasPremiumRate()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    return v0
.end method

.method public hasSameMobileAndFixedLinePattern()Z
    .locals 1

    .line 718
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    return v0
.end method

.method public hasSharedCost()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    return v0
.end method

.method public hasShortCode()Z
    .locals 1

    .line 540
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    return v0
.end method

.method public hasSmsServices()Z
    .locals 1

    .line 582
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    return v0
.end method

.method public hasStandardRate()Z
    .locals 1

    .line 554
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    return v0
.end method

.method public hasTollFree()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    return v0
.end method

.method public hasUan()Z
    .locals 1

    .line 498
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasUan:Z

    return v0
.end method

.method public hasVoicemail()Z
    .locals 1

    .line 526
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    return v0
.end method

.method public hasVoip()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoip:Z

    return v0
.end method

.method public intlNumberFormatSize()I
    .locals 1

    .line 754
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public intlNumberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public isLeadingZeroPossible()Z
    .locals 1

    .line 805
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return v0
.end method

.method public isMainCountryForCode()Z
    .locals 1

    .line 775
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public isMobileNumberPortableRegion()Z
    .locals 1

    .line 821
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return v0
.end method

.method public numberFormatSize()I
    .locals 1

    .line 736
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 7
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 960
    .local v0, "hasDesc":Z
    if-eqz v0, :cond_0

    .line 961
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 962
    .local v1, "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 963
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setGeneralDesc(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 965
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 966
    if-eqz v0, :cond_1

    .line 967
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 968
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 969
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setFixedLine(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 971
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 972
    if-eqz v0, :cond_2

    .line 973
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 974
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 975
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setMobile(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 977
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 978
    if-eqz v0, :cond_3

    .line 979
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 980
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 981
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setTollFree(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 983
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 984
    if-eqz v0, :cond_4

    .line 985
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 986
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 987
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setPremiumRate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 989
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 990
    if-eqz v0, :cond_5

    .line 991
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 992
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 993
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setSharedCost(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 995
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_5
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 996
    if-eqz v0, :cond_6

    .line 997
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 998
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 999
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setPersonalNumber(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1001
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1002
    if-eqz v0, :cond_7

    .line 1003
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1004
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1005
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setVoip(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1007
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1008
    if-eqz v0, :cond_8

    .line 1009
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1010
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1011
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setPager(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1013
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_8
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1014
    if-eqz v0, :cond_9

    .line 1015
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1016
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1017
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setUan(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1019
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_9
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1020
    if-eqz v0, :cond_a

    .line 1021
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1022
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1023
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setEmergency(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1025
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1026
    if-eqz v0, :cond_b

    .line 1027
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1028
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1029
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setVoicemail(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1031
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1032
    if-eqz v0, :cond_c

    .line 1033
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1034
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1035
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setShortCode(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1037
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_c
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1038
    if-eqz v0, :cond_d

    .line 1039
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1040
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1041
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setStandardRate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1043
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1044
    if-eqz v0, :cond_e

    .line 1045
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1046
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1047
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setCarrierSpecific(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1049
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1050
    if-eqz v0, :cond_f

    .line 1051
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1052
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1053
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setSmsServices(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1055
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_f
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1056
    if-eqz v0, :cond_10

    .line 1057
    new-instance v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1058
    .restart local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1059
    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setNoInternationalDialling(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1062
    .end local v1    # "desc":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    :cond_10
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1063
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setCountryCode(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1064
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1066
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 1067
    .local v1, "hasString":Z
    if-eqz v1, :cond_11

    .line 1068
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setPreferredInternationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1071
    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 1072
    if-eqz v1, :cond_12

    .line 1073
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setNationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1076
    :cond_12
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 1077
    if-eqz v1, :cond_13

    .line 1078
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setPreferredExtnPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1081
    :cond_13
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 1082
    if-eqz v1, :cond_14

    .line 1083
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setNationalPrefixForParsing(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1086
    :cond_14
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 1087
    if-eqz v1, :cond_15

    .line 1088
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setNationalPrefixTransformRule(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1091
    :cond_15
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    invoke-virtual {p0, v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setSameMobileAndFixedLinePattern(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1093
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 1094
    .local v2, "nationalFormatSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_16

    .line 1095
    new-instance v4, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    invoke-direct {v4}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;-><init>()V

    .line 1096
    .local v4, "numFormat":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    invoke-virtual {v4, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 1097
    iget-object v5, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    .end local v4    # "numFormat":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1100
    .end local v3    # "i":I
    :cond_16
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 1101
    .local v3, "intlNumberFormatSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_17

    .line 1102
    new-instance v5, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    invoke-direct {v5}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;-><init>()V

    .line 1103
    .local v5, "numFormat":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    invoke-virtual {v5, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 1104
    iget-object v6, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    .end local v5    # "numFormat":Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1107
    .end local v4    # "i":I
    :cond_17
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setMainCountryForCode(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1109
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 1110
    if-eqz v1, :cond_18

    .line 1111
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setLeadingDigits(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1114
    :cond_18
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setLeadingZeroPossible(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1116
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setMobileNumberPortableRegion(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1117
    return-void
.end method

.method public setCarrierSpecific(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 571
    if-eqz p1, :cond_0

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    .line 575
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 576
    return-object p0

    .line 572
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setCountryCode(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # I

    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    .line 625
    iput p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 626
    return-object p0
.end method

.method public setEmergency(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 515
    if-eqz p1, :cond_0

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    .line 519
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->emergency_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 520
    return-object p0

    .line 516
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setFixedLine(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 389
    if-eqz p1, :cond_0

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    .line 393
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->fixedLine_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 394
    return-object p0

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setGeneralDesc(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 375
    if-eqz p1, :cond_0

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    .line 379
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->generalDesc_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 380
    return-object p0

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setId(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasId:Z

    .line 614
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    .line 615
    return-object p0
.end method

.method public setInternationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    .line 636
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 637
    return-object p0
.end method

.method public setLeadingDigits(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    .line 797
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 798
    return-object p0
.end method

.method public setLeadingZeroPossible(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    .line 808
    iput-boolean p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    .line 809
    return-object p0
.end method

.method public setMainCountryForCode(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    .line 780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 781
    iput-boolean p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 782
    return-object p0
.end method

.method public setMobile(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 403
    if-eqz p1, :cond_0

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobile:Z

    .line 407
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobile_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 408
    return-object p0

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setMobileNumberPortableRegion(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    .line 824
    iput-boolean p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    .line 825
    return-object p0
.end method

.method public setNationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    .line 663
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 664
    return-object p0
.end method

.method public setNationalPrefixForParsing(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    .line 695
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 696
    return-object p0
.end method

.method public setNationalPrefixTransformRule(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    .line 706
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 707
    return-object p0
.end method

.method public setNoInternationalDialling(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 599
    if-eqz p1, :cond_0

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    .line 603
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 604
    return-object p0

    .line 600
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setPager(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 487
    if-eqz p1, :cond_0

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPager:Z

    .line 491
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->pager_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 492
    return-object p0

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setPersonalNumber(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 459
    if-eqz p1, :cond_0

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    .line 463
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->personalNumber_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 464
    return-object p0

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setPreferredExtnPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    .line 679
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 680
    return-object p0
.end method

.method public setPreferredInternationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    .line 647
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 648
    return-object p0
.end method

.method public setPremiumRate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 431
    if-eqz p1, :cond_0

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    .line 435
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->premiumRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 436
    return-object p0

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setSameMobileAndFixedLinePattern(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 722
    iput-boolean p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 723
    return-object p0
.end method

.method public setSharedCost(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 445
    if-eqz p1, :cond_0

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    .line 449
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sharedCost_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 450
    return-object p0

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setShortCode(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 543
    if-eqz p1, :cond_0

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    .line 547
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->shortCode_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 548
    return-object p0

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setSmsServices(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 585
    if-eqz p1, :cond_0

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    .line 589
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->smsServices_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 590
    return-object p0

    .line 586
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setStandardRate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 557
    if-eqz p1, :cond_0

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    .line 561
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->standardRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 562
    return-object p0

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setTollFree(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 417
    if-eqz p1, :cond_0

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    .line 421
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->tollFree_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 422
    return-object p0

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setUan(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 501
    if-eqz p1, :cond_0

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasUan:Z

    .line 505
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->uan_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 506
    return-object p0

    .line 502
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setVoicemail(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 529
    if-eqz p1, :cond_0

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    .line 533
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voicemail_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 534
    return-object p0

    .line 530
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setVoip(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 473
    if-eqz p1, :cond_0

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoip:Z

    .line 477
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voip_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 478
    return-object p0

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 835
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->generalDesc_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 838
    :cond_0
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 839
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    if-eqz v0, :cond_1

    .line 840
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->fixedLine_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 842
    :cond_1
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobile:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 843
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobile:Z

    if-eqz v0, :cond_2

    .line 844
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobile_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 846
    :cond_2
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 847
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    if-eqz v0, :cond_3

    .line 848
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->tollFree_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 850
    :cond_3
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 851
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    if-eqz v0, :cond_4

    .line 852
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->premiumRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 854
    :cond_4
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 855
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    if-eqz v0, :cond_5

    .line 856
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sharedCost_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 858
    :cond_5
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 859
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    if-eqz v0, :cond_6

    .line 860
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->personalNumber_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 862
    :cond_6
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoip:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 863
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoip:Z

    if-eqz v0, :cond_7

    .line 864
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voip_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 866
    :cond_7
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPager:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 867
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPager:Z

    if-eqz v0, :cond_8

    .line 868
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->pager_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 870
    :cond_8
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasUan:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 871
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasUan:Z

    if-eqz v0, :cond_9

    .line 872
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->uan_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 874
    :cond_9
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 875
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    if-eqz v0, :cond_a

    .line 876
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->emergency_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 878
    :cond_a
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 879
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    if-eqz v0, :cond_b

    .line 880
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voicemail_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 882
    :cond_b
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 883
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    if-eqz v0, :cond_c

    .line 884
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->shortCode_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 886
    :cond_c
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 887
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    if-eqz v0, :cond_d

    .line 888
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->standardRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 890
    :cond_d
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 891
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    if-eqz v0, :cond_e

    .line 892
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 894
    :cond_e
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 895
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    if-eqz v0, :cond_f

    .line 896
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->smsServices_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 898
    :cond_f
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 899
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    if-eqz v0, :cond_10

    .line 900
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 903
    :cond_10
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 904
    iget v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->countryCode_:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 905
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 907
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 908
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    if-eqz v0, :cond_11

    .line 909
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 912
    :cond_11
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 913
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    if-eqz v0, :cond_12

    .line 914
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 917
    :cond_12
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 918
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    if-eqz v0, :cond_13

    .line 919
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 922
    :cond_13
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 923
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    if-eqz v0, :cond_14

    .line 924
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 927
    :cond_14
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 928
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    if-eqz v0, :cond_15

    .line 929
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 932
    :cond_15
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 934
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormatSize()I

    move-result v0

    .line 935
    .local v0, "numberFormatSize":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 936
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_16

    .line 937
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    invoke-virtual {v2, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 936
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 940
    .end local v1    # "i":I
    :cond_16
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v1

    .line 941
    .local v1, "intlNumberFormatSize":I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 942
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_17

    .line 943
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 942
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 946
    .end local v2    # "i":I
    :cond_17
    iget-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 948
    iget-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 949
    iget-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    if-eqz v2, :cond_18

    .line 950
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 953
    :cond_18
    iget-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 955
    iget-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 956
    return-void
.end method
