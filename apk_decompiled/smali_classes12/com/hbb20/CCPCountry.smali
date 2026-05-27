.class public Lcom/hbb20/CCPCountry;
.super Ljava/lang/Object;
.source "CCPCountry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/hbb20/CCPCountry;",
        ">;"
    }
.end annotation


# static fields
.field private static ANGUILLA_AREA_CODES:Ljava/lang/String;

.field private static ANTIGUA_AND_BARBUDA_AREA_CODES:Ljava/lang/String;

.field private static BAHAMAS_AREA_CODES:Ljava/lang/String;

.field private static BARBADOS_AREA_CODES:Ljava/lang/String;

.field private static BERMUDA_AREA_CODES:Ljava/lang/String;

.field private static BRITISH_VIRGIN_ISLANDS_AREA_CODES:Ljava/lang/String;

.field private static CANADA_AREA_CODES:Ljava/lang/String;

.field private static CAYMAN_ISLANDS_AREA_CODES:Ljava/lang/String;

.field static DEFAULT_FLAG_RES:I

.field private static DOMINICAN_REPUBLIC_AREA_CODES:Ljava/lang/String;

.field private static DOMINICA_AREA_CODES:Ljava/lang/String;

.field private static GRENADA_AREA_CODES:Ljava/lang/String;

.field private static ISLE_OF_MAN:Ljava/lang/String;

.field private static JAMAICA_AREA_CODES:Ljava/lang/String;

.field private static MONTSERRAT_AREA_CODES:Ljava/lang/String;

.field private static PUERTO_RICO_AREA_CODES:Ljava/lang/String;

.field private static SAINT_KITTS_AND_NEVIS_AREA_CODES:Ljava/lang/String;

.field private static SAINT_LUCIA_AREA_CODES:Ljava/lang/String;

.field private static SAINT_VINCENT_AND_THE_GRENADINES_AREA_CODES:Ljava/lang/String;

.field private static SINT_MAARTEN_AREA_CODES:Ljava/lang/String;

.field static TAG:Ljava/lang/String;

.field private static TRINIDAD_AND_TOBAGO_AREA_CODES:Ljava/lang/String;

.field private static TURKS_AND_CAICOS_ISLANDS_AREA_CODES:Ljava/lang/String;

.field private static US_VIRGIN_ISLANDS_AREA_CODES:Ljava/lang/String;

.field static dialogTitle:Ljava/lang/String;

.field static loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

.field static loadedLibraryMaterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation
.end field

.field static noResultFoundAckMessage:Ljava/lang/String;

.field static searchHintMessage:Ljava/lang/String;


# instance fields
.field englishName:Ljava/lang/String;

.field flagResID:I

.field name:Ljava/lang/String;

.field nameCode:Ljava/lang/String;

.field phoneCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/16 v0, -0x63

    sput v0, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    .line 26
    const-string v0, "Class Country"

    sput-object v0, Lcom/hbb20/CCPCountry;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "268"

    sput-object v0, Lcom/hbb20/CCPCountry;->ANTIGUA_AND_BARBUDA_AREA_CODES:Ljava/lang/String;

    .line 32
    const-string v0, "264"

    sput-object v0, Lcom/hbb20/CCPCountry;->ANGUILLA_AREA_CODES:Ljava/lang/String;

    .line 33
    const-string v0, "246"

    sput-object v0, Lcom/hbb20/CCPCountry;->BARBADOS_AREA_CODES:Ljava/lang/String;

    .line 34
    const-string v0, "441"

    sput-object v0, Lcom/hbb20/CCPCountry;->BERMUDA_AREA_CODES:Ljava/lang/String;

    .line 35
    const-string v0, "242"

    sput-object v0, Lcom/hbb20/CCPCountry;->BAHAMAS_AREA_CODES:Ljava/lang/String;

    .line 36
    const-string v0, "204/226/236/249/250/289/306/343/365/403/416/418/431/437/438/450/506/514/519/579/581/587/600/604/613/639/647/705/709/769/778/780/782/807/819/825/867/873/902/905/"

    sput-object v0, Lcom/hbb20/CCPCountry;->CANADA_AREA_CODES:Ljava/lang/String;

    .line 37
    const-string v0, "767"

    sput-object v0, Lcom/hbb20/CCPCountry;->DOMINICA_AREA_CODES:Ljava/lang/String;

    .line 38
    const-string v0, "809/829/849"

    sput-object v0, Lcom/hbb20/CCPCountry;->DOMINICAN_REPUBLIC_AREA_CODES:Ljava/lang/String;

    .line 39
    const-string v0, "473"

    sput-object v0, Lcom/hbb20/CCPCountry;->GRENADA_AREA_CODES:Ljava/lang/String;

    .line 40
    const-string v0, "876"

    sput-object v0, Lcom/hbb20/CCPCountry;->JAMAICA_AREA_CODES:Ljava/lang/String;

    .line 41
    const-string v0, "869"

    sput-object v0, Lcom/hbb20/CCPCountry;->SAINT_KITTS_AND_NEVIS_AREA_CODES:Ljava/lang/String;

    .line 42
    const-string v0, "345"

    sput-object v0, Lcom/hbb20/CCPCountry;->CAYMAN_ISLANDS_AREA_CODES:Ljava/lang/String;

    .line 43
    const-string v0, "758"

    sput-object v0, Lcom/hbb20/CCPCountry;->SAINT_LUCIA_AREA_CODES:Ljava/lang/String;

    .line 44
    const-string v0, "664"

    sput-object v0, Lcom/hbb20/CCPCountry;->MONTSERRAT_AREA_CODES:Ljava/lang/String;

    .line 45
    const-string v0, "787"

    sput-object v0, Lcom/hbb20/CCPCountry;->PUERTO_RICO_AREA_CODES:Ljava/lang/String;

    .line 46
    const-string v0, "721"

    sput-object v0, Lcom/hbb20/CCPCountry;->SINT_MAARTEN_AREA_CODES:Ljava/lang/String;

    .line 47
    const-string v0, "649"

    sput-object v0, Lcom/hbb20/CCPCountry;->TURKS_AND_CAICOS_ISLANDS_AREA_CODES:Ljava/lang/String;

    .line 48
    const-string v0, "868"

    sput-object v0, Lcom/hbb20/CCPCountry;->TRINIDAD_AND_TOBAGO_AREA_CODES:Ljava/lang/String;

    .line 49
    const-string v0, "784"

    sput-object v0, Lcom/hbb20/CCPCountry;->SAINT_VINCENT_AND_THE_GRENADINES_AREA_CODES:Ljava/lang/String;

    .line 50
    const-string v0, "284"

    sput-object v0, Lcom/hbb20/CCPCountry;->BRITISH_VIRGIN_ISLANDS_AREA_CODES:Ljava/lang/String;

    .line 51
    const-string v0, "340"

    sput-object v0, Lcom/hbb20/CCPCountry;->US_VIRGIN_ISLANDS_AREA_CODES:Ljava/lang/String;

    .line 54
    const-string v0, "1624"

    sput-object v0, Lcom/hbb20/CCPCountry;->ISLE_OF_MAN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget v0, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    iput v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "nameCode"    # Ljava/lang/String;
    .param p2, "phoneCode"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "flagResID"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget v0, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    iput v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    .line 65
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    .line 68
    iput p4, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    .line 69
    return-void
.end method

.method private containsQueryWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldValue"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .line 1731
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1734
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1736
    :catch_0
    move-exception v1

    .line 1737
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed to execute toLowerCase(Locale.ROOT).contains(query) for query:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CCPCountry"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    return v0

    .line 1732
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v0
.end method

