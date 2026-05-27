.class final Lio/michaelrocks/libphonenumber/android/MetadataManager;
.super Ljava/lang/Object;
.source "MetadataManager.java"


# static fields
.field static final ALTERNATE_FORMATS_FILE_PREFIX:Ljava/lang/String; = "/io/michaelrocks/libphonenumber/android/data/PhoneNumberAlternateFormatsProto"

.field static final MULTI_FILE_PHONE_NUMBER_METADATA_FILE_PREFIX:Ljava/lang/String; = "/io/michaelrocks/libphonenumber/android/data/PhoneNumberMetadataProto"

.field static final SHORT_NUMBER_METADATA_FILE_PREFIX:Ljava/lang/String; = "/io/michaelrocks/libphonenumber/android/data/ShortNumberMetadataProto"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final alternateFormatsCountryCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final alternateFormatsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataLoader:Lio/michaelrocks/libphonenumber/android/MetadataLoader;

.field private final shortNumberMetadataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final shortNumberMetadataRegionCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lio/michaelrocks/libphonenumber/android/MetadataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lio/michaelrocks/libphonenumber/android/MetadataLoader;)V
    .locals 1
    .param p1, "metadataLoader"    # Lio/michaelrocks/libphonenumber/android/MetadataLoader;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->alternateFormatsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->shortNumberMetadataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    nop

    .line 63
    invoke-static {}, Lio/michaelrocks/libphonenumber/android/AlternateFormatsCountryCodeSet;->getCountryCodeSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->alternateFormatsCountryCodes:Ljava/util/Set;

    .line 67
    nop

    .line 68
    invoke-static {}, Lio/michaelrocks/libphonenumber/android/ShortNumbersRegionCodeSet;->getRegionCodeSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->shortNumberMetadataRegionCodes:Ljava/util/Set;

    .line 71
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->metadataLoader:Lio/michaelrocks/libphonenumber/android/MetadataLoader;

    .line 72
    return-void
.end method

.method private static getMetadataFromSingleFileName(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/MetadataLoader;)Ljava/util/List;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "metadataLoader"    # Lio/michaelrocks/libphonenumber/android/MetadataLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/michaelrocks/libphonenumber/android/MetadataLoader;",
            ")",
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-interface {p1, p0}, Lio/michaelrocks/libphonenumber/android/MetadataLoader;->loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 120
    .local v0, "source":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 124
    invoke-static {v0}, Lio/michaelrocks/libphonenumber/android/MetadataManager;->loadMetadataAndCloseInput(Ljava/io/InputStream;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;

    move-result-object v1

    .line 125
    .local v1, "metadataCollection":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v2

    .line 126
    .local v2, "metadataList":Ljava/util/List;, "Ljava/util/List<Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    return-object v2

    .line 128
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "empty metadata: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    .end local v1    # "metadataCollection":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;
    .end local v2    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;>;"
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing metadata: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static loadMetadataAndCloseInput(Ljava/io/InputStream;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;
    .locals 6
    .param p0, "source"    # Ljava/io/InputStream;

    .line 140
    const-string v0, "error closing input stream (ignored)"

    const-string v1, "cannot load/parse metadata"

    const/4 v2, 0x0

    .line 143
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 146
    nop

    .line 147
    :try_start_1
    new-instance v3, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .local v3, "metadataCollection":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;
    :try_start_2
    invoke-virtual {v3, v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    nop

    .line 153
    nop

    .line 156
    nop

    .line 158
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lio/michaelrocks/libphonenumber/android/MetadataManager;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v3

    .line 150
    :catch_1
    move-exception v4

    .line 151
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .end local p0    # "source":Ljava/io/InputStream;
    throw v5

    .line 155
    .end local v3    # "metadataCollection":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local p0    # "source":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 144
    :catch_2
    move-exception v3

    .line 145
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .end local p0    # "source":Ljava/io/InputStream;
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local p0    # "source":Ljava/io/InputStream;
    :goto_1
    if-eqz v2, :cond_0

    .line 158
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_2

    .line 160
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 164
    :goto_2
    goto :goto_3

    .line 162
    :catch_3
    move-exception v3

    .line 163
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v4, Lio/michaelrocks/libphonenumber/android/MetadataManager;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    throw v1
.end method


# virtual methods
.method getAlternateFormatsForCountry(ILjava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 2
    .param p1, "countryCallingCode"    # I
    .param p2, "filePrefix"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->alternateFormatsCountryCodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->alternateFormatsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v1, p2}, Lio/michaelrocks/libphonenumber/android/MetadataManager;->getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 7
    .param p3, "filePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TT;",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;"
        }
    .end annotation

    .line 102
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TT;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;>;"
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 103
    .local v0, "metadata":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_0

    .line 104
    return-object v0

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->metadataLoader:Lio/michaelrocks/libphonenumber/android/MetadataLoader;

    invoke-static {v1, v2}, Lio/michaelrocks/libphonenumber/android/MetadataManager;->getMetadataFromSingleFileName(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/MetadataLoader;)Ljava/util/List;

    move-result-object v2

    .line 109
    .local v2, "metadataList":Ljava/util/List;, "Ljava/util/List<Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 110
    sget-object v3, Lio/michaelrocks/libphonenumber/android/MetadataManager;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "more than one metadata in file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 112
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 113
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 114
    .local v3, "oldValue":Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    if-eqz v3, :cond_2

    move-object v4, v3

    goto :goto_0

    :cond_2
    move-object v4, v0

    :goto_0
    return-object v4
.end method

.method getShortNumberMetadataForRegion(Ljava/lang/String;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "filePrefix"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->shortNumberMetadataRegionCodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->shortNumberMetadataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0, p2}, Lio/michaelrocks/libphonenumber/android/MetadataManager;->getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method getSupportedShortNumberRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->shortNumberMetadataRegionCodes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
