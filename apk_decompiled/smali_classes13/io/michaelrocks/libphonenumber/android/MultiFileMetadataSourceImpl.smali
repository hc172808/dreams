.class final Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;
.super Ljava/lang/Object;
.source "MultiFileMetadataSourceImpl.java"

# interfaces
.implements Lio/michaelrocks/libphonenumber/android/MetadataSource;


# instance fields
.field private final alternateFormatsFilePrefix:Ljava/lang/String;

.field private final geographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataManager:Lio/michaelrocks/libphonenumber/android/MetadataManager;

.field private final nonGeographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final phoneNumberMetadataFilePrefix:Ljava/lang/String;

.field private final shortNumberFilePrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/michaelrocks/libphonenumber/android/MetadataLoader;)V
    .locals 3
    .param p1, "metadataLoader"    # Lio/michaelrocks/libphonenumber/android/MetadataLoader;

    .line 66
    const-string v0, "/io/michaelrocks/libphonenumber/android/data/PhoneNumberMetadataProto"

    const-string v1, "/io/michaelrocks/libphonenumber/android/data/PhoneNumberAlternateFormatsProto"

    const-string v2, "/io/michaelrocks/libphonenumber/android/data/ShortNumberMetadataProto"

    invoke-direct {p0, v0, v1, v2, p1}, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/MetadataLoader;)V

    .line 68
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/MetadataLoader;)V
    .locals 1
    .param p1, "phoneNumberMetadataFilePrefix"    # Ljava/lang/String;
    .param p2, "alternateFormatsFilePrefix"    # Ljava/lang/String;
    .param p3, "shortNumberFilePrefix"    # Ljava/lang/String;
    .param p4, "metadataLoader"    # Lio/michaelrocks/libphonenumber/android/MetadataLoader;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->geographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->nonGeographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->phoneNumberMetadataFilePrefix:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->alternateFormatsFilePrefix:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->shortNumberFilePrefix:Ljava/lang/String;

    .line 61
    new-instance v0, Lio/michaelrocks/libphonenumber/android/MetadataManager;

    invoke-direct {v0, p4}, Lio/michaelrocks/libphonenumber/android/MetadataManager;-><init>(Lio/michaelrocks/libphonenumber/android/MetadataLoader;)V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->metadataManager:Lio/michaelrocks/libphonenumber/android/MetadataManager;

    .line 62
    return-void
.end method

.method private isNonGeographical(I)Z
    .locals 5
    .param p1, "countryCallingCode"    # I

    .line 100
    invoke-static {}, Lio/michaelrocks/libphonenumber/android/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "001"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 101
    :goto_0
    return v2
.end method


# virtual methods
.method public getAlternateFormatsForCountry(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 2
    .param p1, "countryCallingCode"    # I

    .line 88
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->metadataManager:Lio/michaelrocks/libphonenumber/android/MetadataManager;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->alternateFormatsFilePrefix:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lio/michaelrocks/libphonenumber/android/MetadataManager;->getAlternateFormatsForCountry(ILjava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataForNonGeographicalRegion(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "countryCallingCode"    # I

    .line 78
    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->isNonGeographical(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->metadataManager:Lio/michaelrocks/libphonenumber/android/MetadataManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->nonGeographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->phoneNumberMetadataFilePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lio/michaelrocks/libphonenumber/android/MetadataManager;->getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->metadataManager:Lio/michaelrocks/libphonenumber/android/MetadataManager;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->geographicalRegions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->phoneNumberMetadataFilePrefix:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lio/michaelrocks/libphonenumber/android/MetadataManager;->getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getShortNumberMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 2
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->metadataManager:Lio/michaelrocks/libphonenumber/android/MetadataManager;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/MultiFileMetadataSourceImpl;->shortNumberFilePrefix:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lio/michaelrocks/libphonenumber/android/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method