.method static getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Lcom/hbb20/CountryCodePicker$Language;
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;I)",
            "Lcom/hbb20/CCPCountry;"
        }
    .end annotation

    .line 315
    .local p2, "preferredCountries":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Lcom/hbb20/CountryCodePicker$Language;
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hbb20/CCPCountry;"
        }
    .end annotation

    .line 202
    .local p2, "preferredCountries":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/CCPCountry;

    .line 204
    .local v1, "CCPCountry":Lcom/hbb20/CCPCountry;
    invoke-virtual {v1}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    return-object v1

    .line 207
    .end local v1    # "CCPCountry":Lcom/hbb20/CCPCountry;
    :cond_0
    goto :goto_0

    .line 210
    :cond_1
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/CCPCountry;

    .line 211
    .restart local v1    # "CCPCountry":Lcom/hbb20/CCPCountry;
    invoke-virtual {v1}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    return-object v1

    .line 214
    .end local v1    # "CCPCountry":Lcom/hbb20/CCPCountry;
    :cond_2
    goto :goto_1

    .line 215
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method static getCountryForCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 4
    .param p0, "code"    # Ljava/lang/String;

    .line 228
    invoke-static {}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountriesEnglish()Ljava/util/List;

    move-result-object v0

    .line 230
    .local v0, "countries":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/CCPCountry;

    .line 231
    .local v2, "ccpCountry":Lcom/hbb20/CCPCountry;
    invoke-virtual {v2}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    return-object v2

    .line 234
    .end local v2    # "ccpCountry":Lcom/hbb20/CCPCountry;
    :cond_0
    goto :goto_0

    .line 235
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method static getCountryForNameCodeFromCustomMasterList(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "language"    # Lcom/hbb20/CountryCodePicker$Language;
    .param p3, "nameCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hbb20/CCPCountry;"
        }
    .end annotation

    .line 255
    .local p1, "customMasterCountriesList":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 258
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/CCPCountry;

    .line 259
    .local v1, "ccpCountry":Lcom/hbb20/CCPCountry;
    invoke-virtual {v1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    return-object v1

    .line 262
    .end local v1    # "ccpCountry":Lcom/hbb20/CCPCountry;
    :cond_1
    goto :goto_0

    .line 264
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 256
    :cond_3
    :goto_1
    invoke-static {p0, p2, p3}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    return-object v0
.end method

.method static getCountryForNameCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 4
    .param p0, "nameCode"    # Ljava/lang/String;

    .line 296
    invoke-static {}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountriesEnglish()Ljava/util/List;

    move-result-object v0

    .line 297
    .local v0, "countries":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/CCPCountry;

    .line 298
    .local v2, "CCPCountry":Lcom/hbb20/CCPCountry;
    invoke-virtual {v2}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    return-object v2

    .line 301
    .end local v2    # "CCPCountry":Lcom/hbb20/CCPCountry;
    :cond_0
    goto :goto_0

    .line 302
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Lcom/hbb20/CountryCodePicker$Language;
    .param p2, "nameCode"    # Ljava/lang/String;

    .line 277
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;

    move-result-object v0

    .line 278
    .local v0, "countries":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/CCPCountry;

    .line 279
    .local v2, "ccpCountry":Lcom/hbb20/CCPCountry;
    invoke-virtual {v2}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    return-object v2

    .line 282
    .end local v2    # "ccpCountry":Lcom/hbb20/CCPCountry;
    :cond_0
    goto :goto_0

    .line 283
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCountryForNumber(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Lcom/hbb20/CountryCodePicker$Language;
    .param p2, "fullNumber"    # Ljava/lang/String;

    .line 389
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/hbb20/CCPCountry;->getCountryForNumber(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v0

    return-object v0
.end method

.method static getCountryForNumber(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Lcom/hbb20/CountryCodePicker$Language;
    .param p3, "fullNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hbb20/CCPCountry;"
        }
    .end annotation

    .line 334
    .local p2, "preferredCountries":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 335
    return-object v0

    .line 337
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 340
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 341
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    .line 342
    const/4 v1, 0x1

    .local v1, "firstDigit":I
    goto :goto_0

    .line 344
    .end local v1    # "firstDigit":I
    :cond_1
    const/4 v1, 0x0

    .line 346
    .restart local v1    # "firstDigit":I
    :goto_0
    const/4 v2, 0x0

    .line 347
    .local v2, "ccpCountry":Lcom/hbb20/CCPCountry;
    move v3, v1

    .local v3, "i":I
    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 348
    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "code":Ljava/lang/String;
    const/4 v5, 0x0

    .line 351
    .local v5, "countryGroup":Lcom/hbb20/CCPCountryGroup;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/hbb20/CCPCountryGroup;->getCountryGroupForPhoneCode(I)Lcom/hbb20/CCPCountryGroup;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 353
    goto :goto_2

    .line 352
    :catch_0
    move-exception v6

    .line 354
    :goto_2
    if-eqz v5, :cond_3

    .line 355
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 357
    .local v0, "areaCodeStartsAt":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, v5, Lcom/hbb20/CCPCountryGroup;->areaCodeLength:I

    add-int/2addr v7, v0

    if-lt v6, v7, :cond_2

    .line 358
    iget v6, v5, Lcom/hbb20/CCPCountryGroup;->areaCodeLength:I

    add-int/2addr v6, v0

    invoke-virtual {p3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 359
    .local v6, "areaCode":Ljava/lang/String;
    invoke-virtual {v5, p0, p1, v6}, Lcom/hbb20/CCPCountryGroup;->getCountryForAreaCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v7

    return-object v7

    .line 361
    .end local v6    # "areaCode":Ljava/lang/String;
    :cond_2
    iget-object v6, v5, Lcom/hbb20/CCPCountryGroup;->defaultNameCode:Ljava/lang/String;

    invoke-static {p0, p1, v6}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v6

    return-object v6

    .line 364
    .end local v0    # "areaCodeStartsAt":I
    :cond_3
    invoke-static {p0, p1, p2, v4}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v2

    .line 365
    if-eqz v2, :cond_4

    .line 366
    return-object v2

    .line 347
    .end local v4    # "code":Ljava/lang/String;
    .end local v5    # "countryGroup":Lcom/hbb20/CCPCountryGroup;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 372
    .end local v1    # "firstDigit":I
    .end local v2    # "ccpCountry":Lcom/hbb20/CCPCountry;
    .end local v3    # "i":I
    :cond_5
    return-object v0
.end method

.method static getCustomMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "codePicker"    # Lcom/hbb20/CountryCodePicker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker;",
            ")",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->refreshCustomMasterList()V

    .line 240
    iget-object v0, p1, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->getCustomMasterCountriesList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 243
    :cond_0
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDialogTitle(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Lcom/hbb20/CountryCodePicker$Language;

    .line 155
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->dialogTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V

    .line 158
    :cond_1
    sget-object v0, Lcom/hbb20/CCPCountry;->dialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static getFlagEmoji(Lcom/hbb20/CCPCountry;)Ljava/lang/String;
    .locals 2
    .param p0, "CCPCountry"    # Lcom/hbb20/CCPCountry;

    .line 898
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "zw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf9

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "zm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf8

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "za"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf7

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "yt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf6

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "ye"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf5

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "xk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf4

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "ws"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf3

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "wf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf2

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "vu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf1

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "vn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf0

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xef

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "vg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xee

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "ve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xed

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "vc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xec

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "va"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xeb

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "uz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xea

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "uy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe9

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "us"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe8

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "um"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe7

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "ug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe6

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "ua"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe5

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "tz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe4

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "tw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe3

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "tv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe2

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "tt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe1

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe0

    goto/16 :goto_1

    :sswitch_1a
    const-string v1, "to"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xdf

    goto/16 :goto_1

    :sswitch_1b
    const-string v1, "tn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xde

    goto/16 :goto_1

    :sswitch_1c
    const-string v1, "tm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xdd

    goto/16 :goto_1

    :sswitch_1d
    const-string v1, "tl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xdc

    goto/16 :goto_1

    :sswitch_1e
    const-string v1, "tk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xdb

    goto/16 :goto_1

    :sswitch_1f
    const-string v1, "tj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xda

    goto/16 :goto_1

    :sswitch_20
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd9

    goto/16 :goto_1

    :sswitch_21
    const-string v1, "tg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd8

    goto/16 :goto_1

    :sswitch_22
    const-string v1, "tf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd7

    goto/16 :goto_1

    :sswitch_23
    const-string v1, "td"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd6

    goto/16 :goto_1

    :sswitch_24
    const-string v1, "tc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd5

    goto/16 :goto_1

    :sswitch_25
    const-string v1, "sz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd4

    goto/16 :goto_1

    :sswitch_26
    const-string v1, "sy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd3

    goto/16 :goto_1

    :sswitch_27
    const-string v1, "sx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd2

    goto/16 :goto_1

    :sswitch_28
    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd1

    goto/16 :goto_1

    :sswitch_29
    const-string v1, "st"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd0

    goto/16 :goto_1

    :sswitch_2a
    const-string v1, "ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcf

    goto/16 :goto_1

    :sswitch_2b
    const-string v1, "sr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xce

    goto/16 :goto_1

    :sswitch_2c
    const-string v1, "so"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcd

    goto/16 :goto_1

    :sswitch_2d
    const-string v1, "sn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcc

    goto/16 :goto_1

    :sswitch_2e
    const-string v1, "sm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcb

    goto/16 :goto_1

    :sswitch_2f
    const-string v1, "sl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xca

    goto/16 :goto_1

    :sswitch_30
    const-string v1, "sk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc9

    goto/16 :goto_1

    :sswitch_31
    const-string v1, "sj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    goto/16 :goto_1

    :sswitch_32
    const-string v1, "si"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc7

    goto/16 :goto_1

    :sswitch_33
    const-string v1, "sh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc6

    goto/16 :goto_1

    :sswitch_34
    const-string v1, "sg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc5

    goto/16 :goto_1

    :sswitch_35
    const-string v1, "se"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc4

    goto/16 :goto_1

    :sswitch_36
    const-string v1, "sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc3

    goto/16 :goto_1

    :sswitch_37
    const-string v1, "sc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc2

    goto/16 :goto_1

    :sswitch_38
    const-string v1, "sb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc1

    goto/16 :goto_1

    :sswitch_39
    const-string v1, "sa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc0

    goto/16 :goto_1

    :sswitch_3a
    const-string v1, "rw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbf

    goto/16 :goto_1

    :sswitch_3b
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbe

    goto/16 :goto_1

    :sswitch_3c
    const-string v1, "rs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbd

    goto/16 :goto_1

    :sswitch_3d
    const-string v1, "ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbc

    goto/16 :goto_1

    :sswitch_3e
    const-string v1, "re"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbb

    goto/16 :goto_1

    :sswitch_3f
    const-string v1, "qa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xba

    goto/16 :goto_1

    :sswitch_40
    const-string v1, "py"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb9

    goto/16 :goto_1

    :sswitch_41
    const-string v1, "pw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb8

    goto/16 :goto_1

    :sswitch_42
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb7

    goto/16 :goto_1

    :sswitch_43
    const-string v1, "ps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb6

    goto/16 :goto_1

    :sswitch_44
    const-string v1, "pr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb5

    goto/16 :goto_1

    :sswitch_45
    const-string v1, "pn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb4

    goto/16 :goto_1

    :sswitch_46
    const-string v1, "pm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb3

    goto/16 :goto_1

    :sswitch_47
    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb2

    goto/16 :goto_1

    :sswitch_48
    const-string v1, "pk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb1

    goto/16 :goto_1

    :sswitch_49
    const-string v1, "ph"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb0

    goto/16 :goto_1

    :sswitch_4a
    const-string v1, "pg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xaf

    goto/16 :goto_1

    :sswitch_4b
    const-string v1, "pf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xae

    goto/16 :goto_1

    :sswitch_4c
    const-string v1, "pe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xad

    goto/16 :goto_1

    :sswitch_4d
    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xac

    goto/16 :goto_1

    :sswitch_4e
    const-string v1, "om"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xab

    goto/16 :goto_1

    :sswitch_4f
    const-string v1, "nz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xaa

    goto/16 :goto_1

    :sswitch_50
    const-string v1, "nu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa9

    goto/16 :goto_1

    :sswitch_51
    const-string v1, "nr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa8

    goto/16 :goto_1

    :sswitch_52
    const-string v1, "np"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa7

    goto/16 :goto_1

    :sswitch_53
    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa6

    goto/16 :goto_1

    :sswitch_54
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa5

    goto/16 :goto_1

    :sswitch_55
    const-string v1, "ni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa4

    goto/16 :goto_1

    :sswitch_56
    const-string v1, "ng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa3

    goto/16 :goto_1

    :sswitch_57
    const-string v1, "nf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa2

    goto/16 :goto_1

    :sswitch_58
    const-string v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa1

    goto/16 :goto_1

    :sswitch_59
    const-string v1, "nc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    goto/16 :goto_1

    :sswitch_5a
    const-string v1, "na"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9f

    goto/16 :goto_1

    :sswitch_5b
    const-string v1, "mz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9e

    goto/16 :goto_1

    :sswitch_5c
    const-string v1, "my"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9d

    goto/16 :goto_1

    :sswitch_5d
    const-string v1, "mx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9c

    goto/16 :goto_1

    :sswitch_5e
    const-string v1, "mw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9b

    goto/16 :goto_1

    :sswitch_5f
    const-string v1, "mv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9a

    goto/16 :goto_1

    :sswitch_60
    const-string v1, "mu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x99

    goto/16 :goto_1

    :sswitch_61
    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x98

    goto/16 :goto_1

    :sswitch_62
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x97

    goto/16 :goto_1

    :sswitch_63
    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x96

    goto/16 :goto_1

    :sswitch_64
    const-string v1, "mq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x95

    goto/16 :goto_1

    :sswitch_65
    const-string v1, "mp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x94

    goto/16 :goto_1

    :sswitch_66
    const-string v1, "mo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x93

    goto/16 :goto_1

    :sswitch_67
    const-string v1, "mn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x92

    goto/16 :goto_1

    :sswitch_68
    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x91

    goto/16 :goto_1

    :sswitch_69
    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    goto/16 :goto_1

    :sswitch_6a
    const-string v1, "mk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8f

    goto/16 :goto_1

    :sswitch_6b
    const-string v1, "mh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8e

    goto/16 :goto_1

    :sswitch_6c
    const-string v1, "mg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8d

    goto/16 :goto_1

    :sswitch_6d
    const-string v1, "mf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8c

    goto/16 :goto_1

    :sswitch_6e
    const-string v1, "me"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8b

    goto/16 :goto_1

    :sswitch_6f
    const-string v1, "md"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8a

    goto/16 :goto_1

    :sswitch_70
    const-string v1, "mc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x89

    goto/16 :goto_1

    :sswitch_71
    const-string v1, "ma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x88

    goto/16 :goto_1

    :sswitch_72
    const-string v1, "ly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x87

    goto/16 :goto_1

    :sswitch_73
    const-string v1, "lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x86

    goto/16 :goto_1

    :sswitch_74
    const-string v1, "lu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x85

    goto/16 :goto_1

    :sswitch_75
    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x84

    goto/16 :goto_1

    :sswitch_76
    const-string v1, "ls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x83

    goto/16 :goto_1

    :sswitch_77
    const-string v1, "lr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x82

    goto/16 :goto_1

    :sswitch_78
    const-string v1, "lk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto/16 :goto_1

    :sswitch_79
    const-string v1, "li"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    goto/16 :goto_1

    :sswitch_7a
    const-string v1, "lc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7f

    goto/16 :goto_1

    :sswitch_7b
    const-string v1, "lb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7e

    goto/16 :goto_1

    :sswitch_7c
    const-string v1, "la"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d

    goto/16 :goto_1

    :sswitch_7d
    const-string v1, "kz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7c

    goto/16 :goto_1

    :sswitch_7e
    const-string v1, "ky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7b

    goto/16 :goto_1

    :sswitch_7f
    const-string v1, "kw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7a

    goto/16 :goto_1

    :sswitch_80
    const-string v1, "kr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x79

    goto/16 :goto_1

    :sswitch_81
    const-string v1, "kp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x78

    goto/16 :goto_1

    :sswitch_82
    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x77

    goto/16 :goto_1

    :sswitch_83
    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x76

    goto/16 :goto_1

    :sswitch_84
    const-string v1, "ki"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x75

    goto/16 :goto_1

    :sswitch_85
    const-string v1, "kh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x74

    goto/16 :goto_1

    :sswitch_86
    const-string v1, "kg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x73

    goto/16 :goto_1

    :sswitch_87
    const-string v1, "ke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x72

    goto/16 :goto_1

    :sswitch_88
    const-string v1, "jp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x71

    goto/16 :goto_1

    :sswitch_89
    const-string v1, "jo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x70

    goto/16 :goto_1

    :sswitch_8a
    const-string v1, "jm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_8b
    const-string v1, "je"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6e

    goto/16 :goto_1

    :sswitch_8c
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6d

    goto/16 :goto_1

    :sswitch_8d
    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6c

    goto/16 :goto_1

    :sswitch_8e
    const-string v1, "ir"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6b

    goto/16 :goto_1

    :sswitch_8f
    const-string v1, "iq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6a

    goto/16 :goto_1

    :sswitch_90
    const-string v1, "io"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x69

    goto/16 :goto_1

    :sswitch_91
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x68

    goto/16 :goto_1

    :sswitch_92
    const-string v1, "im"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x67

    goto/16 :goto_1

    :sswitch_93
    const-string v1, "il"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    goto/16 :goto_1

    :sswitch_94
    const-string v1, "ie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    goto/16 :goto_1

    :sswitch_95
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto/16 :goto_1

    :sswitch_96
    const-string v1, "hu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x63

    goto/16 :goto_1

    :sswitch_97
    const-string v1, "ht"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x62

    goto/16 :goto_1

    :sswitch_98
    const-string v1, "hr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto/16 :goto_1

    :sswitch_99
    const-string v1, "hn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto/16 :goto_1

    :sswitch_9a
    const-string v1, "hm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    goto/16 :goto_1

    :sswitch_9b
    const-string v1, "hk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5e

    goto/16 :goto_1

    :sswitch_9c
    const-string v1, "gy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    goto/16 :goto_1

    :sswitch_9d
    const-string v1, "gw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5c

    goto/16 :goto_1

    :sswitch_9e
    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    goto/16 :goto_1

    :sswitch_9f
    const-string v1, "gt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    goto/16 :goto_1

    :sswitch_a0
    const-string v1, "gs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x59

    goto/16 :goto_1

    :sswitch_a1
    const-string v1, "gr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x58

    goto/16 :goto_1

    :sswitch_a2
    const-string v1, "gq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x57

    goto/16 :goto_1

    :sswitch_a3
    const-string v1, "gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x56

    goto/16 :goto_1

    :sswitch_a4
    const-string v1, "gn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    goto/16 :goto_1

    :sswitch_a5
    const-string v1, "gm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x54

    goto/16 :goto_1

    :sswitch_a6
    const-string v1, "gl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x53

    goto/16 :goto_1

    :sswitch_a7
    const-string v1, "gi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x52

    goto/16 :goto_1

    :sswitch_a8
    const-string v1, "gh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x51

    goto/16 :goto_1

    :sswitch_a9
    const-string v1, "gg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    goto/16 :goto_1

    :sswitch_aa
    const-string v1, "gf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_ab
    const-string v1, "ge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e

    goto/16 :goto_1

    :sswitch_ac
    const-string v1, "gd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    goto/16 :goto_1

    :sswitch_ad
    const-string v1, "gb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    goto/16 :goto_1

    :sswitch_ae
    const-string v1, "ga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    goto/16 :goto_1

    :sswitch_af
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4a

    goto/16 :goto_1

    :sswitch_b0
    const-string v1, "fo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x49

    goto/16 :goto_1

    :sswitch_b1
    const-string v1, "fm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    goto/16 :goto_1

    :sswitch_b2
    const-string v1, "fk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x47

    goto/16 :goto_1

    :sswitch_b3
    const-string v1, "fj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    goto/16 :goto_1

    :sswitch_b4
    const-string v1, "fi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x45

    goto/16 :goto_1

    :sswitch_b5
    const-string v1, "et"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    goto/16 :goto_1

    :sswitch_b6
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x43

    goto/16 :goto_1

    :sswitch_b7
    const-string v1, "er"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    goto/16 :goto_1

    :sswitch_b8
    const-string v1, "eh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_b9
    const-string v1, "eg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto/16 :goto_1

    :sswitch_ba
    const-string v1, "ee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    goto/16 :goto_1

    :sswitch_bb
    const-string v1, "ec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e

    goto/16 :goto_1

    :sswitch_bc
    const-string v1, "dz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto/16 :goto_1

    :sswitch_bd
    const-string v1, "do"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto/16 :goto_1

    :sswitch_be
    const-string v1, "dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3b

    goto/16 :goto_1

    :sswitch_bf
    const-string v1, "dk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    goto/16 :goto_1

    :sswitch_c0
    const-string v1, "dj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x39

    goto/16 :goto_1

    :sswitch_c1
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    goto/16 :goto_1

    :sswitch_c2
    const-string v1, "cz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x37

    goto/16 :goto_1

    :sswitch_c3
    const-string v1, "cy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto/16 :goto_1

    :sswitch_c4
    const-string v1, "cx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x35

    goto/16 :goto_1

    :sswitch_c5
    const-string v1, "cw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x34

    goto/16 :goto_1

    :sswitch_c6
    const-string v1, "cv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    goto/16 :goto_1

    :sswitch_c7
    const-string v1, "cu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_c8
    const-string v1, "cr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    goto/16 :goto_1

    :sswitch_c9
    const-string v1, "co"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_ca
    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_cb
    const-string v1, "cm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_cc
    const-string v1, "cl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_cd
    const-string v1, "ck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_ce
    const-string v1, "ci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_cf
    const-string v1, "ch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_d0
    const-string v1, "cg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_d1
    const-string v1, "cf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_d2
    const-string v1, "cd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_d3
    const-string v1, "cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_d4
    const-string v1, "ca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_d5
    const-string v1, "bz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_d6
    const-string v1, "by"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_d7
    const-string v1, "bw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_d8
    const-string v1, "bv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_d9
    const-string v1, "bt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_da
    const-string v1, "bs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_db
    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_dc
    const-string v1, "bq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_dd
    const-string v1, "bo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_de
    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_df
    const-string v1, "bm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_e0
    const-string v1, "bl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_e1
    const-string v1, "bj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_e2
    const-string v1, "bi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_e3
    const-string v1, "bh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_e4
    const-string v1, "bg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_e5
    const-string v1, "bf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_e6
    const-string v1, "be"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_e7
    const-string v1, "bd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_e8
    const-string v1, "bb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_e9
    const-string v1, "ba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_ea
    const-string v1, "az"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_eb
    const-string v1, "ax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_ec
    const-string v1, "aw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_ed
    const-string v1, "au"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_ee
    const-string v1, "at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_ef
    const-string v1, "as"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_f0
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_f1
    const-string v1, "aq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_f2
    const-string v1, "ao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_f3
    const-string v1, "am"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_f4
    const-string v1, "al"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_f5
    const-string v1, "ai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_f6
    const-string v1, "ag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_f7
    const-string v1, "af"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_f8
    const-string v1, "ae"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_f9
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1401
    const-string v0, " "

    return-object v0

    .line 1399
    :pswitch_0
    const-string v0, "\ud83c\uddff\ud83c\uddfc"

    return-object v0

    .line 1397
    :pswitch_1
    const-string v0, "\ud83c\uddff\ud83c\uddf2"

    return-object v0

    .line 1395
    :pswitch_2
    const-string v0, "\ud83c\uddff\ud83c\udde6"

    return-object v0

    .line 1393
    :pswitch_3
    const-string v0, "\ud83c\uddfe\ud83c\uddf9"

    return-object v0

    .line 1391
    :pswitch_4
    const-string v0, "\ud83c\uddfe\ud83c\uddea"

    return-object v0

    .line 1389
    :pswitch_5
    const-string v0, "\ud83c\uddfd\ud83c\uddf0"

    return-object v0

    .line 1387
    :pswitch_6
    const-string v0, "\ud83c\uddfc\ud83c\uddf8"

    return-object v0

    .line 1385
    :pswitch_7
    const-string v0, "\ud83c\uddfc\ud83c\uddeb"

    return-object v0

    .line 1383
    :pswitch_8
    const-string v0, "\ud83c\uddfb\ud83c\uddfa"

    return-object v0

    .line 1381
    :pswitch_9
    const-string v0, "\ud83c\uddfb\ud83c\uddf3"

    return-object v0

    .line 1379
    :pswitch_a
    const-string v0, "\ud83c\uddfb\ud83c\uddee"

    return-object v0

    .line 1377
    :pswitch_b
    const-string v0, "\ud83c\uddfb\ud83c\uddec"

    return-object v0

    .line 1375
    :pswitch_c
    const-string v0, "\ud83c\uddfb\ud83c\uddea"

    return-object v0

    .line 1373
    :pswitch_d
    const-string v0, "\ud83c\uddfb\ud83c\udde8"

    return-object v0

    .line 1371
    :pswitch_e
    const-string v0, "\ud83c\uddfb\ud83c\udde6"

    return-object v0

    .line 1369
    :pswitch_f
    const-string v0, "\ud83c\uddfa\ud83c\uddff"

    return-object v0

    .line 1367
    :pswitch_10
    const-string v0, "\ud83c\uddfa\ud83c\uddfe"

    return-object v0

    .line 1365
    :pswitch_11
    const-string v0, "\ud83c\uddfa\ud83c\uddf8"

    return-object v0

    .line 1363
    :pswitch_12
    const-string v0, "\ud83c\uddfa\ud83c\uddf2"

    return-object v0

    .line 1361
    :pswitch_13
    const-string v0, "\ud83c\uddfa\ud83c\uddec"

    return-object v0

    .line 1359
    :pswitch_14
    const-string v0, "\ud83c\uddfa\ud83c\udde6"

    return-object v0

    .line 1357
    :pswitch_15
    const-string v0, "\ud83c\uddf9\ud83c\uddff"

    return-object v0

    .line 1355
    :pswitch_16
    const-string v0, "\ud83c\uddf9\ud83c\uddfc"

    return-object v0

    .line 1353
    :pswitch_17
    const-string v0, "\ud83c\uddf9\ud83c\uddfb"

    return-object v0

    .line 1351
    :pswitch_18
    const-string v0, "\ud83c\uddf9\ud83c\uddf9"

    return-object v0

    .line 1349
    :pswitch_19
    const-string v0, "\ud83c\uddf9\ud83c\uddf7"

    return-object v0

    .line 1347
    :pswitch_1a
    const-string v0, "\ud83c\uddf9\ud83c\uddf4"

    return-object v0

    .line 1345
    :pswitch_1b
    const-string v0, "\ud83c\uddf9\ud83c\uddf3"

    return-object v0

    .line 1343
    :pswitch_1c
    const-string v0, "\ud83c\uddf9\ud83c\uddf2"

    return-object v0

    .line 1341
    :pswitch_1d
    const-string v0, "\ud83c\uddf9\ud83c\uddf1"

    return-object v0

    .line 1339
    :pswitch_1e
    const-string v0, "\ud83c\uddf9\ud83c\uddf0"

    return-object v0

    .line 1337
    :pswitch_1f
    const-string v0, "\ud83c\uddf9\ud83c\uddef"

    return-object v0

    .line 1335
    :pswitch_20
    const-string v0, "\ud83c\uddf9\ud83c\udded"

    return-object v0

    .line 1333
    :pswitch_21
    const-string v0, "\ud83c\uddf9\ud83c\uddec"

    return-object v0

    .line 1331
    :pswitch_22
    const-string v0, "\ud83c\uddf9\ud83c\uddeb"

    return-object v0

    .line 1329
    :pswitch_23
    const-string v0, "\ud83c\uddf9\ud83c\udde9"

    return-object v0

    .line 1327
    :pswitch_24
    const-string v0, "\ud83c\uddf9\ud83c\udde8"

    return-object v0

    .line 1325
    :pswitch_25
    const-string v0, "\ud83c\uddf8\ud83c\uddff"

    return-object v0

    .line 1323
    :pswitch_26
    const-string v0, "\ud83c\uddf8\ud83c\uddfe"

    return-object v0

    .line 1321
    :pswitch_27
    const-string v0, "\ud83c\uddf8\ud83c\uddfd"

    return-object v0

    .line 1319
    :pswitch_28
    const-string v0, "\ud83c\uddf8\ud83c\uddfb"

    return-object v0

    .line 1317
    :pswitch_29
    const-string v0, "\ud83c\uddf8\ud83c\uddf9"

    return-object v0

    .line 1315
    :pswitch_2a
    const-string v0, "\ud83c\uddf8\ud83c\uddf8"

    return-object v0

    .line 1313
    :pswitch_2b
    const-string v0, "\ud83c\uddf8\ud83c\uddf7"

    return-object v0

    .line 1311
    :pswitch_2c
    const-string v0, "\ud83c\uddf8\ud83c\uddf4"

    return-object v0

    .line 1309
    :pswitch_2d
    const-string v0, "\ud83c\uddf8\ud83c\uddf3"

    return-object v0

    .line 1307
    :pswitch_2e
    const-string v0, "\ud83c\uddf8\ud83c\uddf2"

    return-object v0

    .line 1305
    :pswitch_2f
    const-string v0, "\ud83c\uddf8\ud83c\uddf1"

    return-object v0

    .line 1303
    :pswitch_30
    const-string v0, "\ud83c\uddf8\ud83c\uddf0"

    return-object v0

    .line 1301
    :pswitch_31
    const-string v0, "\ud83c\uddf8\ud83c\uddef"

    return-object v0

    .line 1299
    :pswitch_32
    const-string v0, "\ud83c\uddf8\ud83c\uddee"

    return-object v0

    .line 1297
    :pswitch_33
    const-string v0, "\ud83c\uddf8\ud83c\udded"

    return-object v0

    .line 1295
    :pswitch_34
    const-string v0, "\ud83c\uddf8\ud83c\uddec"

    return-object v0

    .line 1293
    :pswitch_35
    const-string v0, "\ud83c\uddf8\ud83c\uddea"

    return-object v0

    .line 1291
    :pswitch_36
    const-string v0, "\ud83c\uddf8\ud83c\udde9"

    return-object v0

    .line 1289
    :pswitch_37
    const-string v0, "\ud83c\uddf8\ud83c\udde8"

    return-object v0

    .line 1287
    :pswitch_38
    const-string v0, "\ud83c\uddf8\ud83c\udde7"

    return-object v0

    .line 1285
    :pswitch_39
    const-string v0, "\ud83c\uddf8\ud83c\udde6"

    return-object v0

    .line 1283
    :pswitch_3a
    const-string v0, "\ud83c\uddf7\ud83c\uddfc"

    return-object v0

    .line 1281
    :pswitch_3b
    const-string v0, "\ud83c\uddf7\ud83c\uddfa"

    return-object v0

    .line 1279
    :pswitch_3c
    const-string v0, "\ud83c\uddf7\ud83c\uddf8"

    return-object v0

    .line 1277
    :pswitch_3d
    const-string v0, "\ud83c\uddf7\ud83c\uddf4"

    return-object v0

    .line 1275
    :pswitch_3e
    const-string v0, "\ud83c\uddf7\ud83c\uddea"

    return-object v0

    .line 1273
    :pswitch_3f
    const-string v0, "\ud83c\uddf6\ud83c\udde6"

    return-object v0

    .line 1271
    :pswitch_40
    const-string v0, "\ud83c\uddf5\ud83c\uddfe"

    return-object v0

    .line 1269
    :pswitch_41
    const-string v0, "\ud83c\uddf5\ud83c\uddfc"

    return-object v0

    .line 1267
    :pswitch_42
    const-string v0, "\ud83c\uddf5\ud83c\uddf9"

    return-object v0

    .line 1265
    :pswitch_43
    const-string v0, "\ud83c\uddf5\ud83c\uddf8"

    return-object v0

    .line 1263
    :pswitch_44
    const-string v0, "\ud83c\uddf5\ud83c\uddf7"

    return-object v0

    .line 1261
    :pswitch_45
    const-string v0, "\ud83c\uddf5\ud83c\uddf3"

    return-object v0

    .line 1259
    :pswitch_46
    const-string v0, "\ud83c\uddf5\ud83c\uddf2"

    return-object v0

    .line 1257
    :pswitch_47
    const-string v0, "\ud83c\uddf5\ud83c\uddf1"

    return-object v0

    .line 1255
    :pswitch_48
    const-string v0, "\ud83c\uddf5\ud83c\uddf0"

    return-object v0

    .line 1253
    :pswitch_49
    const-string v0, "\ud83c\uddf5\ud83c\udded"

    return-object v0

    .line 1251
    :pswitch_4a
    const-string v0, "\ud83c\uddf5\ud83c\uddec"

    return-object v0

    .line 1249
    :pswitch_4b
    const-string v0, "\ud83c\uddf5\ud83c\uddeb"

    return-object v0

    .line 1247
    :pswitch_4c
    const-string v0, "\ud83c\uddf5\ud83c\uddea"

    return-object v0

    .line 1245
    :pswitch_4d
    const-string v0, "\ud83c\uddf5\ud83c\udde6"

    return-object v0

    .line 1243
    :pswitch_4e
    const-string v0, "\ud83c\uddf4\ud83c\uddf2"

    return-object v0

    .line 1241
    :pswitch_4f
    const-string v0, "\ud83c\uddf3\ud83c\uddff"

    return-object v0

    .line 1239
    :pswitch_50
    const-string v0, "\ud83c\uddf3\ud83c\uddfa"

    return-object v0

    .line 1237
    :pswitch_51
    const-string v0, "\ud83c\uddf3\ud83c\uddf7"

    return-object v0

    .line 1235
    :pswitch_52
    const-string v0, "\ud83c\uddf3\ud83c\uddf5"

    return-object v0

    .line 1233
    :pswitch_53
    const-string v0, "\ud83c\uddf3\ud83c\uddf4"

    return-object v0

    .line 1231
    :pswitch_54
    const-string v0, "\ud83c\uddf3\ud83c\uddf1"

    return-object v0

    .line 1229
    :pswitch_55
    const-string v0, "\ud83c\uddf3\ud83c\uddee"

    return-object v0

    .line 1227
    :pswitch_56
    const-string v0, "\ud83c\uddf3\ud83c\uddec"

    return-object v0

    .line 1225
    :pswitch_57
    const-string v0, "\ud83c\uddf3\ud83c\uddeb"

    return-object v0

    .line 1223
    :pswitch_58
    const-string v0, "\ud83c\uddf3\ud83c\uddea"

    return-object v0

    .line 1221
    :pswitch_59
    const-string v0, "\ud83c\uddf3\ud83c\udde8"

    return-object v0

    .line 1219
    :pswitch_5a
    const-string v0, "\ud83c\uddf3\ud83c\udde6"

    return-object v0

    .line 1217
    :pswitch_5b
    const-string v0, "\ud83c\uddf2\ud83c\uddff"

    return-object v0

    .line 1215
    :pswitch_5c
    const-string v0, "\ud83c\uddf2\ud83c\uddfe"

    return-object v0

    .line 1213
    :pswitch_5d
    const-string v0, "\ud83c\uddf2\ud83c\uddfd"

    return-object v0

    .line 1211
    :pswitch_5e
    const-string v0, "\ud83c\uddf2\ud83c\uddfc"

    return-object v0

    .line 1209
    :pswitch_5f
    const-string v0, "\ud83c\uddf2\ud83c\uddfb"

    return-object v0

    .line 1207
    :pswitch_60
    const-string v0, "\ud83c\uddf2\ud83c\uddfa"

    return-object v0

    .line 1205
    :pswitch_61
    const-string v0, "\ud83c\uddf2\ud83c\uddf9"

    return-object v0

    .line 1203
    :pswitch_62
    const-string v0, "\ud83c\uddf2\ud83c\uddf8"

    return-object v0

    .line 1201
    :pswitch_63
    const-string v0, "\ud83c\uddf2\ud83c\uddf7"

    return-object v0

    .line 1199
    :pswitch_64
    const-string v0, "\ud83c\uddf2\ud83c\uddf6"

    return-object v0

    .line 1197
    :pswitch_65
    const-string v0, "\ud83c\uddf2\ud83c\uddf5"

    return-object v0

    .line 1195
    :pswitch_66
    const-string v0, "\ud83c\uddf2\ud83c\uddf4"

    return-object v0

    .line 1193
    :pswitch_67
    const-string v0, "\ud83c\uddf2\ud83c\uddf3"

    return-object v0

    .line 1191
    :pswitch_68
    const-string v0, "\ud83c\uddf2\ud83c\uddf2"

    return-object v0

    .line 1189
    :pswitch_69
    const-string v0, "\ud83c\uddf2\ud83c\uddf1"

    return-object v0

    .line 1187
    :pswitch_6a
    const-string v0, "\ud83c\uddf2\ud83c\uddf0"

    return-object v0

    .line 1185
    :pswitch_6b
    const-string v0, "\ud83c\uddf2\ud83c\udded"

    return-object v0

    .line 1183
    :pswitch_6c
    const-string v0, "\ud83c\uddf2\ud83c\uddec"

    return-object v0

    .line 1181
    :pswitch_6d
    const-string v0, "\ud83c\uddf2\ud83c\uddeb"

    return-object v0

    .line 1179
    :pswitch_6e
    const-string v0, "\ud83c\uddf2\ud83c\uddea"

    return-object v0

    .line 1177
    :pswitch_6f
    const-string v0, "\ud83c\uddf2\ud83c\udde9"

    return-object v0

    .line 1175
    :pswitch_70
    const-string v0, "\ud83c\uddf2\ud83c\udde8"

    return-object v0

    .line 1173
    :pswitch_71
    const-string v0, "\ud83c\uddf2\ud83c\udde6"

    return-object v0

    .line 1171
    :pswitch_72
    const-string v0, "\ud83c\uddf1\ud83c\uddfe"

    return-object v0

    .line 1169
    :pswitch_73
    const-string v0, "\ud83c\uddf1\ud83c\uddfb"

    return-object v0

    .line 1167
    :pswitch_74
    const-string v0, "\ud83c\uddf1\ud83c\uddfa"

    return-object v0

    .line 1165
    :pswitch_75
    const-string v0, "\ud83c\uddf1\ud83c\uddf9"

    return-object v0

    .line 1163
    :pswitch_76
    const-string v0, "\ud83c\uddf1\ud83c\uddf8"

    return-object v0

    .line 1161
    :pswitch_77
    const-string v0, "\ud83c\uddf1\ud83c\uddf7"

    return-object v0

    .line 1159
    :pswitch_78
    const-string v0, "\ud83c\uddf1\ud83c\uddf0"

    return-object v0

    .line 1157
    :pswitch_79
    const-string v0, "\ud83c\uddf1\ud83c\uddee"

    return-object v0

    .line 1155
    :pswitch_7a
    const-string v0, "\ud83c\uddf1\ud83c\udde8"

    return-object v0

    .line 1153
    :pswitch_7b
    const-string v0, "\ud83c\uddf1\ud83c\udde7"

    return-object v0

    .line 1151
    :pswitch_7c
    const-string v0, "\ud83c\uddf1\ud83c\udde6"

    return-object v0

    .line 1149
    :pswitch_7d
    const-string v0, "\ud83c\uddf0\ud83c\uddff"

    return-object v0

    .line 1147
    :pswitch_7e
    const-string v0, "\ud83c\uddf0\ud83c\uddfe"

    return-object v0

    .line 1145
    :pswitch_7f
    const-string v0, "\ud83c\uddf0\ud83c\uddfc"

    return-object v0

    .line 1143
    :pswitch_80
    const-string v0, "\ud83c\uddf0\ud83c\uddf7"

    return-object v0

    .line 1141
    :pswitch_81
    const-string v0, "\ud83c\uddf0\ud83c\uddf5"

    return-object v0

    .line 1139
    :pswitch_82
    const-string v0, "\ud83c\uddf0\ud83c\uddf3"

    return-object v0

    .line 1137
    :pswitch_83
    const-string v0, "\ud83c\uddf0\ud83c\uddf2"

    return-object v0

    .line 1135
    :pswitch_84
    const-string v0, "\ud83c\uddf0\ud83c\uddee"

    return-object v0

    .line 1133
    :pswitch_85
    const-string v0, "\ud83c\uddf0\ud83c\udded"

    return-object v0

    .line 1131
    :pswitch_86
    const-string v0, "\ud83c\uddf0\ud83c\uddec"

    return-object v0

    .line 1129
    :pswitch_87
    const-string v0, "\ud83c\uddf0\ud83c\uddea"

    return-object v0

    .line 1127
    :pswitch_88
    const-string v0, "\ud83c\uddef\ud83c\uddf5"

    return-object v0

    .line 1125
    :pswitch_89
    const-string v0, "\ud83c\uddef\ud83c\uddf4"

    return-object v0

    .line 1123
    :pswitch_8a
    const-string v0, "\ud83c\uddef\ud83c\uddf2"

    return-object v0

    .line 1121
    :pswitch_8b
    const-string v0, "\ud83c\uddef\ud83c\uddea"

    return-object v0

    .line 1119
    :pswitch_8c
    const-string v0, "\ud83c\uddee\ud83c\uddf9"

    return-object v0

    .line 1117
    :pswitch_8d
    const-string v0, "\ud83c\uddee\ud83c\uddf8"

    return-object v0

    .line 1115
    :pswitch_8e
    const-string v0, "\ud83c\uddee\ud83c\uddf7"

    return-object v0

    .line 1113
    :pswitch_8f
    const-string v0, "\ud83c\uddee\ud83c\uddf6"

    return-object v0

    .line 1111
    :pswitch_90
    const-string v0, "\ud83c\uddee\ud83c\uddf4"

    return-object v0

    .line 1109
    :pswitch_91
    const-string v0, "\ud83c\uddee\ud83c\uddf3"

    return-object v0

    .line 1107
    :pswitch_92
    const-string v0, "\ud83c\uddee\ud83c\uddf2"

    return-object v0

    .line 1105
    :pswitch_93
    const-string v0, "\ud83c\uddee\ud83c\uddf1"

    return-object v0

    .line 1103
    :pswitch_94
    const-string v0, "\ud83c\uddee\ud83c\uddea"

    return-object v0

    .line 1101
    :pswitch_95
    const-string v0, "\ud83c\uddee\ud83c\udde9"

    return-object v0

    .line 1099
    :pswitch_96
    const-string v0, "\ud83c\udded\ud83c\uddfa"

    return-object v0

    .line 1097
    :pswitch_97
    const-string v0, "\ud83c\udded\ud83c\uddf9"

    return-object v0

    .line 1095
    :pswitch_98
    const-string v0, "\ud83c\udded\ud83c\uddf7"

    return-object v0

    .line 1093
    :pswitch_99
    const-string v0, "\ud83c\udded\ud83c\uddf3"

    return-object v0

    .line 1091
    :pswitch_9a
    const-string v0, "\ud83c\udded\ud83c\uddf2"

    return-object v0

    .line 1089
    :pswitch_9b
    const-string v0, "\ud83c\udded\ud83c\uddf0"

    return-object v0

    .line 1087
    :pswitch_9c
    const-string v0, "\ud83c\uddec\ud83c\uddfe"

    return-object v0

    .line 1085
    :pswitch_9d
    const-string v0, "\ud83c\uddec\ud83c\uddfc"

    return-object v0

    .line 1083
    :pswitch_9e
    const-string v0, "\ud83c\uddec\ud83c\uddfa"

    return-object v0

    .line 1081
    :pswitch_9f
    const-string v0, "\ud83c\uddec\ud83c\uddf9"

    return-object v0

    .line 1079
    :pswitch_a0
    const-string v0, "\ud83c\uddec\ud83c\uddf8"

    return-object v0

    .line 1077
    :pswitch_a1
    const-string v0, "\ud83c\uddec\ud83c\uddf7"

    return-object v0

    .line 1075
    :pswitch_a2
    const-string v0, "\ud83c\uddec\ud83c\uddf6"

    return-object v0

    .line 1073
    :pswitch_a3
    const-string v0, "\ud83c\uddec\ud83c\uddf5"

    return-object v0

    .line 1071
    :pswitch_a4
    const-string v0, "\ud83c\uddec\ud83c\uddf3"

    return-object v0

    .line 1069
    :pswitch_a5
    const-string v0, "\ud83c\uddec\ud83c\uddf2"

    return-object v0

    .line 1067
    :pswitch_a6
    const-string v0, "\ud83c\uddec\ud83c\uddf1"

    return-object v0

    .line 1065
    :pswitch_a7
    const-string v0, "\ud83c\uddec\ud83c\uddee"

    return-object v0

    .line 1063
    :pswitch_a8
    const-string v0, "\ud83c\uddec\ud83c\udded"

    return-object v0

    .line 1061
    :pswitch_a9
    const-string v0, "\ud83c\uddec\ud83c\uddec"

    return-object v0

    .line 1059
    :pswitch_aa
    const-string v0, "\ud83c\uddec\ud83c\uddeb"

    return-object v0

    .line 1057
    :pswitch_ab
    const-string v0, "\ud83c\uddec\ud83c\uddea"

    return-object v0

    .line 1055
    :pswitch_ac
    const-string v0, "\ud83c\uddec\ud83c\udde9"

    return-object v0

    .line 1053
    :pswitch_ad
    const-string v0, "\ud83c\uddec\ud83c\udde7"

    return-object v0

    .line 1051
    :pswitch_ae
    const-string v0, "\ud83c\uddec\ud83c\udde6"

    return-object v0

    .line 1049
    :pswitch_af
    const-string v0, "\ud83c\uddeb\ud83c\uddf7"

    return-object v0

    .line 1047
    :pswitch_b0
    const-string v0, "\ud83c\uddeb\ud83c\uddf4"

    return-object v0

    .line 1045
    :pswitch_b1
    const-string v0, "\ud83c\uddeb\ud83c\uddf2"

    return-object v0

    .line 1043
    :pswitch_b2
    const-string v0, "\ud83c\uddeb\ud83c\uddf0"

    return-object v0

    .line 1041
    :pswitch_b3
    const-string v0, "\ud83c\uddeb\ud83c\uddef"

    return-object v0

    .line 1039
    :pswitch_b4
    const-string v0, "\ud83c\uddeb\ud83c\uddee"

    return-object v0

    .line 1037
    :pswitch_b5
    const-string v0, "\ud83c\uddea\ud83c\uddf9"

    return-object v0

    .line 1035
    :pswitch_b6
    const-string v0, "\ud83c\uddea\ud83c\uddf8"

    return-object v0

    .line 1033
    :pswitch_b7
    const-string v0, "\ud83c\uddea\ud83c\uddf7"

    return-object v0

    .line 1031
    :pswitch_b8
    const-string v0, "\ud83c\uddea\ud83c\udded"

    return-object v0

    .line 1029
    :pswitch_b9
    const-string v0, "\ud83c\uddea\ud83c\uddec"

    return-object v0

    .line 1027
    :pswitch_ba
    const-string v0, "\ud83c\uddea\ud83c\uddea"

    return-object v0

    .line 1025
    :pswitch_bb
    const-string v0, "\ud83c\uddea\ud83c\udde8"

    return-object v0

    .line 1023
    :pswitch_bc
    const-string v0, "\ud83c\udde9\ud83c\uddff"

    return-object v0

    .line 1021
    :pswitch_bd
    const-string v0, "\ud83c\udde9\ud83c\uddf4"

    return-object v0

    .line 1019
    :pswitch_be
    const-string v0, "\ud83c\udde9\ud83c\uddf2"

    return-object v0

    .line 1017
    :pswitch_bf
    const-string v0, "\ud83c\udde9\ud83c\uddf0"

    return-object v0

    .line 1015
    :pswitch_c0
    const-string v0, "\ud83c\udde9\ud83c\uddef"

    return-object v0

    .line 1013
    :pswitch_c1
    const-string v0, "\ud83c\udde9\ud83c\uddea"

    return-object v0

    .line 1011
    :pswitch_c2
    const-string v0, "\ud83c\udde8\ud83c\uddff"

    return-object v0

    .line 1009
    :pswitch_c3
    const-string v0, "\ud83c\udde8\ud83c\uddfe"

    return-object v0

    .line 1007
    :pswitch_c4
    const-string v0, "\ud83c\udde8\ud83c\uddfd"

    return-object v0

    .line 1005
    :pswitch_c5
    const-string v0, "\ud83c\udde8\ud83c\uddfc"

    return-object v0

    .line 1003
    :pswitch_c6
    const-string v0, "\ud83c\udde8\ud83c\uddfb"

    return-object v0

    .line 1001
    :pswitch_c7
    const-string v0, "\ud83c\udde8\ud83c\uddfa"

    return-object v0

    .line 999
    :pswitch_c8
    const-string v0, "\ud83c\udde8\ud83c\uddf7"

    return-object v0

    .line 997
    :pswitch_c9
    const-string v0, "\ud83c\udde8\ud83c\uddf4"

    return-object v0

    .line 995
    :pswitch_ca
    const-string v0, "\ud83c\udde8\ud83c\uddf3"

    return-object v0

    .line 993
    :pswitch_cb
    const-string v0, "\ud83c\udde8\ud83c\uddf2"

    return-object v0

    .line 991
    :pswitch_cc
    const-string v0, "\ud83c\udde8\ud83c\uddf1"

    return-object v0

    .line 989
    :pswitch_cd
    const-string v0, "\ud83c\udde8\ud83c\uddf0"

    return-object v0

    .line 987
    :pswitch_ce
    const-string v0, "\ud83c\udde8\ud83c\uddee"

    return-object v0

    .line 985
    :pswitch_cf
    const-string v0, "\ud83c\udde8\ud83c\udded"

    return-object v0

    .line 983
    :pswitch_d0
    const-string v0, "\ud83c\udde8\ud83c\uddec"

    return-object v0

    .line 981
    :pswitch_d1
    const-string v0, "\ud83c\udde8\ud83c\uddeb"

    return-object v0

    .line 979
    :pswitch_d2
    const-string v0, "\ud83c\udde8\ud83c\udde9"

    return-object v0

    .line 977
    :pswitch_d3
    const-string v0, "\ud83c\udde8\ud83c\udde8"

    return-object v0

    .line 975
    :pswitch_d4
    const-string v0, "\ud83c\udde8\ud83c\udde6"

    return-object v0

    .line 973
    :pswitch_d5
    const-string v0, "\ud83c\udde7\ud83c\uddff"

    return-object v0

    .line 971
    :pswitch_d6
    const-string v0, "\ud83c\udde7\ud83c\uddfe"

    return-object v0

    .line 969
    :pswitch_d7
    const-string v0, "\ud83c\udde7\ud83c\uddfc"

    return-object v0

    .line 967
    :pswitch_d8
    const-string v0, "\ud83c\udde7\ud83c\uddfb"

    return-object v0

    .line 965
    :pswitch_d9
    const-string v0, "\ud83c\udde7\ud83c\uddf9"

    return-object v0

    .line 963
    :pswitch_da
    const-string v0, "\ud83c\udde7\ud83c\uddf8"

    return-object v0

    .line 961
    :pswitch_db
    const-string v0, "\ud83c\udde7\ud83c\uddf7"

    return-object v0

    .line 959
    :pswitch_dc
    const-string v0, "\ud83c\udde7\ud83c\uddf6"

    return-object v0

    .line 957
    :pswitch_dd
    const-string v0, "\ud83c\udde7\ud83c\uddf4"

    return-object v0

    .line 955
    :pswitch_de
    const-string v0, "\ud83c\udde7\ud83c\uddf3"

    return-object v0

    .line 953
    :pswitch_df
    const-string v0, "\ud83c\udde7\ud83c\uddf2"

    return-object v0

    .line 951
    :pswitch_e0
    const-string v0, "\ud83c\udde7\ud83c\uddf1"

    return-object v0

    .line 949
    :pswitch_e1
    const-string v0, "\ud83c\udde7\ud83c\uddef"

    return-object v0

    .line 947
    :pswitch_e2
    const-string v0, "\ud83c\udde7\ud83c\uddee"

    return-object v0

    .line 945
    :pswitch_e3
    const-string v0, "\ud83c\udde7\ud83c\udded"

    return-object v0

    .line 943
    :pswitch_e4
    const-string v0, "\ud83c\udde7\ud83c\uddec"

    return-object v0

    .line 941
    :pswitch_e5
    const-string v0, "\ud83c\udde7\ud83c\uddeb"

    return-object v0

    .line 939
    :pswitch_e6
    const-string v0, "\ud83c\udde7\ud83c\uddea"

    return-object v0

    .line 937
    :pswitch_e7
    const-string v0, "\ud83c\udde7\ud83c\udde9"

    return-object v0

    .line 935
    :pswitch_e8
    const-string v0, "\ud83c\udde7\ud83c\udde7"

    return-object v0

    .line 933
    :pswitch_e9
    const-string v0, "\ud83c\udde7\ud83c\udde6"

    return-object v0

    .line 931
    :pswitch_ea
    const-string v0, "\ud83c\udde6\ud83c\uddff"

    return-object v0

    .line 929
    :pswitch_eb
    const-string v0, "\ud83c\udde6\ud83c\uddfd"

    return-object v0

    .line 927
    :pswitch_ec
    const-string v0, "\ud83c\udde6\ud83c\uddfc"

    return-object v0

    .line 925
    :pswitch_ed
    const-string v0, "\ud83c\udde6\ud83c\uddfa"

    return-object v0

    .line 923
    :pswitch_ee
    const-string v0, "\ud83c\udde6\ud83c\uddf9"

    return-object v0

    .line 921
    :pswitch_ef
    const-string v0, "\ud83c\udde6\ud83c\uddf8"

    return-object v0

    .line 919
    :pswitch_f0
    const-string v0, "\ud83c\udde6\ud83c\uddf7"

    return-object v0

    .line 917
    :pswitch_f1
    const-string v0, "\ud83c\udde6\ud83c\uddf6"

    return-object v0

    .line 915
    :pswitch_f2
    const-string v0, "\ud83c\udde6\ud83c\uddf4"

    return-object v0

    .line 913
    :pswitch_f3
    const-string v0, "\ud83c\udde6\ud83c\uddf2"

    return-object v0

    .line 911
    :pswitch_f4
    const-string v0, "\ud83c\udde6\ud83c\uddf1"

    return-object v0

    .line 909
    :pswitch_f5
    const-string v0, "\ud83c\udde6\ud83c\uddee"

    return-object v0

    .line 907
    :pswitch_f6
    const-string v0, "\ud83c\udde6\ud83c\uddec"

    return-object v0

    .line 905
    :pswitch_f7
    const-string v0, "\ud83c\udde6\ud83c\uddeb"

    return-object v0

    .line 903
    :pswitch_f8
    const-string v0, "\ud83c\udde6\ud83c\uddea"

    return-object v0

    .line 901
    :pswitch_f9
    const-string v0, "\ud83c\udde6\ud83c\udde9"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xc23 -> :sswitch_f9
        0xc24 -> :sswitch_f8
        0xc25 -> :sswitch_f7
        0xc26 -> :sswitch_f6
        0xc28 -> :sswitch_f5
        0xc2b -> :sswitch_f4
        0xc2c -> :sswitch_f3
        0xc2e -> :sswitch_f2
        0xc30 -> :sswitch_f1
        0xc31 -> :sswitch_f0
        0xc32 -> :sswitch_ef
        0xc33 -> :sswitch_ee
        0xc34 -> :sswitch_ed
        0xc36 -> :sswitch_ec
        0xc37 -> :sswitch_eb
        0xc39 -> :sswitch_ea
        0xc3f -> :sswitch_e9
        0xc40 -> :sswitch_e8
        0xc42 -> :sswitch_e7
        0xc43 -> :sswitch_e6
        0xc44 -> :sswitch_e5
        0xc45 -> :sswitch_e4
        0xc46 -> :sswitch_e3
        0xc47 -> :sswitch_e2
        0xc48 -> :sswitch_e1
        0xc4a -> :sswitch_e0
        0xc4b -> :sswitch_df
        0xc4c -> :sswitch_de
        0xc4d -> :sswitch_dd
        0xc4f -> :sswitch_dc
        0xc50 -> :sswitch_db
        0xc51 -> :sswitch_da
        0xc52 -> :sswitch_d9
        0xc54 -> :sswitch_d8
        0xc55 -> :sswitch_d7
        0xc57 -> :sswitch_d6
        0xc58 -> :sswitch_d5
        0xc5e -> :sswitch_d4
        0xc60 -> :sswitch_d3
        0xc61 -> :sswitch_d2
        0xc63 -> :sswitch_d1
        0xc64 -> :sswitch_d0
        0xc65 -> :sswitch_cf
        0xc66 -> :sswitch_ce
        0xc68 -> :sswitch_cd
        0xc69 -> :sswitch_cc
        0xc6a -> :sswitch_cb
        0xc6b -> :sswitch_ca
        0xc6c -> :sswitch_c9
        0xc6f -> :sswitch_c8
        0xc72 -> :sswitch_c7
        0xc73 -> :sswitch_c6
        0xc74 -> :sswitch_c5
        0xc75 -> :sswitch_c4
        0xc76 -> :sswitch_c3
        0xc77 -> :sswitch_c2
        0xc81 -> :sswitch_c1
        0xc86 -> :sswitch_c0
        0xc87 -> :sswitch_bf
        0xc89 -> :sswitch_be
        0xc8b -> :sswitch_bd
        0xc96 -> :sswitch_bc
        0xc9e -> :sswitch_bb
        0xca0 -> :sswitch_ba
        0xca2 -> :sswitch_b9
        0xca3 -> :sswitch_b8
        0xcad -> :sswitch_b7
        0xcae -> :sswitch_b6
        0xcaf -> :sswitch_b5
        0xcc3 -> :sswitch_b4
        0xcc4 -> :sswitch_b3
        0xcc5 -> :sswitch_b2
        0xcc7 -> :sswitch_b1
        0xcc9 -> :sswitch_b0
        0xccc -> :sswitch_af
        0xcda -> :sswitch_ae
        0xcdb -> :sswitch_ad
        0xcdd -> :sswitch_ac
        0xcde -> :sswitch_ab
        0xcdf -> :sswitch_aa
        0xce0 -> :sswitch_a9
        0xce1 -> :sswitch_a8
        0xce2 -> :sswitch_a7
        0xce5 -> :sswitch_a6
        0xce6 -> :sswitch_a5
        0xce7 -> :sswitch_a4
        0xce9 -> :sswitch_a3
        0xcea -> :sswitch_a2
        0xceb -> :sswitch_a1
        0xcec -> :sswitch_a0
        0xced -> :sswitch_9f
        0xcee -> :sswitch_9e
        0xcf0 -> :sswitch_9d
        0xcf2 -> :sswitch_9c
        0xd03 -> :sswitch_9b
        0xd05 -> :sswitch_9a
        0xd06 -> :sswitch_99
        0xd0a -> :sswitch_98
        0xd0c -> :sswitch_97
        0xd0d -> :sswitch_96
        0xd1b -> :sswitch_95
        0xd1c -> :sswitch_94
        0xd23 -> :sswitch_93
        0xd24 -> :sswitch_92
        0xd25 -> :sswitch_91
        0xd26 -> :sswitch_90
        0xd28 -> :sswitch_8f
        0xd29 -> :sswitch_8e
        0xd2a -> :sswitch_8d
        0xd2b -> :sswitch_8c
        0xd3b -> :sswitch_8b
        0xd43 -> :sswitch_8a
        0xd45 -> :sswitch_89
        0xd46 -> :sswitch_88
        0xd5a -> :sswitch_87
        0xd5c -> :sswitch_86
        0xd5d -> :sswitch_85
        0xd5e -> :sswitch_84
        0xd62 -> :sswitch_83
        0xd63 -> :sswitch_82
        0xd65 -> :sswitch_81
        0xd67 -> :sswitch_80
        0xd6c -> :sswitch_7f
        0xd6e -> :sswitch_7e
        0xd6f -> :sswitch_7d
        0xd75 -> :sswitch_7c
        0xd76 -> :sswitch_7b
        0xd77 -> :sswitch_7a
        0xd7d -> :sswitch_79
        0xd7f -> :sswitch_78
        0xd86 -> :sswitch_77
        0xd87 -> :sswitch_76
        0xd88 -> :sswitch_75
        0xd89 -> :sswitch_74
        0xd8a -> :sswitch_73
        0xd8d -> :sswitch_72
        0xd94 -> :sswitch_71
        0xd96 -> :sswitch_70
        0xd97 -> :sswitch_6f
        0xd98 -> :sswitch_6e
        0xd99 -> :sswitch_6d
        0xd9a -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0xd9e -> :sswitch_6a
        0xd9f -> :sswitch_69
        0xda0 -> :sswitch_68
        0xda1 -> :sswitch_67
        0xda2 -> :sswitch_66
        0xda3 -> :sswitch_65
        0xda4 -> :sswitch_64
        0xda5 -> :sswitch_63
        0xda6 -> :sswitch_62
        0xda7 -> :sswitch_61
        0xda8 -> :sswitch_60
        0xda9 -> :sswitch_5f
        0xdaa -> :sswitch_5e
        0xdab -> :sswitch_5d
        0xdac -> :sswitch_5c
        0xdad -> :sswitch_5b
        0xdb3 -> :sswitch_5a
        0xdb5 -> :sswitch_59
        0xdb7 -> :sswitch_58
        0xdb8 -> :sswitch_57
        0xdb9 -> :sswitch_56
        0xdbb -> :sswitch_55
        0xdbe -> :sswitch_54
        0xdc1 -> :sswitch_53
        0xdc2 -> :sswitch_52
        0xdc4 -> :sswitch_51
        0xdc7 -> :sswitch_50
        0xdcc -> :sswitch_4f
        0xdde -> :sswitch_4e
        0xdf1 -> :sswitch_4d
        0xdf5 -> :sswitch_4c
        0xdf6 -> :sswitch_4b
        0xdf7 -> :sswitch_4a
        0xdf8 -> :sswitch_49
        0xdfb -> :sswitch_48
        0xdfc -> :sswitch_47
        0xdfd -> :sswitch_46
        0xdfe -> :sswitch_45
        0xe02 -> :sswitch_44
        0xe03 -> :sswitch_43
        0xe04 -> :sswitch_42
        0xe07 -> :sswitch_41
        0xe09 -> :sswitch_40
        0xe10 -> :sswitch_3f
        0xe33 -> :sswitch_3e
        0xe3d -> :sswitch_3d
        0xe41 -> :sswitch_3c
        0xe43 -> :sswitch_3b
        0xe45 -> :sswitch_3a
        0xe4e -> :sswitch_39
        0xe4f -> :sswitch_38
        0xe50 -> :sswitch_37
        0xe51 -> :sswitch_36
        0xe52 -> :sswitch_35
        0xe54 -> :sswitch_34
        0xe55 -> :sswitch_33
        0xe56 -> :sswitch_32
        0xe57 -> :sswitch_31
        0xe58 -> :sswitch_30
        0xe59 -> :sswitch_2f
        0xe5a -> :sswitch_2e
        0xe5b -> :sswitch_2d
        0xe5c -> :sswitch_2c
        0xe5f -> :sswitch_2b
        0xe60 -> :sswitch_2a
        0xe61 -> :sswitch_29
        0xe63 -> :sswitch_28
        0xe65 -> :sswitch_27
        0xe66 -> :sswitch_26
        0xe67 -> :sswitch_25
        0xe6f -> :sswitch_24
        0xe70 -> :sswitch_23
        0xe72 -> :sswitch_22
        0xe73 -> :sswitch_21
        0xe74 -> :sswitch_20
        0xe76 -> :sswitch_1f
        0xe77 -> :sswitch_1e
        0xe78 -> :sswitch_1d
        0xe79 -> :sswitch_1c
        0xe7a -> :sswitch_1b
        0xe7b -> :sswitch_1a
        0xe7e -> :sswitch_19
        0xe80 -> :sswitch_18
        0xe82 -> :sswitch_17
        0xe83 -> :sswitch_16
        0xe86 -> :sswitch_15
        0xe8c -> :sswitch_14
        0xe92 -> :sswitch_13
        0xe98 -> :sswitch_12
        0xe9e -> :sswitch_11
        0xea4 -> :sswitch_10
        0xea5 -> :sswitch_f
        0xeab -> :sswitch_e
        0xead -> :sswitch_d
        0xeaf -> :sswitch_c
        0xeb1 -> :sswitch_b
        0xeb3 -> :sswitch_a
        0xeb8 -> :sswitch_9
        0xebf -> :sswitch_8
        0xecf -> :sswitch_7
        0xedc -> :sswitch_6
        0xef3 -> :sswitch_5
        0xf0c -> :sswitch_4
        0xf1b -> :sswitch_3
        0xf27 -> :sswitch_2
        0xf33 -> :sswitch_1
        0xf3d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getFlagMasterResID(Lcom/hbb20/CCPCountry;)I
    .locals 2
    .param p0, "CCPCountry"    # Lcom/hbb20/CCPCountry;

    .line 399
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "zw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf1

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "zm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf0

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "za"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xef

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "yt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xee

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "ye"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xed

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "xk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xec

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "ws"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xeb

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "wf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xea

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "vu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe9

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "vn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe8

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe7

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "vg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe6

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "ve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe5

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "vc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe4

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "va"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe3

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "uz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe2

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "uy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe1

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "us"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe0

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "ug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xdf

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "ua"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xde

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "tz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xdd

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "tw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xdc

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "tv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xdb

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "tt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xda

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd9

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "to"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd8

    goto/16 :goto_1

    :sswitch_1a
    const-string v1, "tn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd7

    goto/16 :goto_1

    :sswitch_1b
    const-string v1, "tm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd6

    goto/16 :goto_1

    :sswitch_1c
    const-string v1, "tl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd5

    goto/16 :goto_1

    :sswitch_1d
    const-string v1, "tk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd4

    goto/16 :goto_1

    :sswitch_1e
    const-string v1, "tj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd3

    goto/16 :goto_1

    :sswitch_1f
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd2

    goto/16 :goto_1

    :sswitch_20
    const-string v1, "tg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd1

    goto/16 :goto_1

    :sswitch_21
    const-string v1, "td"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd0

    goto/16 :goto_1

    :sswitch_22
    const-string v1, "tc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcf

    goto/16 :goto_1

    :sswitch_23
    const-string v1, "sz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xce

    goto/16 :goto_1

    :sswitch_24
    const-string v1, "sy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcd

    goto/16 :goto_1

    :sswitch_25
    const-string v1, "sx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcc

    goto/16 :goto_1

    :sswitch_26
    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcb

    goto/16 :goto_1

    :sswitch_27
    const-string v1, "st"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xca

    goto/16 :goto_1

    :sswitch_28
    const-string v1, "ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc9

    goto/16 :goto_1

    :sswitch_29
    const-string v1, "sr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    goto/16 :goto_1

    :sswitch_2a
    const-string v1, "so"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc7

    goto/16 :goto_1

    :sswitch_2b
    const-string v1, "sn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc6

    goto/16 :goto_1

    :sswitch_2c
    const-string v1, "sm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc5

    goto/16 :goto_1

    :sswitch_2d
    const-string v1, "sl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc4

    goto/16 :goto_1

    :sswitch_2e
    const-string v1, "sk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc3

    goto/16 :goto_1

    :sswitch_2f
    const-string v1, "si"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc2

    goto/16 :goto_1

    :sswitch_30
    const-string v1, "sh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc1

    goto/16 :goto_1

    :sswitch_31
    const-string v1, "sg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc0

    goto/16 :goto_1

    :sswitch_32
    const-string v1, "se"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbf

    goto/16 :goto_1

    :sswitch_33
    const-string v1, "sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbe

    goto/16 :goto_1

    :sswitch_34
    const-string v1, "sc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbd

    goto/16 :goto_1

    :sswitch_35
    const-string v1, "sb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbc

    goto/16 :goto_1

    :sswitch_36
    const-string v1, "sa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbb

    goto/16 :goto_1

    :sswitch_37
    const-string v1, "rw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xba

    goto/16 :goto_1

    :sswitch_38
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb9

    goto/16 :goto_1

    :sswitch_39
    const-string v1, "rs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb8

    goto/16 :goto_1

    :sswitch_3a
    const-string v1, "ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb7

    goto/16 :goto_1

    :sswitch_3b
    const-string v1, "re"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb6

    goto/16 :goto_1

    :sswitch_3c
    const-string v1, "qa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb5

    goto/16 :goto_1

    :sswitch_3d
    const-string v1, "py"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb4

    goto/16 :goto_1

    :sswitch_3e
    const-string v1, "pw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb3

    goto/16 :goto_1

    :sswitch_3f
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb2

    goto/16 :goto_1

    :sswitch_40
    const-string v1, "ps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb1

    goto/16 :goto_1

    :sswitch_41
    const-string v1, "pr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb0

    goto/16 :goto_1

    :sswitch_42
    const-string v1, "pn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xaf

    goto/16 :goto_1

    :sswitch_43
    const-string v1, "pm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xae

    goto/16 :goto_1

    :sswitch_44
    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xad

    goto/16 :goto_1

    :sswitch_45
    const-string v1, "pk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xac

    goto/16 :goto_1

    :sswitch_46
    const-string v1, "ph"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xab

    goto/16 :goto_1

    :sswitch_47
    const-string v1, "pg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xaa

    goto/16 :goto_1

    :sswitch_48
    const-string v1, "pf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa9

    goto/16 :goto_1

    :sswitch_49
    const-string v1, "pe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa8

    goto/16 :goto_1

    :sswitch_4a
    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa7

    goto/16 :goto_1

    :sswitch_4b
    const-string v1, "om"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa6

    goto/16 :goto_1

    :sswitch_4c
    const-string v1, "nz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa5

    goto/16 :goto_1

    :sswitch_4d
    const-string v1, "nu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa4

    goto/16 :goto_1

    :sswitch_4e
    const-string v1, "nr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa3

    goto/16 :goto_1

    :sswitch_4f
    const-string v1, "np"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa2

    goto/16 :goto_1

    :sswitch_50
    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa1

    goto/16 :goto_1

    :sswitch_51
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    goto/16 :goto_1

    :sswitch_52
    const-string v1, "ni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9f

    goto/16 :goto_1

    :sswitch_53
    const-string v1, "ng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9e

    goto/16 :goto_1

    :sswitch_54
    const-string v1, "nf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9d

    goto/16 :goto_1

    :sswitch_55
    const-string v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9c

    goto/16 :goto_1

    :sswitch_56
    const-string v1, "nc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9b

    goto/16 :goto_1

    :sswitch_57
    const-string v1, "na"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9a

    goto/16 :goto_1

    :sswitch_58
    const-string v1, "mz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x99

    goto/16 :goto_1

    :sswitch_59
    const-string v1, "my"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x98

    goto/16 :goto_1

    :sswitch_5a
    const-string v1, "mx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x97

    goto/16 :goto_1

    :sswitch_5b
    const-string v1, "mw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x96

    goto/16 :goto_1

    :sswitch_5c
    const-string v1, "mv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x95

    goto/16 :goto_1

    :sswitch_5d
    const-string v1, "mu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x94

    goto/16 :goto_1

    :sswitch_5e
    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x93

    goto/16 :goto_1

    :sswitch_5f
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x92

    goto/16 :goto_1

    :sswitch_60
    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x91

    goto/16 :goto_1

    :sswitch_61
    const-string v1, "mq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    goto/16 :goto_1

    :sswitch_62
    const-string v1, "mp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8f

    goto/16 :goto_1

    :sswitch_63
    const-string v1, "mo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8e

    goto/16 :goto_1

    :sswitch_64
    const-string v1, "mn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8d

    goto/16 :goto_1

    :sswitch_65
    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8c

    goto/16 :goto_1

    :sswitch_66
    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8b

    goto/16 :goto_1

    :sswitch_67
    const-string v1, "mk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8a

    goto/16 :goto_1

    :sswitch_68
    const-string v1, "mh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x89

    goto/16 :goto_1

    :sswitch_69
    const-string v1, "mg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x88

    goto/16 :goto_1

    :sswitch_6a
    const-string v1, "mf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x87

    goto/16 :goto_1

    :sswitch_6b
    const-string v1, "me"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x86

    goto/16 :goto_1

    :sswitch_6c
    const-string v1, "md"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x85

    goto/16 :goto_1

    :sswitch_6d
    const-string v1, "mc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x84

    goto/16 :goto_1

    :sswitch_6e
    const-string v1, "ma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x83

    goto/16 :goto_1

    :sswitch_6f
    const-string v1, "ly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x82

    goto/16 :goto_1

    :sswitch_70
    const-string v1, "lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto/16 :goto_1

    :sswitch_71
    const-string v1, "lu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    goto/16 :goto_1

    :sswitch_72
    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7f

    goto/16 :goto_1

    :sswitch_73
    const-string v1, "ls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7e

    goto/16 :goto_1

    :sswitch_74
    const-string v1, "lr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d

    goto/16 :goto_1

    :sswitch_75
    const-string v1, "lk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7c

    goto/16 :goto_1

    :sswitch_76
    const-string v1, "li"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7b

    goto/16 :goto_1

    :sswitch_77
    const-string v1, "lc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7a

    goto/16 :goto_1

    :sswitch_78
    const-string v1, "lb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x79

    goto/16 :goto_1

    :sswitch_79
    const-string v1, "la"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x78

    goto/16 :goto_1

    :sswitch_7a
    const-string v1, "kz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x77

    goto/16 :goto_1

    :sswitch_7b
    const-string v1, "ky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x76

    goto/16 :goto_1

    :sswitch_7c
    const-string v1, "kw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x75

    goto/16 :goto_1

    :sswitch_7d
    const-string v1, "kr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x74

    goto/16 :goto_1

    :sswitch_7e
    const-string v1, "kp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x73

    goto/16 :goto_1

    :sswitch_7f
    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x72

    goto/16 :goto_1

    :sswitch_80
    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x71

    goto/16 :goto_1

    :sswitch_81
    const-string v1, "ki"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x70

    goto/16 :goto_1

    :sswitch_82
    const-string v1, "kh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_83
    const-string v1, "kg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6e

    goto/16 :goto_1

    :sswitch_84
    const-string v1, "ke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6d

    goto/16 :goto_1

    :sswitch_85
    const-string v1, "jp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6c

    goto/16 :goto_1

    :sswitch_86
    const-string v1, "jo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6b

    goto/16 :goto_1

    :sswitch_87
    const-string v1, "jm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6a

    goto/16 :goto_1

    :sswitch_88
    const-string v1, "je"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x69

    goto/16 :goto_1

    :sswitch_89
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x68

    goto/16 :goto_1

    :sswitch_8a
    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x63

    goto/16 :goto_1

    :sswitch_8b
    const-string v1, "ir"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x67

    goto/16 :goto_1

    :sswitch_8c
    const-string v1, "iq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    goto/16 :goto_1

    :sswitch_8d
    const-string v1, "io"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    goto/16 :goto_1

    :sswitch_8e
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto/16 :goto_1

    :sswitch_8f
    const-string v1, "im"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x62

    goto/16 :goto_1

    :sswitch_90
    const-string v1, "il"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto/16 :goto_1

    :sswitch_91
    const-string v1, "ie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto/16 :goto_1

    :sswitch_92
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    goto/16 :goto_1

    :sswitch_93
    const-string v1, "hu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5e

    goto/16 :goto_1

    :sswitch_94
    const-string v1, "ht"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    goto/16 :goto_1

    :sswitch_95
    const-string v1, "hr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5c

    goto/16 :goto_1

    :sswitch_96
    const-string v1, "hn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    goto/16 :goto_1

    :sswitch_97
    const-string v1, "hk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    goto/16 :goto_1

    :sswitch_98
    const-string v1, "gy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x59

    goto/16 :goto_1

    :sswitch_99
    const-string v1, "gw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x58

    goto/16 :goto_1

    :sswitch_9a
    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x57

    goto/16 :goto_1

    :sswitch_9b
    const-string v1, "gt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x56

    goto/16 :goto_1

    :sswitch_9c
    const-string v1, "gr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    goto/16 :goto_1

    :sswitch_9d
    const-string v1, "gq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x54

    goto/16 :goto_1

    :sswitch_9e
    const-string v1, "gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x53

    goto/16 :goto_1

    :sswitch_9f
    const-string v1, "gn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x52

    goto/16 :goto_1

    :sswitch_a0
    const-string v1, "gm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x51

    goto/16 :goto_1

    :sswitch_a1
    const-string v1, "gl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    goto/16 :goto_1

    :sswitch_a2
    const-string v1, "gi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_a3
    const-string v1, "gh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e

    goto/16 :goto_1

    :sswitch_a4
    const-string v1, "gg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    goto/16 :goto_1

    :sswitch_a5
    const-string v1, "gf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    goto/16 :goto_1

    :sswitch_a6
    const-string v1, "ge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    goto/16 :goto_1

    :sswitch_a7
    const-string v1, "gd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4a

    goto/16 :goto_1

    :sswitch_a8
    const-string v1, "gb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x49

    goto/16 :goto_1

    :sswitch_a9
    const-string v1, "ga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    goto/16 :goto_1

    :sswitch_aa
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x47

    goto/16 :goto_1

    :sswitch_ab
    const-string v1, "fo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    goto/16 :goto_1

    :sswitch_ac
    const-string v1, "fm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x45

    goto/16 :goto_1

    :sswitch_ad
    const-string v1, "fk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    goto/16 :goto_1

    :sswitch_ae
    const-string v1, "fj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x43

    goto/16 :goto_1

    :sswitch_af
    const-string v1, "fi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    goto/16 :goto_1

    :sswitch_b0
    const-string v1, "et"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_b1
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto/16 :goto_1

    :sswitch_b2
    const-string v1, "er"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    goto/16 :goto_1

    :sswitch_b3
    const-string v1, "eg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e

    goto/16 :goto_1

    :sswitch_b4
    const-string v1, "ee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto/16 :goto_1

    :sswitch_b5
    const-string v1, "ec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto/16 :goto_1

    :sswitch_b6
    const-string v1, "dz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3b

    goto/16 :goto_1

    :sswitch_b7
    const-string v1, "do"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    goto/16 :goto_1

    :sswitch_b8
    const-string v1, "dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x39

    goto/16 :goto_1

    :sswitch_b9
    const-string v1, "dk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    goto/16 :goto_1

    :sswitch_ba
    const-string v1, "dj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x37

    goto/16 :goto_1

    :sswitch_bb
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto/16 :goto_1

    :sswitch_bc
    const-string v1, "cz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x35

    goto/16 :goto_1

    :sswitch_bd
    const-string v1, "cy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x34

    goto/16 :goto_1

    :sswitch_be
    const-string v1, "cx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    goto/16 :goto_1

    :sswitch_bf
    const-string v1, "cw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_c0
    const-string v1, "cv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    goto/16 :goto_1

    :sswitch_c1
    const-string v1, "cu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_c2
    const-string v1, "cr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_c3
    const-string v1, "co"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_c4
    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_c5
    const-string v1, "cm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_c6
    const-string v1, "cl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_c7
    const-string v1, "ck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_c8
    const-string v1, "ci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_c9
    const-string v1, "ch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_ca
    const-string v1, "cg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_cb
    const-string v1, "cf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_cc
    const-string v1, "cd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_cd
    const-string v1, "cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_ce
    const-string v1, "ca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_cf
    const-string v1, "bz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_d0
    const-string v1, "by"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_d1
    const-string v1, "bw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_d2
    const-string v1, "bt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_d3
    const-string v1, "bs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_d4
    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_d5
    const-string v1, "bo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_d6
    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_d7
    const-string v1, "bm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_d8
    const-string v1, "bl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_d9
    const-string v1, "bj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_da
    const-string v1, "bi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_db
    const-string v1, "bh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_dc
    const-string v1, "bg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_dd
    const-string v1, "bf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_de
    const-string v1, "be"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_df
    const-string v1, "bd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_e0
    const-string v1, "bb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_e1
    const-string v1, "ba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_e2
    const-string v1, "az"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_e3
    const-string v1, "ax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_e4
    const-string v1, "aw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e5
    const-string v1, "au"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_e6
    const-string v1, "at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_e7
    const-string v1, "as"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_e8
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_e9
    const-string v1, "aq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_ea
    const-string v1, "ao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_eb
    const-string v1, "am"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_ec
    const-string v1, "al"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_ed
    const-string v1, "ai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_ee
    const-string v1, "ag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_ef
    const-string v1, "af"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_f0
    const-string v1, "ae"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_f1
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 886
    sget v0, Lcom/hbb20/R$drawable;->flag_transparent:I

    return v0

    .line 884
    :pswitch_0
    sget v0, Lcom/hbb20/R$drawable;->flag_zimbabwe:I

    return v0

    .line 882
    :pswitch_1
    sget v0, Lcom/hbb20/R$drawable;->flag_zambia:I

    return v0

    .line 880
    :pswitch_2
    sget v0, Lcom/hbb20/R$drawable;->flag_south_africa:I

    return v0

    .line 878
    :pswitch_3
    sget v0, Lcom/hbb20/R$drawable;->flag_martinique:I

    return v0

    .line 876
    :pswitch_4
    sget v0, Lcom/hbb20/R$drawable;->flag_yemen:I

    return v0

    .line 874
    :pswitch_5
    sget v0, Lcom/hbb20/R$drawable;->flag_kosovo:I

    return v0

    .line 872
    :pswitch_6
    sget v0, Lcom/hbb20/R$drawable;->flag_samoa:I

    return v0

    .line 870
    :pswitch_7
    sget v0, Lcom/hbb20/R$drawable;->flag_wallis_and_futuna:I

    return v0

    .line 868
    :pswitch_8
    sget v0, Lcom/hbb20/R$drawable;->flag_vanuatu:I

    return v0

    .line 866
    :pswitch_9
    sget v0, Lcom/hbb20/R$drawable;->flag_vietnam:I

    return v0

    .line 864
    :pswitch_a
    sget v0, Lcom/hbb20/R$drawable;->flag_us_virgin_islands:I

    return v0

    .line 862
    :pswitch_b
    sget v0, Lcom/hbb20/R$drawable;->flag_british_virgin_islands:I

    return v0

    .line 860
    :pswitch_c
    sget v0, Lcom/hbb20/R$drawable;->flag_venezuela:I

    return v0

    .line 858
    :pswitch_d
    sget v0, Lcom/hbb20/R$drawable;->flag_saint_vicent_and_the_grenadines:I

    return v0

    .line 856
    :pswitch_e
    sget v0, Lcom/hbb20/R$drawable;->flag_vatican_city:I

    return v0

    .line 854
    :pswitch_f
    sget v0, Lcom/hbb20/R$drawable;->flag_uzbekistan:I

    return v0

    .line 852
    :pswitch_10
    sget v0, Lcom/hbb20/R$drawable;->flag_uruguay:I

    return v0

    .line 850
    :pswitch_11
    sget v0, Lcom/hbb20/R$drawable;->flag_united_states_of_america:I

    return v0

    .line 848
    :pswitch_12
    sget v0, Lcom/hbb20/R$drawable;->flag_uganda:I

    return v0

    .line 846
    :pswitch_13
    sget v0, Lcom/hbb20/R$drawable;->flag_ukraine:I

    return v0

    .line 844
    :pswitch_14
    sget v0, Lcom/hbb20/R$drawable;->flag_tanzania:I

    return v0

    .line 842
    :pswitch_15
    sget v0, Lcom/hbb20/R$drawable;->flag_taiwan:I

    return v0

    .line 840
    :pswitch_16
    sget v0, Lcom/hbb20/R$drawable;->flag_tuvalu:I

    return v0

    .line 838
    :pswitch_17
    sget v0, Lcom/hbb20/R$drawable;->flag_trinidad_and_tobago:I

    return v0

    .line 836
    :pswitch_18
    sget v0, Lcom/hbb20/R$drawable;->flag_turkey:I

    return v0

    .line 834
    :pswitch_19
    sget v0, Lcom/hbb20/R$drawable;->flag_tonga:I

    return v0

    .line 832
    :pswitch_1a
    sget v0, Lcom/hbb20/R$drawable;->flag_tunisia:I

    return v0

    .line 830
    :pswitch_1b
    sget v0, Lcom/hbb20/R$drawable;->flag_turkmenistan:I

    return v0

    .line 828
    :pswitch_1c
    sget v0, Lcom/hbb20/R$drawable;->flag_timor_leste:I

    return v0

    .line 826
    :pswitch_1d
    sget v0, Lcom/hbb20/R$drawable;->flag_tokelau:I

    return v0

    .line 824
    :pswitch_1e
    sget v0, Lcom/hbb20/R$drawable;->flag_tajikistan:I

    return v0

    .line 822
    :pswitch_1f
    sget v0, Lcom/hbb20/R$drawable;->flag_thailand:I

    return v0

    .line 820
    :pswitch_20
    sget v0, Lcom/hbb20/R$drawable;->flag_togo:I

    return v0

    .line 818
    :pswitch_21
    sget v0, Lcom/hbb20/R$drawable;->flag_chad:I

    return v0

    .line 816
    :pswitch_22
    sget v0, Lcom/hbb20/R$drawable;->flag_turks_and_caicos_islands:I

    return v0

    .line 814
    :pswitch_23
    sget v0, Lcom/hbb20/R$drawable;->flag_swaziland:I

    return v0

    .line 812
    :pswitch_24
    sget v0, Lcom/hbb20/R$drawable;->flag_syria:I

    return v0

    .line 810
    :pswitch_25
    sget v0, Lcom/hbb20/R$drawable;->flag_sint_maarten:I

    return v0

    .line 808
    :pswitch_26
    sget v0, Lcom/hbb20/R$drawable;->flag_el_salvador:I

    return v0

    .line 806
    :pswitch_27
    sget v0, Lcom/hbb20/R$drawable;->flag_sao_tome_and_principe:I

    return v0

    .line 804
    :pswitch_28
    sget v0, Lcom/hbb20/R$drawable;->flag_south_sudan:I

    return v0

    .line 802
    :pswitch_29
    sget v0, Lcom/hbb20/R$drawable;->flag_suriname:I

    return v0

    .line 800
    :pswitch_2a
    sget v0, Lcom/hbb20/R$drawable;->flag_somalia:I

    return v0

    .line 798
    :pswitch_2b
    sget v0, Lcom/hbb20/R$drawable;->flag_senegal:I

    return v0

    .line 796
    :pswitch_2c
    sget v0, Lcom/hbb20/R$drawable;->flag_san_marino:I

    return v0

    .line 794
    :pswitch_2d
    sget v0, Lcom/hbb20/R$drawable;->flag_sierra_leone:I

    return v0

    .line 792
    :pswitch_2e
    sget v0, Lcom/hbb20/R$drawable;->flag_slovakia:I

    return v0

    .line 790
    :pswitch_2f
    sget v0, Lcom/hbb20/R$drawable;->flag_slovenia:I

    return v0

    .line 788
    :pswitch_30
    sget v0, Lcom/hbb20/R$drawable;->flag_saint_helena:I

    return v0

    .line 786
    :pswitch_31
    sget v0, Lcom/hbb20/R$drawable;->flag_singapore:I

    return v0

    .line 784
    :pswitch_32
    sget v0, Lcom/hbb20/R$drawable;->flag_sweden:I

    return v0

    .line 782
    :pswitch_33
    sget v0, Lcom/hbb20/R$drawable;->flag_sudan:I

    return v0

    .line 780
    :pswitch_34
    sget v0, Lcom/hbb20/R$drawable;->flag_seychelles:I

    return v0

    .line 778
    :pswitch_35
    sget v0, Lcom/hbb20/R$drawable;->flag_soloman_islands:I

    return v0

    .line 776
    :pswitch_36
    sget v0, Lcom/hbb20/R$drawable;->flag_saudi_arabia:I

    return v0

    .line 774
    :pswitch_37
    sget v0, Lcom/hbb20/R$drawable;->flag_rwanda:I

    return v0

    .line 772
    :pswitch_38
    sget v0, Lcom/hbb20/R$drawable;->flag_russian_federation:I

    return v0

    .line 770
    :pswitch_39
    sget v0, Lcom/hbb20/R$drawable;->flag_serbia:I

    return v0

    .line 768
    :pswitch_3a
    sget v0, Lcom/hbb20/R$drawable;->flag_romania:I

    return v0

    .line 766
    :pswitch_3b
    sget v0, Lcom/hbb20/R$drawable;->flag_martinique:I

    return v0

    .line 764
    :pswitch_3c
    sget v0, Lcom/hbb20/R$drawable;->flag_qatar:I

    return v0

    .line 762
    :pswitch_3d
    sget v0, Lcom/hbb20/R$drawable;->flag_paraguay:I

    return v0

    .line 760
    :pswitch_3e
    sget v0, Lcom/hbb20/R$drawable;->flag_palau:I

    return v0

    .line 758
    :pswitch_3f
    sget v0, Lcom/hbb20/R$drawable;->flag_portugal:I

    return v0

    .line 756
    :pswitch_40
    sget v0, Lcom/hbb20/R$drawable;->flag_palestine:I

    return v0

    .line 754
    :pswitch_41
    sget v0, Lcom/hbb20/R$drawable;->flag_puerto_rico:I

    return v0

    .line 752
    :pswitch_42
    sget v0, Lcom/hbb20/R$drawable;->flag_pitcairn_islands:I

    return v0

    .line 750
    :pswitch_43
    sget v0, Lcom/hbb20/R$drawable;->flag_saint_pierre:I

    return v0

    .line 748
    :pswitch_44
    sget v0, Lcom/hbb20/R$drawable;->flag_poland:I

    return v0

    .line 746
    :pswitch_45
    sget v0, Lcom/hbb20/R$drawable;->flag_pakistan:I

    return v0

    .line 744
    :pswitch_46
    sget v0, Lcom/hbb20/R$drawable;->flag_philippines:I

    return v0

    .line 742
    :pswitch_47
    sget v0, Lcom/hbb20/R$drawable;->flag_papua_new_guinea:I

    return v0

    .line 740
    :pswitch_48
    sget v0, Lcom/hbb20/R$drawable;->flag_french_polynesia:I

    return v0

    .line 738
    :pswitch_49
    sget v0, Lcom/hbb20/R$drawable;->flag_peru:I

    return v0

    .line 736
    :pswitch_4a
    sget v0, Lcom/hbb20/R$drawable;->flag_panama:I

    return v0

    .line 734
    :pswitch_4b
    sget v0, Lcom/hbb20/R$drawable;->flag_oman:I

    return v0

    .line 732
    :pswitch_4c
    sget v0, Lcom/hbb20/R$drawable;->flag_new_zealand:I

    return v0

    .line 730
    :pswitch_4d
    sget v0, Lcom/hbb20/R$drawable;->flag_niue:I

    return v0

    .line 728
    :pswitch_4e
    sget v0, Lcom/hbb20/R$drawable;->flag_nauru:I

    return v0

    .line 726
    :pswitch_4f
    sget v0, Lcom/hbb20/R$drawable;->flag_nepal:I

    return v0

    .line 724
    :pswitch_50
    sget v0, Lcom/hbb20/R$drawable;->flag_norway:I

    return v0

    .line 722
    :pswitch_51
    sget v0, Lcom/hbb20/R$drawable;->flag_netherlands:I

    return v0

    .line 720
    :pswitch_52
    sget v0, Lcom/hbb20/R$drawable;->flag_nicaragua:I

    return v0

    .line 718
    :pswitch_53
    sget v0, Lcom/hbb20/R$drawable;->flag_nigeria:I

    return v0

    .line 716
    :pswitch_54
    sget v0, Lcom/hbb20/R$drawable;->flag_norfolk_island:I

    return v0

    .line 714
    :pswitch_55
    sget v0, Lcom/hbb20/R$drawable;->flag_niger:I

    return v0

    .line 712
    :pswitch_56
    sget v0, Lcom/hbb20/R$drawable;->flag_new_caledonia:I

    return v0

    .line 710
    :pswitch_57
    sget v0, Lcom/hbb20/R$drawable;->flag_namibia:I

    return v0

    .line 708
    :pswitch_58
    sget v0, Lcom/hbb20/R$drawable;->flag_mozambique:I

    return v0

    .line 706
    :pswitch_59
    sget v0, Lcom/hbb20/R$drawable;->flag_malaysia:I

    return v0

    .line 704
    :pswitch_5a
    sget v0, Lcom/hbb20/R$drawable;->flag_mexico:I

    return v0

    .line 702
    :pswitch_5b
    sget v0, Lcom/hbb20/R$drawable;->flag_malawi:I

    return v0

    .line 700
    :pswitch_5c
    sget v0, Lcom/hbb20/R$drawable;->flag_maldives:I

    return v0

    .line 698
    :pswitch_5d
    sget v0, Lcom/hbb20/R$drawable;->flag_mauritius:I

    return v0

    .line 696
    :pswitch_5e
    sget v0, Lcom/hbb20/R$drawable;->flag_malta:I

    return v0

    .line 694
    :pswitch_5f
    sget v0, Lcom/hbb20/R$drawable;->flag_montserrat:I

    return v0

    .line 692
    :pswitch_60
    sget v0, Lcom/hbb20/R$drawable;->flag_mauritania:I

    return v0

    .line 690
    :pswitch_61
    sget v0, Lcom/hbb20/R$drawable;->flag_martinique:I

    return v0

    .line 688
    :pswitch_62
    sget v0, Lcom/hbb20/R$drawable;->flag_northern_mariana_islands:I

    return v0

    .line 686
    :pswitch_63
    sget v0, Lcom/hbb20/R$drawable;->flag_macao:I

    return v0

    .line 684
    :pswitch_64
    sget v0, Lcom/hbb20/R$drawable;->flag_mongolia:I

    return v0

    .line 682
    :pswitch_65
    sget v0, Lcom/hbb20/R$drawable;->flag_myanmar:I

    return v0

    .line 680
    :pswitch_66
    sget v0, Lcom/hbb20/R$drawable;->flag_mali:I

    return v0

    .line 678
    :pswitch_67
    sget v0, Lcom/hbb20/R$drawable;->flag_macedonia:I

    return v0

    .line 676
    :pswitch_68
    sget v0, Lcom/hbb20/R$drawable;->flag_marshall_islands:I

    return v0

    .line 674
    :pswitch_69
    sget v0, Lcom/hbb20/R$drawable;->flag_madagascar:I

    return v0

    .line 672
    :pswitch_6a
    sget v0, Lcom/hbb20/R$drawable;->flag_saint_martin:I

    return v0

    .line 670
    :pswitch_6b
    sget v0, Lcom/hbb20/R$drawable;->flag_of_montenegro:I

    return v0

    .line 668
    :pswitch_6c
    sget v0, Lcom/hbb20/R$drawable;->flag_moldova:I

    return v0

    .line 666
    :pswitch_6d
    sget v0, Lcom/hbb20/R$drawable;->flag_monaco:I

    return v0

    .line 664
    :pswitch_6e
    sget v0, Lcom/hbb20/R$drawable;->flag_morocco:I

    return v0

    .line 662
    :pswitch_6f
    sget v0, Lcom/hbb20/R$drawable;->flag_libya:I

    return v0

    .line 660
    :pswitch_70
    sget v0, Lcom/hbb20/R$drawable;->flag_latvia:I

    return v0

    .line 658
    :pswitch_71
    sget v0, Lcom/hbb20/R$drawable;->flag_luxembourg:I

    return v0

    .line 656
    :pswitch_72
    sget v0, Lcom/hbb20/R$drawable;->flag_lithuania:I

    return v0

    .line 654
    :pswitch_73
    sget v0, Lcom/hbb20/R$drawable;->flag_lesotho:I

    return v0

    .line 652
    :pswitch_74
    sget v0, Lcom/hbb20/R$drawable;->flag_liberia:I

    return v0

    .line 650
    :pswitch_75
    sget v0, Lcom/hbb20/R$drawable;->flag_sri_lanka:I

    return v0

    .line 648
    :pswitch_76
    sget v0, Lcom/hbb20/R$drawable;->flag_liechtenstein:I

    return v0

    .line 646
    :pswitch_77
    sget v0, Lcom/hbb20/R$drawable;->flag_saint_lucia:I

    return v0

    .line 644
    :pswitch_78
    sget v0, Lcom/hbb20/R$drawable;->flag_lebanon:I

    return v0

    .line 642
    :pswitch_79
    sget v0, Lcom/hbb20/R$drawable;->flag_laos:I

    return v0

    .line 640
    :pswitch_7a
    sget v0, Lcom/hbb20/R$drawable;->flag_kazakhstan:I

    return v0

    .line 638
    :pswitch_7b
    sget v0, Lcom/hbb20/R$drawable;->flag_cayman_islands:I

    return v0

    .line 636
    :pswitch_7c
    sget v0, Lcom/hbb20/R$drawable;->flag_kuwait:I

    return v0

    .line 634
    :pswitch_7d
    sget v0, Lcom/hbb20/R$drawable;->flag_south_korea:I

    return v0

    .line 632
    :pswitch_7e
    sget v0, Lcom/hbb20/R$drawable;->flag_north_korea:I

    return v0

    .line 630
    :pswitch_7f
    sget v0, Lcom/hbb20/R$drawable;->flag_saint_kitts_and_nevis:I

    return v0

    .line 628
    :pswitch_80
    sget v0, Lcom/hbb20/R$drawable;->flag_comoros:I

    return v0

    .line 626
    :pswitch_81
    sget v0, Lcom/hbb20/R$drawable;->flag_kiribati:I

    return v0

    .line 624
    :pswitch_82
    sget v0, Lcom/hbb20/R$drawable;->flag_cambodia:I

    return v0

    .line 622
    :pswitch_83
    sget v0, Lcom/hbb20/R$drawable;->flag_kyrgyzstan:I

    return v0

    .line 620
    :pswitch_84
    sget v0, Lcom/hbb20/R$drawable;->flag_kenya:I

    return v0

    .line 618
    :pswitch_85
    sget v0, Lcom/hbb20/R$drawable;->flag_japan:I

    return v0

    .line 616
    :pswitch_86
    sget v0, Lcom/hbb20/R$drawable;->flag_jordan:I

    return v0

    .line 614
    :pswitch_87
    sget v0, Lcom/hbb20/R$drawable;->flag_jamaica:I

    return v0

    .line 612
    :pswitch_88
    sget v0, Lcom/hbb20/R$drawable;->flag_jersey:I

    return v0

    .line 610
    :pswitch_89
    sget v0, Lcom/hbb20/R$drawable;->flag_italy:I

    return v0

    .line 608
    :pswitch_8a
    sget v0, Lcom/hbb20/R$drawable;->flag_iran:I

    return v0

    .line 606
    :pswitch_8b
    sget v0, Lcom/hbb20/R$drawable;->flag_iraq_new:I

    return v0

    .line 604
    :pswitch_8c
    sget v0, Lcom/hbb20/R$drawable;->flag_british_indian_ocean_territory:I

    return v0

    .line 602
    :pswitch_8d
    sget v0, Lcom/hbb20/R$drawable;->flag_india:I

    return v0

    .line 600
    :pswitch_8e
    sget v0, Lcom/hbb20/R$drawable;->flag_iceland:I

    return v0

    .line 598
    :pswitch_8f
    sget v0, Lcom/hbb20/R$drawable;->flag_isleof_man:I

    return v0

    .line 596
    :pswitch_90
    sget v0, Lcom/hbb20/R$drawable;->flag_israel:I

    return v0

    .line 594
    :pswitch_91
    sget v0, Lcom/hbb20/R$drawable;->flag_ireland:I

    return v0

    .line 592
    :pswitch_92
    sget v0, Lcom/hbb20/R$drawable;->flag_indonesia:I

    return v0

    .line 590
    :pswitch_93
    sget v0, Lcom/hbb20/R$drawable;->flag_hungary:I

    return v0

    .line 588
    :pswitch_94
    sget v0, Lcom/hbb20/R$drawable;->flag_haiti:I

    return v0

    .line 586
    :pswitch_95
    sget v0, Lcom/hbb20/R$drawable;->flag_croatia:I

    return v0

    .line 584
    :pswitch_96
    sget v0, Lcom/hbb20/R$drawable;->flag_honduras:I

    return v0

    .line 582
    :pswitch_97
    sget v0, Lcom/hbb20/R$drawable;->flag_hong_kong:I

    return v0

    .line 580
    :pswitch_98
    sget v0, Lcom/hbb20/R$drawable;->flag_guyana:I

    return v0

    .line 578
    :pswitch_99
    sget v0, Lcom/hbb20/R$drawable;->flag_guinea_bissau:I

    return v0

    .line 576
    :pswitch_9a
    sget v0, Lcom/hbb20/R$drawable;->flag_guam:I

    return v0

    .line 574
    :pswitch_9b
    sget v0, Lcom/hbb20/R$drawable;->flag_guatemala:I

    return v0

    .line 572
    :pswitch_9c
    sget v0, Lcom/hbb20/R$drawable;->flag_greece:I

    return v0

    .line 570
    :pswitch_9d
    sget v0, Lcom/hbb20/R$drawable;->flag_equatorial_guinea:I

    return v0

    .line 568
    :pswitch_9e
    sget v0, Lcom/hbb20/R$drawable;->flag_guadeloupe:I

    return v0

    .line 566
    :pswitch_9f
    sget v0, Lcom/hbb20/R$drawable;->flag_guinea:I

    return v0

    .line 564
    :pswitch_a0
    sget v0, Lcom/hbb20/R$drawable;->flag_gambia:I

    return v0

    .line 562
    :pswitch_a1
    sget v0, Lcom/hbb20/R$drawable;->flag_greenland:I

    return v0

    .line 560
    :pswitch_a2
    sget v0, Lcom/hbb20/R$drawable;->flag_gibraltar:I

    return v0

    .line 558
    :pswitch_a3
    sget v0, Lcom/hbb20/R$drawable;->flag_ghana:I

    return v0

    .line 556
    :pswitch_a4
    sget v0, Lcom/hbb20/R$drawable;->flag_guernsey:I

    return v0

    .line 554
    :pswitch_a5
    sget v0, Lcom/hbb20/R$drawable;->flag_guyane:I

    return v0

    .line 552
    :pswitch_a6
    sget v0, Lcom/hbb20/R$drawable;->flag_georgia:I

    return v0

    .line 550
    :pswitch_a7
    sget v0, Lcom/hbb20/R$drawable;->flag_grenada:I

    return v0

    .line 548
    :pswitch_a8
    sget v0, Lcom/hbb20/R$drawable;->flag_united_kingdom:I

    return v0

    .line 546
    :pswitch_a9
    sget v0, Lcom/hbb20/R$drawable;->flag_gabon:I

    return v0

    .line 544
    :pswitch_aa
    sget v0, Lcom/hbb20/R$drawable;->flag_france:I

    return v0

    .line 542
    :pswitch_ab
    sget v0, Lcom/hbb20/R$drawable;->flag_faroe_islands:I

    return v0

    .line 540
    :pswitch_ac
    sget v0, Lcom/hbb20/R$drawable;->flag_micronesia:I

    return v0

    .line 538
    :pswitch_ad
    sget v0, Lcom/hbb20/R$drawable;->flag_falkland_islands:I

    return v0

    .line 536
    :pswitch_ae
    sget v0, Lcom/hbb20/R$drawable;->flag_fiji:I

    return v0

    .line 534
    :pswitch_af
    sget v0, Lcom/hbb20/R$drawable;->flag_finland:I

    return v0

    .line 532
    :pswitch_b0
    sget v0, Lcom/hbb20/R$drawable;->flag_ethiopia:I

    return v0

    .line 530
    :pswitch_b1
    sget v0, Lcom/hbb20/R$drawable;->flag_spain:I

    return v0

    .line 528
    :pswitch_b2
    sget v0, Lcom/hbb20/R$drawable;->flag_eritrea:I

    return v0

    .line 526
    :pswitch_b3
    sget v0, Lcom/hbb20/R$drawable;->flag_egypt:I

    return v0

    .line 524
    :pswitch_b4
    sget v0, Lcom/hbb20/R$drawable;->flag_estonia:I

    return v0

    .line 522
    :pswitch_b5
    sget v0, Lcom/hbb20/R$drawable;->flag_ecuador:I

    return v0

    .line 520
    :pswitch_b6
    sget v0, Lcom/hbb20/R$drawable;->flag_algeria:I

    return v0

    .line 518
    :pswitch_b7
    sget v0, Lcom/hbb20/R$drawable;->flag_dominican_republic:I

    return v0

    .line 516
    :pswitch_b8
    sget v0, Lcom/hbb20/R$drawable;->flag_dominica:I

    return v0

    .line 514
    :pswitch_b9
    sget v0, Lcom/hbb20/R$drawable;->flag_denmark:I

    return v0

    .line 512
    :pswitch_ba
    sget v0, Lcom/hbb20/R$drawable;->flag_djibouti:I

    return v0

    .line 510
    :pswitch_bb
    sget v0, Lcom/hbb20/R$drawable;->flag_germany:I

    return v0

    .line 508
    :pswitch_bc
    sget v0, Lcom/hbb20/R$drawable;->flag_czech_republic:I

    return v0

    .line 506
    :pswitch_bd
    sget v0, Lcom/hbb20/R$drawable;->flag_cyprus:I

    return v0

    .line 504
    :pswitch_be
    sget v0, Lcom/hbb20/R$drawable;->flag_christmas_island:I

    return v0

    .line 502
    :pswitch_bf
    sget v0, Lcom/hbb20/R$drawable;->flag_curacao:I

    return v0

    .line 500
    :pswitch_c0
    sget v0, Lcom/hbb20/R$drawable;->flag_cape_verde:I

    return v0

    .line 498
    :pswitch_c1
    sget v0, Lcom/hbb20/R$drawable;->flag_cuba:I

    return v0

    .line 496
    :pswitch_c2
    sget v0, Lcom/hbb20/R$drawable;->flag_costa_rica:I

    return v0

    .line 494
    :pswitch_c3
    sget v0, Lcom/hbb20/R$drawable;->flag_colombia:I

    return v0

    .line 492
    :pswitch_c4
    sget v0, Lcom/hbb20/R$drawable;->flag_china:I

    return v0

    .line 490
    :pswitch_c5
    sget v0, Lcom/hbb20/R$drawable;->flag_cameroon:I

    return v0

    .line 488
    :pswitch_c6
    sget v0, Lcom/hbb20/R$drawable;->flag_chile:I

    return v0

    .line 486
    :pswitch_c7
    sget v0, Lcom/hbb20/R$drawable;->flag_cook_islands:I

    return v0

    .line 484
    :pswitch_c8
    sget v0, Lcom/hbb20/R$drawable;->flag_cote_divoire:I

    return v0

    .line 482
    :pswitch_c9
    sget v0, Lcom/hbb20/R$drawable;->flag_switzerland:I

    return v0

    .line 480
    :pswitch_ca
    sget v0, Lcom/hbb20/R$drawable;->flag_republic_of_the_congo:I

    return v0

    .line 478
    :pswitch_cb
    sget v0, Lcom/hbb20/R$drawable;->flag_central_african_republic:I

    return v0

    .line 476
    :pswitch_cc
    sget v0, Lcom/hbb20/R$drawable;->flag_democratic_republic_of_the_congo:I

    return v0

    .line 474
    :pswitch_cd
    sget v0, Lcom/hbb20/R$drawable;->flag_cocos:I

    return v0

    .line 472
    :pswitch_ce
    sget v0, Lcom/hbb20/R$drawable;->flag_canada:I

    return v0

    .line 470
    :pswitch_cf
    sget v0, Lcom/hbb20/R$drawable;->flag_belize:I

    return v0

    .line 468
    :pswitch_d0
    sget v0, Lcom/hbb20/R$drawable;->flag_belarus:I

    return v0

    .line 466
    :pswitch_d1
    sget v0, Lcom/hbb20/R$drawable;->flag_botswana:I

    return v0

    .line 464
    :pswitch_d2
    sget v0, Lcom/hbb20/R$drawable;->flag_bhutan:I

    return v0

    .line 462
    :pswitch_d3
    sget v0, Lcom/hbb20/R$drawable;->flag_bahamas:I

    return v0

    .line 460
    :pswitch_d4
    sget v0, Lcom/hbb20/R$drawable;->flag_brazil:I

    return v0

    .line 458
    :pswitch_d5
    sget v0, Lcom/hbb20/R$drawable;->flag_bolivia:I

    return v0

    .line 456
    :pswitch_d6
    sget v0, Lcom/hbb20/R$drawable;->flag_brunei:I

    return v0

    .line 454
    :pswitch_d7
    sget v0, Lcom/hbb20/R$drawable;->flag_bermuda:I

    return v0

    .line 452
    :pswitch_d8
    sget v0, Lcom/hbb20/R$drawable;->flag_saint_barthelemy:I

    return v0

    .line 450
    :pswitch_d9
    sget v0, Lcom/hbb20/R$drawable;->flag_benin:I

    return v0

    .line 448
    :pswitch_da
    sget v0, Lcom/hbb20/R$drawable;->flag_burundi:I

    return v0

    .line 446
    :pswitch_db
    sget v0, Lcom/hbb20/R$drawable;->flag_bahrain:I

    return v0

    .line 444
    :pswitch_dc
    sget v0, Lcom/hbb20/R$drawable;->flag_bulgaria:I

    return v0

    .line 442
    :pswitch_dd
    sget v0, Lcom/hbb20/R$drawable;->flag_burkina_faso:I

    return v0

    .line 440
    :pswitch_de
    sget v0, Lcom/hbb20/R$drawable;->flag_belgium:I

    return v0

    .line 438
    :pswitch_df
    sget v0, Lcom/hbb20/R$drawable;->flag_bangladesh:I

    return v0

    .line 436
    :pswitch_e0
    sget v0, Lcom/hbb20/R$drawable;->flag_barbados:I

    return v0

    .line 434
    :pswitch_e1
    sget v0, Lcom/hbb20/R$drawable;->flag_bosnia:I

    return v0

    .line 432
    :pswitch_e2
    sget v0, Lcom/hbb20/R$drawable;->flag_azerbaijan:I

    return v0

    .line 430
    :pswitch_e3
    sget v0, Lcom/hbb20/R$drawable;->flag_aland:I

    return v0

    .line 428
    :pswitch_e4
    sget v0, Lcom/hbb20/R$drawable;->flag_aruba:I

    return v0

    .line 426
    :pswitch_e5
    sget v0, Lcom/hbb20/R$drawable;->flag_australia:I

    return v0

    .line 424
    :pswitch_e6
    sget v0, Lcom/hbb20/R$drawable;->flag_austria:I

    return v0

    .line 422
    :pswitch_e7
    sget v0, Lcom/hbb20/R$drawable;->flag_american_samoa:I

    return v0

    .line 420
    :pswitch_e8
    sget v0, Lcom/hbb20/R$drawable;->flag_argentina:I

    return v0

    .line 418
    :pswitch_e9
    sget v0, Lcom/hbb20/R$drawable;->flag_antarctica:I

    return v0

    .line 416
    :pswitch_ea
    sget v0, Lcom/hbb20/R$drawable;->flag_angola:I

    return v0

    .line 414
    :pswitch_eb
    sget v0, Lcom/hbb20/R$drawable;->flag_armenia:I

    return v0

    .line 412
    :pswitch_ec
    sget v0, Lcom/hbb20/R$drawable;->flag_albania:I

    return v0

    .line 410
    :pswitch_ed
    sget v0, Lcom/hbb20/R$drawable;->flag_anguilla:I

    return v0

    .line 408
    :pswitch_ee
    sget v0, Lcom/hbb20/R$drawable;->flag_antigua_and_barbuda:I

    return v0

    .line 406
    :pswitch_ef
    sget v0, Lcom/hbb20/R$drawable;->flag_afghanistan:I

    return v0

    .line 404
    :pswitch_f0
    sget v0, Lcom/hbb20/R$drawable;->flag_uae:I

    return v0

    .line 402
    :pswitch_f1
    sget v0, Lcom/hbb20/R$drawable;->flag_andorra:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0xc23 -> :sswitch_f1
        0xc24 -> :sswitch_f0
        0xc25 -> :sswitch_ef
        0xc26 -> :sswitch_ee
        0xc28 -> :sswitch_ed
        0xc2b -> :sswitch_ec
        0xc2c -> :sswitch_eb
        0xc2e -> :sswitch_ea
        0xc30 -> :sswitch_e9
        0xc31 -> :sswitch_e8
        0xc32 -> :sswitch_e7
        0xc33 -> :sswitch_e6
        0xc34 -> :sswitch_e5
        0xc36 -> :sswitch_e4
        0xc37 -> :sswitch_e3
        0xc39 -> :sswitch_e2
        0xc3f -> :sswitch_e1
        0xc40 -> :sswitch_e0
        0xc42 -> :sswitch_df
        0xc43 -> :sswitch_de
        0xc44 -> :sswitch_dd
        0xc45 -> :sswitch_dc
        0xc46 -> :sswitch_db
        0xc47 -> :sswitch_da
        0xc48 -> :sswitch_d9
        0xc4a -> :sswitch_d8
        0xc4b -> :sswitch_d7
        0xc4c -> :sswitch_d6
        0xc4d -> :sswitch_d5
        0xc50 -> :sswitch_d4
        0xc51 -> :sswitch_d3
        0xc52 -> :sswitch_d2
        0xc55 -> :sswitch_d1
        0xc57 -> :sswitch_d0
        0xc58 -> :sswitch_cf
        0xc5e -> :sswitch_ce
        0xc60 -> :sswitch_cd
        0xc61 -> :sswitch_cc
        0xc63 -> :sswitch_cb
        0xc64 -> :sswitch_ca
        0xc65 -> :sswitch_c9
        0xc66 -> :sswitch_c8
        0xc68 -> :sswitch_c7
        0xc69 -> :sswitch_c6
        0xc6a -> :sswitch_c5
        0xc6b -> :sswitch_c4
        0xc6c -> :sswitch_c3
        0xc6f -> :sswitch_c2
        0xc72 -> :sswitch_c1
        0xc73 -> :sswitch_c0
        0xc74 -> :sswitch_bf
        0xc75 -> :sswitch_be
        0xc76 -> :sswitch_bd
        0xc77 -> :sswitch_bc
        0xc81 -> :sswitch_bb
        0xc86 -> :sswitch_ba
        0xc87 -> :sswitch_b9
        0xc89 -> :sswitch_b8
        0xc8b -> :sswitch_b7
        0xc96 -> :sswitch_b6
        0xc9e -> :sswitch_b5
        0xca0 -> :sswitch_b4
        0xca2 -> :sswitch_b3
        0xcad -> :sswitch_b2
        0xcae -> :sswitch_b1
        0xcaf -> :sswitch_b0
        0xcc3 -> :sswitch_af
        0xcc4 -> :sswitch_ae
        0xcc5 -> :sswitch_ad
        0xcc7 -> :sswitch_ac
        0xcc9 -> :sswitch_ab
        0xccc -> :sswitch_aa
        0xcda -> :sswitch_a9
        0xcdb -> :sswitch_a8
        0xcdd -> :sswitch_a7
        0xcde -> :sswitch_a6
        0xcdf -> :sswitch_a5
        0xce0 -> :sswitch_a4
        0xce1 -> :sswitch_a3
        0xce2 -> :sswitch_a2
        0xce5 -> :sswitch_a1
        0xce6 -> :sswitch_a0
        0xce7 -> :sswitch_9f
        0xce9 -> :sswitch_9e
        0xcea -> :sswitch_9d
        0xceb -> :sswitch_9c
        0xced -> :sswitch_9b
        0xcee -> :sswitch_9a
        0xcf0 -> :sswitch_99
        0xcf2 -> :sswitch_98
        0xd03 -> :sswitch_97
        0xd06 -> :sswitch_96
        0xd0a -> :sswitch_95
        0xd0c -> :sswitch_94
        0xd0d -> :sswitch_93
        0xd1b -> :sswitch_92
        0xd1c -> :sswitch_91
        0xd23 -> :sswitch_90
        0xd24 -> :sswitch_8f
        0xd25 -> :sswitch_8e
        0xd26 -> :sswitch_8d
        0xd28 -> :sswitch_8c
        0xd29 -> :sswitch_8b
        0xd2a -> :sswitch_8a
        0xd2b -> :sswitch_89
        0xd3b -> :sswitch_88
        0xd43 -> :sswitch_87
        0xd45 -> :sswitch_86
        0xd46 -> :sswitch_85
        0xd5a -> :sswitch_84
        0xd5c -> :sswitch_83
        0xd5d -> :sswitch_82
        0xd5e -> :sswitch_81
        0xd62 -> :sswitch_80
        0xd63 -> :sswitch_7f
        0xd65 -> :sswitch_7e
        0xd67 -> :sswitch_7d
        0xd6c -> :sswitch_7c
        0xd6e -> :sswitch_7b
        0xd6f -> :sswitch_7a
        0xd75 -> :sswitch_79
        0xd76 -> :sswitch_78
        0xd77 -> :sswitch_77
        0xd7d -> :sswitch_76
        0xd7f -> :sswitch_75
        0xd86 -> :sswitch_74
        0xd87 -> :sswitch_73
        0xd88 -> :sswitch_72
        0xd89 -> :sswitch_71
        0xd8a -> :sswitch_70
        0xd8d -> :sswitch_6f
        0xd94 -> :sswitch_6e
        0xd96 -> :sswitch_6d
        0xd97 -> :sswitch_6c
        0xd98 -> :sswitch_6b
        0xd99 -> :sswitch_6a
        0xd9a -> :sswitch_69
        0xd9b -> :sswitch_68
        0xd9e -> :sswitch_67
        0xd9f -> :sswitch_66
        0xda0 -> :sswitch_65
        0xda1 -> :sswitch_64
        0xda2 -> :sswitch_63
        0xda3 -> :sswitch_62
        0xda4 -> :sswitch_61
        0xda5 -> :sswitch_60
        0xda6 -> :sswitch_5f
        0xda7 -> :sswitch_5e
        0xda8 -> :sswitch_5d
        0xda9 -> :sswitch_5c
        0xdaa -> :sswitch_5b
        0xdab -> :sswitch_5a
        0xdac -> :sswitch_59
        0xdad -> :sswitch_58
        0xdb3 -> :sswitch_57
        0xdb5 -> :sswitch_56
        0xdb7 -> :sswitch_55
        0xdb8 -> :sswitch_54
        0xdb9 -> :sswitch_53
        0xdbb -> :sswitch_52
        0xdbe -> :sswitch_51
        0xdc1 -> :sswitch_50
        0xdc2 -> :sswitch_4f
        0xdc4 -> :sswitch_4e
        0xdc7 -> :sswitch_4d
        0xdcc -> :sswitch_4c
        0xdde -> :sswitch_4b
        0xdf1 -> :sswitch_4a
        0xdf5 -> :sswitch_49
        0xdf6 -> :sswitch_48
        0xdf7 -> :sswitch_47
        0xdf8 -> :sswitch_46
        0xdfb -> :sswitch_45
        0xdfc -> :sswitch_44
        0xdfd -> :sswitch_43
        0xdfe -> :sswitch_42
        0xe02 -> :sswitch_41
        0xe03 -> :sswitch_40
        0xe04 -> :sswitch_3f
        0xe07 -> :sswitch_3e
        0xe09 -> :sswitch_3d
        0xe10 -> :sswitch_3c
        0xe33 -> :sswitch_3b
        0xe3d -> :sswitch_3a
        0xe41 -> :sswitch_39
        0xe43 -> :sswitch_38
        0xe45 -> :sswitch_37
        0xe4e -> :sswitch_36
        0xe4f -> :sswitch_35
        0xe50 -> :sswitch_34
        0xe51 -> :sswitch_33
        0xe52 -> :sswitch_32
        0xe54 -> :sswitch_31
        0xe55 -> :sswitch_30
        0xe56 -> :sswitch_2f
        0xe58 -> :sswitch_2e
        0xe59 -> :sswitch_2d
        0xe5a -> :sswitch_2c
        0xe5b -> :sswitch_2b
        0xe5c -> :sswitch_2a
        0xe5f -> :sswitch_29
        0xe60 -> :sswitch_28
        0xe61 -> :sswitch_27
        0xe63 -> :sswitch_26
        0xe65 -> :sswitch_25
        0xe66 -> :sswitch_24
        0xe67 -> :sswitch_23
        0xe6f -> :sswitch_22
        0xe70 -> :sswitch_21
        0xe73 -> :sswitch_20
        0xe74 -> :sswitch_1f
        0xe76 -> :sswitch_1e
        0xe77 -> :sswitch_1d
        0xe78 -> :sswitch_1c
        0xe79 -> :sswitch_1b
        0xe7a -> :sswitch_1a
        0xe7b -> :sswitch_19
        0xe7e -> :sswitch_18
        0xe80 -> :sswitch_17
        0xe82 -> :sswitch_16
        0xe83 -> :sswitch_15
        0xe86 -> :sswitch_14
        0xe8c -> :sswitch_13
        0xe92 -> :sswitch_12
        0xe9e -> :sswitch_11
        0xea4 -> :sswitch_10
        0xea5 -> :sswitch_f
        0xeab -> :sswitch_e
        0xead -> :sswitch_d
        0xeaf -> :sswitch_c
        0xeb1 -> :sswitch_b
        0xeb3 -> :sswitch_a
        0xeb8 -> :sswitch_9
        0xebf -> :sswitch_8
        0xecf -> :sswitch_7
        0xedc -> :sswitch_6
        0xef3 -> :sswitch_5
        0xf0c -> :sswitch_4
        0xf1b -> :sswitch_3
        0xf27 -> :sswitch_2
        0xf33 -> :sswitch_1
        0xf3d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLibraryMasterCountriesEnglish()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 1419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1420
    .local v0, "countries":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ad"

    const-string v4, "376"

    const-string v5, "Andorra"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1421
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ae"

    const-string v4, "971"

    const-string v5, "United Arab Emirates (UAE)"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1422
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "af"

    const-string v4, "93"

    const-string v5, "Afghanistan"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1423
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ag"

    const-string v4, "1"

    const-string v5, "Antigua and Barbuda"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ai"

    const-string v5, "Anguilla"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1425
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "al"

    const-string v5, "355"

    const-string v6, "Albania"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "am"

    const-string v5, "374"

    const-string v6, "Armenia"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ao"

    const-string v5, "244"

    const-string v6, "Angola"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1428
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "aq"

    const-string v5, "672"

    const-string v6, "Antarctica"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ar"

    const-string v6, "54"

    const-string v7, "Argentina"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "as"

    const-string v6, "American Samoa"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1431
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "at"

    const-string v6, "43"

    const-string v7, "Austria"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "au"

    const-string v6, "61"

    const-string v7, "Australia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "aw"

    const-string v7, "297"

    const-string v8, "Aruba"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1434
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ax"

    const-string v7, "358"

    const-string v8, "\u00c5land Islands"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1435
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "az"

    const-string v8, "994"

    const-string v9, "Azerbaijan"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1436
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ba"

    const-string v8, "387"

    const-string v9, "Bosnia And Herzegovina"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bb"

    const-string v8, "Barbados"

    invoke-direct {v1, v3, v4, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1438
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bd"

    const-string v8, "880"

    const-string v9, "Bangladesh"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1439
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "be"

    const-string v8, "32"

    const-string v9, "Belgium"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1440
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bf"

    const-string v8, "226"

    const-string v9, "Burkina Faso"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bg"

    const-string v8, "359"

    const-string v9, "Bulgaria"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bh"

    const-string v8, "973"

    const-string v9, "Bahrain"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bi"

    const-string v8, "257"

    const-string v9, "Burundi"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bj"

    const-string v8, "229"

    const-string v9, "Benin"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1445
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bl"

    const-string v8, "590"

    const-string v9, "Saint Barth\u00e9lemy"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1446
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bm"

    const-string v9, "Bermuda"

    invoke-direct {v1, v3, v4, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bn"

    const-string v9, "673"

    const-string v10, "Brunei Darussalam"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1448
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bo"

    const-string v9, "591"

    const-string v10, "Bolivia, Plurinational State Of"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "br"

    const-string v9, "55"

    const-string v10, "Brazil"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1450
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bs"

    const-string v9, "Bahamas"

    invoke-direct {v1, v3, v4, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1451
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bt"

    const-string v9, "975"

    const-string v10, "Bhutan"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1452
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bw"

    const-string v9, "267"

    const-string v10, "Botswana"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1453
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "by"

    const-string v9, "375"

    const-string v10, "Belarus"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1454
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bz"

    const-string v9, "501"

    const-string v10, "Belize"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1455
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ca"

    const-string v9, "Canada"

    invoke-direct {v1, v3, v4, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cc"

    const-string v9, "Cocos (keeling) Islands"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cd"

    const-string v9, "243"

    const-string v10, "Congo, The Democratic Republic Of The"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1458
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cf"

    const-string v9, "236"

    const-string v10, "Central African Republic"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cg"

    const-string v9, "242"

    const-string v10, "Congo"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ch"

    const-string v9, "41"

    const-string v10, "Switzerland"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ci"

    const-string v9, "225"

    const-string v10, "C\u00f4te D\'ivoire"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ck"

    const-string v9, "682"

    const-string v10, "Cook Islands"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cl"

    const-string v9, "56"

    const-string v10, "Chile"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1464
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cm"

    const-string v9, "237"

    const-string v10, "Cameroon"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cn"

    const-string v9, "86"

    const-string v10, "China"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1466
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "co"

    const-string v9, "57"

    const-string v10, "Colombia"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1467
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cr"

    const-string v9, "506"

    const-string v10, "Costa Rica"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1468
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cu"

    const-string v9, "53"

    const-string v10, "Cuba"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cv"

    const-string v9, "238"

    const-string v10, "Cape Verde"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cw"

    const-string v9, "599"

    const-string v10, "Cura\u00e7ao"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cx"

    const-string v9, "Christmas Island"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1472
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cy"

    const-string v6, "357"

    const-string v9, "Cyprus"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cz"

    const-string v6, "420"

    const-string v9, "Czech Republic"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "de"

    const-string v6, "49"

    const-string v9, "Germany"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1475
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "dj"

    const-string v6, "253"

    const-string v9, "Djibouti"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "dk"

    const-string v6, "45"

    const-string v9, "Denmark"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "dm"

    const-string v6, "Dominica"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "do"

    const-string v6, "Dominican Republic"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1479
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "dz"

    const-string v6, "213"

    const-string v9, "Algeria"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1480
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ec"

    const-string v6, "593"

    const-string v9, "Ecuador"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ee"

    const-string v6, "372"

    const-string v9, "Estonia"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1482
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "eg"

    const-string v6, "20"

    const-string v9, "Egypt"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1483
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "er"

    const-string v6, "291"

    const-string v9, "Eritrea"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "es"

    const-string v6, "34"

    const-string v9, "Spain"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "et"

    const-string v6, "251"

    const-string v9, "Ethiopia"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1486
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "fi"

    const-string v6, "Finland"

    invoke-direct {v1, v3, v7, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1487
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "fj"

    const-string v6, "679"

    const-string v7, "Fiji"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "fk"

    const-string v6, "500"

    const-string v7, "Falkland Islands (malvinas)"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "fm"

    const-string v6, "691"

    const-string v7, "Micronesia, Federated States Of"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "fo"

    const-string v6, "298"

    const-string v7, "Faroe Islands"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1491
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "fr"

    const-string v6, "33"

    const-string v7, "France"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1492
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ga"

    const-string v6, "241"

    const-string v7, "Gabon"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gb"

    const-string v6, "44"

    const-string v7, "United Kingdom"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gd"

    const-string v7, "Grenada"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1495
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ge"

    const-string v7, "995"

    const-string v9, "Georgia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1496
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gf"

    const-string v7, "594"

    const-string v9, "French Guyana"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1497
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gh"

    const-string v7, "233"

    const-string v9, "Ghana"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1498
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gi"

    const-string v7, "350"

    const-string v9, "Gibraltar"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gl"

    const-string v7, "299"

    const-string v9, "Greenland"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gm"

    const-string v7, "220"

    const-string v9, "Gambia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1501
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gn"

    const-string v7, "224"

    const-string v9, "Guinea"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1502
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gp"

    const-string v7, "450"

    const-string v9, "Guadeloupe"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gq"

    const-string v7, "240"

    const-string v9, "Equatorial Guinea"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gr"

    const-string v7, "30"

    const-string v9, "Greece"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1505
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gt"

    const-string v7, "502"

    const-string v9, "Guatemala"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1506
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gu"

    const-string v7, "Guam"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1507
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gw"

    const-string v7, "245"

    const-string v9, "Guinea-bissau"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1508
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gy"

    const-string v7, "592"

    const-string v9, "Guyana"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "hk"

    const-string v7, "852"

    const-string v9, "Hong Kong"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1510
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "hn"

    const-string v7, "504"

    const-string v9, "Honduras"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1511
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "hr"

    const-string v7, "385"

    const-string v9, "Croatia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1512
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ht"

    const-string v7, "509"

    const-string v9, "Haiti"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1513
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "hu"

    const-string v7, "36"

    const-string v9, "Hungary"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "id"

    const-string v7, "62"

    const-string v9, "Indonesia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ie"

    const-string v7, "353"

    const-string v9, "Ireland"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "il"

    const-string v7, "972"

    const-string v9, "Israel"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1517
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "im"

    const-string v7, "Isle Of Man"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1518
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "is"

    const-string v7, "354"

    const-string v9, "Iceland"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "in"

    const-string v7, "91"

    const-string v9, "India"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1520
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "io"

    const-string v7, "246"

    const-string v9, "British Indian Ocean Territory"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1521
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "iq"

    const-string v7, "964"

    const-string v9, "Iraq"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ir"

    const-string v7, "98"

    const-string v9, "Iran, Islamic Republic Of"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "it"

    const-string v7, "39"

    const-string v9, "Italy"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "je"

    const-string v7, "Jersey "

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "jm"

    const-string v6, "Jamaica"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "jo"

    const-string v6, "962"

    const-string v7, "Jordan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1527
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "jp"

    const-string v6, "81"

    const-string v7, "Japan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ke"

    const-string v6, "254"

    const-string v7, "Kenya"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1529
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kg"

    const-string v6, "996"

    const-string v7, "Kyrgyzstan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kh"

    const-string v6, "855"

    const-string v7, "Cambodia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1531
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ki"

    const-string v6, "686"

    const-string v7, "Kiribati"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "km"

    const-string v6, "269"

    const-string v7, "Comoros"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1533
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kn"

    const-string v6, "Saint Kitts and Nevis"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1534
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kp"

    const-string v6, "850"

    const-string v7, "North Korea"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1535
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kr"

    const-string v6, "82"

    const-string v7, "South Korea"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1536
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kw"

    const-string v6, "965"

    const-string v7, "Kuwait"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1537
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ky"

    const-string v6, "Cayman Islands"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1538
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kz"

    const-string v6, "7"

    const-string v7, "Kazakhstan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1539
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "la"

    const-string v7, "856"

    const-string v9, "Lao People\'s Democratic Republic"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1540
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lb"

    const-string v7, "961"

    const-string v9, "Lebanon"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1541
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lc"

    const-string v7, "Saint Lucia"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "li"

    const-string v7, "423"

    const-string v9, "Liechtenstein"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1543
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lk"

    const-string v7, "94"

    const-string v9, "Sri Lanka"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lr"

    const-string v7, "231"

    const-string v9, "Liberia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ls"

    const-string v7, "266"

    const-string v9, "Lesotho"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lt"

    const-string v7, "370"

    const-string v9, "Lithuania"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1547
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lu"

    const-string v7, "352"

    const-string v9, "Luxembourg"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lv"

    const-string v7, "371"

    const-string v9, "Latvia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1549
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ly"

    const-string v7, "218"

    const-string v9, "Libya"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1550
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ma"

    const-string v7, "212"

    const-string v9, "Morocco"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1551
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mc"

    const-string v7, "377"

    const-string v9, "Monaco"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1552
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "md"

    const-string v7, "373"

    const-string v9, "Moldova, Republic Of"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "me"

    const-string v7, "382"

    const-string v9, "Montenegro"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1554
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mf"

    const-string v7, "Saint Martin"

    invoke-direct {v1, v3, v8, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mg"

    const-string v7, "261"

    const-string v8, "Madagascar"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1556
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mh"

    const-string v7, "692"

    const-string v8, "Marshall Islands"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1557
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mk"

    const-string v7, "389"

    const-string v8, "Macedonia (FYROM)"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1558
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ml"

    const-string v7, "223"

    const-string v8, "Mali"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1559
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mm"

    const-string v7, "95"

    const-string v8, "Myanmar"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1560
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mn"

    const-string v7, "976"

    const-string v8, "Mongolia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1561
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mo"

    const-string v7, "853"

    const-string v8, "Macau"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1562
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mp"

    const-string v7, "Northern Mariana Islands"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1563
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mq"

    const-string v7, "596"

    const-string v8, "Martinique"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mr"

    const-string v7, "222"

    const-string v8, "Mauritania"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1565
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ms"

    const-string v7, "Montserrat"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1566
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mt"

    const-string v7, "356"

    const-string v8, "Malta"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1567
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mu"

    const-string v7, "230"

    const-string v8, "Mauritius"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mv"

    const-string v7, "960"

    const-string v8, "Maldives"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1569
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mw"

    const-string v7, "265"

    const-string v8, "Malawi"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1570
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mx"

    const-string v7, "52"

    const-string v8, "Mexico"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1571
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "my"

    const-string v7, "60"

    const-string v8, "Malaysia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1572
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mz"

    const-string v7, "258"

    const-string v8, "Mozambique"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1573
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "na"

    const-string v7, "264"

    const-string v8, "Namibia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1574
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "nc"

    const-string v7, "687"

    const-string v8, "New Caledonia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1575
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ne"

    const-string v7, "227"

    const-string v8, "Niger"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1576
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "nf"

    const-string v7, "Norfolk Islands"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ng"

    const-string v5, "234"

    const-string v7, "Nigeria"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ni"

    const-string v5, "505"

    const-string v7, "Nicaragua"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1579
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "nl"

    const-string v5, "31"

    const-string v7, "Netherlands"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "no"

    const-string v5, "47"

    const-string v7, "Norway"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "np"

    const-string v5, "977"

    const-string v7, "Nepal"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "nr"

    const-string v5, "674"

    const-string v7, "Nauru"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1583
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "nu"

    const-string v5, "683"

    const-string v7, "Niue"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1584
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "nz"

    const-string v5, "64"

    const-string v7, "New Zealand"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1585
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "om"

    const-string v5, "968"

    const-string v7, "Oman"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1586
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pa"

    const-string v5, "507"

    const-string v7, "Panama"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pe"

    const-string v5, "51"

    const-string v7, "Peru"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1588
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pf"

    const-string v5, "689"

    const-string v7, "French Polynesia"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1589
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pg"

    const-string v5, "675"

    const-string v7, "Papua New Guinea"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ph"

    const-string v5, "63"

    const-string v7, "Philippines"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pk"

    const-string v5, "92"

    const-string v7, "Pakistan"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pl"

    const-string v5, "48"

    const-string v7, "Poland"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pm"

    const-string v5, "508"

    const-string v7, "Saint Pierre And Miquelon"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pn"

    const-string v5, "870"

    const-string v7, "Pitcairn Islands"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1595
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pr"

    const-string v5, "Puerto Rico"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1596
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ps"

    const-string v5, "970"

    const-string v7, "Palestine"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pt"

    const-string v5, "351"

    const-string v7, "Portugal"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1598
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pw"

    const-string v5, "680"

    const-string v7, "Palau"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "py"

    const-string v5, "595"

    const-string v7, "Paraguay"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "qa"

    const-string v5, "974"

    const-string v7, "Qatar"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "re"

    const-string v5, "262"

    const-string v7, "R\u00e9union"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1602
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ro"

    const-string v7, "40"

    const-string v8, "Romania"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "rs"

    const-string v7, "381"

    const-string v8, "Serbia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1604
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ru"

    const-string v7, "Russian Federation"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1605
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "rw"

    const-string v6, "250"

    const-string v7, "Rwanda"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sa"

    const-string v6, "966"

    const-string v7, "Saudi Arabia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sb"

    const-string v6, "677"

    const-string v7, "Solomon Islands"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1608
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sc"

    const-string v6, "248"

    const-string v7, "Seychelles"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sd"

    const-string v6, "249"

    const-string v7, "Sudan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "se"

    const-string v6, "46"

    const-string v7, "Sweden"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1611
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sg"

    const-string v6, "65"

    const-string v7, "Singapore"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1612
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sh"

    const-string v6, "290"

    const-string v7, "Saint Helena, Ascension And Tristan Da Cunha"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1613
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "si"

    const-string v6, "386"

    const-string v7, "Slovenia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sk"

    const-string v6, "421"

    const-string v7, "Slovakia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1615
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sl"

    const-string v6, "232"

    const-string v7, "Sierra Leone"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1616
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sm"

    const-string v6, "378"

    const-string v7, "San Marino"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sn"

    const-string v6, "221"

    const-string v7, "Senegal"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1618
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "so"

    const-string v6, "252"

    const-string v7, "Somalia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1619
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sr"

    const-string v6, "597"

    const-string v7, "Suriname"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ss"

    const-string v6, "211"

    const-string v7, "South Sudan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1621
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "st"

    const-string v6, "239"

    const-string v7, "Sao Tome And Principe"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sv"

    const-string v6, "503"

    const-string v7, "El Salvador"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sx"

    const-string v6, "Sint Maarten"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1624
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sy"

    const-string v6, "963"

    const-string v7, "Syrian Arab Republic"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1625
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sz"

    const-string v6, "268"

    const-string v7, "Swaziland"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1626
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tc"

    const-string v6, "Turks and Caicos Islands"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1627
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "td"

    const-string v6, "235"

    const-string v7, "Chad"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1628
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tg"

    const-string v6, "228"

    const-string v7, "Togo"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "th"

    const-string v6, "66"

    const-string v7, "Thailand"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1630
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tj"

    const-string v6, "992"

    const-string v7, "Tajikistan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1631
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tk"

    const-string v6, "690"

    const-string v7, "Tokelau"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1632
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tl"

    const-string v6, "670"

    const-string v7, "Timor-leste"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1633
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tm"

    const-string v6, "993"

    const-string v7, "Turkmenistan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1634
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tn"

    const-string v6, "216"

    const-string v7, "Tunisia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "to"

    const-string v6, "676"

    const-string v7, "Tonga"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1636
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tr"

    const-string v6, "90"

    const-string v7, "Turkey"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1637
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tt"

    const-string v6, "Trinidad &amp; Tobago"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1638
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tv"

    const-string v6, "688"

    const-string v7, "Tuvalu"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1639
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tw"

    const-string v6, "886"

    const-string v7, "Taiwan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tz"

    const-string v6, "255"

    const-string v7, "Tanzania, United Republic Of"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1641
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ua"

    const-string v6, "380"

    const-string v7, "Ukraine"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1642
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ug"

    const-string v6, "256"

    const-string v7, "Uganda"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "us"

    const-string v6, "United States"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1644
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "uy"

    const-string v6, "598"

    const-string v7, "Uruguay"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1645
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "uz"

    const-string v6, "998"

    const-string v7, "Uzbekistan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1646
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "va"

    const-string v6, "379"

    const-string v7, "Holy See (vatican City State)"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "vc"

    const-string v6, "Saint Vincent &amp; The Grenadines"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1648
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ve"

    const-string v6, "58"

    const-string v7, "Venezuela, Bolivarian Republic Of"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "vg"

    const-string v6, "British Virgin Islands"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1650
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "vi"

    const-string v6, "US Virgin Islands"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1651
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "vn"

    const-string v4, "84"

    const-string v6, "Vietnam"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1652
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "vu"

    const-string v4, "678"

    const-string v6, "Vanuatu"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1653
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "wf"

    const-string v4, "681"

    const-string v6, "Wallis And Futuna"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1654
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ws"

    const-string v4, "685"

    const-string v6, "Samoa"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1655
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "xk"

    const-string v4, "383"

    const-string v6, "Kosovo"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1656
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ye"

    const-string v4, "967"

    const-string v6, "Yemen"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1657
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "yt"

    const-string v4, "Mayotte"

    invoke-direct {v1, v3, v5, v4, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1658
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "za"

    const-string v4, "27"

    const-string v5, "South Africa"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1659
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "zm"

    const-string v4, "260"

    const-string v5, "Zambia"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1660
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "zw"

    const-string v4, "263"

    const-string v5, "Zimbabwe"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1661
    return-object v0
.end method

.method public static getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Lcom/hbb20/CountryCodePicker$Language;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            ")",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 1412
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1413
    :cond_0
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V

    .line 1415
    :cond_1
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    return-object v0
.end method

.method static getLoadedLibraryMasterListLanguage()Lcom/hbb20/CountryCodePicker$Language;
    .locals 1

    .line 72
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    return-object v0
.end method

.method public static getLoadedLibraryMaterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    return-object v0
.end method

.method public static getNoResultFoundAckMessage(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Lcom/hbb20/CountryCodePicker$Language;

    .line 169
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->noResultFoundAckMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V

    .line 172
    :cond_1
    sget-object v0, Lcom/hbb20/CCPCountry;->noResultFoundAckMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static getSearchHintMessage(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Lcom/hbb20/CountryCodePicker$Language;

    .line 162
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/hbb20/CCPCountry;->searchHintMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V

    .line 165
    :cond_1
    sget-object v0, Lcom/hbb20/CCPCountry;->searchHintMessage:Ljava/lang/String;

    return-object v0
.end method

.method static loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Lcom/hbb20/CountryCodePicker$Language;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "countries":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    const-string v1, ""

    .local v1, "tempDialogTitle":Ljava/lang/String;
    const-string v2, ""

    .local v2, "tempSearchHint":Ljava/lang/String;
    const-string v3, ""

    .line 97
    .local v3, "tempNoResultAck":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 98
    .local v4, "xmlFactoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 99
    .local v5, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ccp_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker$Language;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "raw"

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 100
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 99
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 102
    .local v6, "ins":Ljava/io/InputStream;
    const-string v7, "UTF-8"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 103
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 104
    .local v7, "event":I
    :goto_0
    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 105
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "name":Ljava/lang/String;
    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 110
    :pswitch_0
    const-string v9, "country"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    .line 111
    new-instance v9, Lcom/hbb20/CCPCountry;

    invoke-direct {v9}, Lcom/hbb20/CCPCountry;-><init>()V

    .line 112
    .local v9, "ccpCountry":Lcom/hbb20/CCPCountry;
    const-string v11, "name_code"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/hbb20/CCPCountry;->setNameCode(Ljava/lang/String;)V

    .line 113
    const-string v11, "phone_code"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/hbb20/CCPCountry;->setPhoneCode(Ljava/lang/String;)V

    .line 114
    const-string v11, "english_name"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/hbb20/CCPCountry;->setEnglishName(Ljava/lang/String;)V

    .line 115
    const-string v11, "name"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/hbb20/CCPCountry;->setName(Ljava/lang/String;)V

    .line 116
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    nop

    .end local v9    # "ccpCountry":Lcom/hbb20/CCPCountry;
    goto :goto_1

    :cond_0
    const-string v9, "ccp_dialog_title"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "translation"

    if-eqz v9, :cond_1

    .line 118
    :try_start_1
    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    goto :goto_1

    .line 119
    :cond_1
    const-string v9, "ccp_dialog_search_hint_message"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 120
    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    goto :goto_1

    .line 121
    :cond_2
    const-string v9, "ccp_dialog_no_result_ack_message"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 122
    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    goto :goto_1

    .line 108
    :pswitch_1
    nop

    .line 126
    :cond_3
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v7, v9

    .line 127
    .end local v8    # "name":Ljava/lang/String;
    goto :goto_0

    .line 128
    :cond_4
    sput-object p1, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "xmlFactoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "ins":Ljava/io/InputStream;
    .end local v7    # "event":I
    goto :goto_2

    .line 135
    :catchall_0
    move-exception v4

    goto :goto_6

    .line 133
    :catch_0
    move-exception v4

    .line 134
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 131
    :catch_1
    move-exception v4

    .line 132
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 129
    :catch_2
    move-exception v4

    .line 130
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    nop

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 141
    sget-object v4, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    sput-object v4, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 142
    invoke-static {}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountriesEnglish()Ljava/util/List;

    move-result-object v0

    .line 145
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    move-object v4, v1

    goto :goto_3

    :cond_6
    const-string v4, "Select a country"

    :goto_3
    sput-object v4, Lcom/hbb20/CCPCountry;->dialogTitle:Ljava/lang/String;

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    move-object v4, v2

    goto :goto_4

    :cond_7
    const-string v4, "Search..."

    :goto_4
    sput-object v4, Lcom/hbb20/CCPCountry;->searchHintMessage:Ljava/lang/String;

    .line 147
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    move-object v4, v3

    goto :goto_5

    :cond_8
    const-string v4, "Results not found"

    :goto_5
    sput-object v4, Lcom/hbb20/CCPCountry;->noResultFoundAckMessage:Ljava/lang/String;

    .line 148
    sput-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    .line 151
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 152
    return-void

    .line 137
    :goto_6
    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setDialogTitle(Ljava/lang/String;)V
    .locals 0
    .param p0, "dialogTitle"    # Ljava/lang/String;

    .line 176
    sput-object p0, Lcom/hbb20/CCPCountry;->dialogTitle:Ljava/lang/String;

    .line 177
    return-void
.end method

.method static setLoadedLibraryMasterListLanguage(Lcom/hbb20/CountryCodePicker$Language;)V
    .locals 0
    .param p0, "loadedLibraryMasterListLanguage"    # Lcom/hbb20/CountryCodePicker$Language;

    .line 76
    sput-object p0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 77
    return-void
.end method

.method static setLoadedLibraryMaterList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p0, "loadedLibraryMaterList":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    sput-object p0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    .line 85
    return-void
.end method

.method public static setNoResultFoundAckMessage(Ljava/lang/String;)V
    .locals 0
    .param p0, "noResultFoundAckMessage"    # Ljava/lang/String;

    .line 184
    sput-object p0, Lcom/hbb20/CCPCountry;->noResultFoundAckMessage:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public static setSearchHintMessage(Ljava/lang/String;)V
    .locals 0
    .param p0, "searchHintMessage"    # Ljava/lang/String;

    .line 180
    sput-object p0, Lcom/hbb20/CCPCountry;->searchHintMessage:Ljava/lang/String;

    .line 181
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/hbb20/CCPCountry;)I
    .locals 3
    .param p1, "o"    # Lcom/hbb20/CCPCountry;

    .line 1746
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, p1}, Lcom/hbb20/CCPCountry;->compareTo(Lcom/hbb20/CCPCountry;)I

    move-result p1

    return p1
.end method

.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .line 1665
    iget-object v0, p0, Lcom/hbb20/CCPCountry;->englishName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagID()I
    .locals 2

    .line 1673
    iget v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_0

    .line 1674
    invoke-static {p0}, Lcom/hbb20/CCPCountry;->getFlagMasterResID(Lcom/hbb20/CCPCountry;)I

    move-result v0

    iput v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    .line 1676
    :cond_0
    iget v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameCode()Ljava/lang/String;
    .locals 1

    .line 1680
    iget-object v0, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneCode()Ljava/lang/String;
    .locals 1

    .line 1688
    iget-object v0, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    return-object v0
.end method

.method isEligibleForQuery(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .line 1722
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1723
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name"

    invoke-direct {p0, v1, v0, p1}, Lcom/hbb20/CCPCountry;->containsQueryWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1724
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NameCode"

    invoke-direct {p0, v1, v0, p1}, Lcom/hbb20/CCPCountry;->containsQueryWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1725
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneCode"

    invoke-direct {p0, v1, v0, p1}, Lcom/hbb20/CCPCountry;->containsQueryWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1726
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getEnglishName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnglishName"

    invoke-direct {p0, v1, v0, p1}, Lcom/hbb20/CCPCountry;->containsQueryWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1723
    :goto_1
    return v0
.end method

.method public log()V
    .locals 4

    .line 1705
    const-string v0, ":"

    :try_start_0
    sget-object v1, Lcom/hbb20/CCPCountry;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Country->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1708
    goto :goto_0

    .line 1706
    :catch_0
    move-exception v0

    .line 1707
    .local v0, "ex":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/hbb20/CCPCountry;->TAG:Ljava/lang/String;

    const-string v2, "Null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method logString()Ljava/lang/String;
    .locals 2

    .line 1712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEnglishName(Ljava/lang/String;)V
    .locals 0
    .param p1, "englishName"    # Ljava/lang/String;

    .line 1669
    iput-object p1, p0, Lcom/hbb20/CCPCountry;->englishName:Ljava/lang/String;

    .line 1670
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 1700
    iput-object p1, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    .line 1701
    return-void
.end method

.method public setNameCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameCode"    # Ljava/lang/String;

    .line 1684
    iput-object p1, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    .line 1685
    return-void
.end method

.method public setPhoneCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneCode"    # Ljava/lang/String;

    .line 1692
    iput-object p1, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    .line 1693
    return-void
.end method
