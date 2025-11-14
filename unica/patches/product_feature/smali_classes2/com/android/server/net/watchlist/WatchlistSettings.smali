.class public Lcom/android/server/net/watchlist/WatchlistSettings;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;


# instance fields
.field public final mPrivacySecretKey:[B

.field public final mXmlFile:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/server/net/watchlist/WatchlistSettings;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "watchlist_settings.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/net/watchlist/WatchlistSettings;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistSettings;->sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    new-instance v1, Landroid/util/AtomicFile;

    const-string/jumbo v2, "net-watchlist"

    invoke-direct {v1, p1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    const-string p1, "Failed parsing xml"

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    const/16 v3, 0x30

    const-string/jumbo v4, "network-watchlist-settings"

    const-string/jumbo v5, "WatchlistSettings"

    const-string/jumbo v6, "secret-key"

    if-nez v2, :cond_24

    goto :goto_86

    :cond_24
    :try_start_24
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_28} :catch_72
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_28} :catch_72
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_28} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_28} :catch_72
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_72
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_24 .. :try_end_28} :catch_72
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_28} :catch_70

    :try_start_28
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    :cond_33
    :goto_33
    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v8

    if-eqz v8, :cond_64

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    const/4 v8, 0x2

    invoke-interface {v2, v8, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v9, 0x3

    invoke-interface {v2, v9, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_58

    array-length v9, v8

    if-eq v9, v3, :cond_5f

    :cond_58
    const-string/jumbo v8, "Unable to parse secret key"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v0

    :cond_5f
    iput-object v8, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    goto :goto_33

    :catchall_62
    move-exception v2

    goto :goto_74

    :cond_64
    const-string/jumbo v2, "Reload watchlist settings done"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_28 .. :try_end_6a} :catchall_62

    if-eqz v1, :cond_86

    :try_start_6c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6f
    .catch Ljava/lang/IllegalStateException; {:try_start_6c .. :try_end_6f} :catch_72
    .catch Ljava/lang/NullPointerException; {:try_start_6c .. :try_end_6f} :catch_72
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_6f} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_6f} :catch_72
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_72
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6c .. :try_end_6f} :catch_72
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_86

    :catch_70
    move-exception v1

    goto :goto_7f

    :catch_72
    move-exception v1

    goto :goto_83

    :goto_74
    if-eqz v1, :cond_7e

    :try_start_76
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    goto :goto_7e

    :catchall_7a
    move-exception v1

    :try_start_7b
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7e
    :goto_7e
    throw v2
    :try_end_7f
    .catch Ljava/lang/IllegalStateException; {:try_start_7b .. :try_end_7f} :catch_72
    .catch Ljava/lang/NullPointerException; {:try_start_7b .. :try_end_7f} :catch_72
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_7f} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7b .. :try_end_7f} :catch_72
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7f} :catch_72
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7b .. :try_end_7f} :catch_72
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_7f} :catch_70

    :goto_7f
    invoke-static {v5, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_86

    :goto_83
    invoke-static {v5, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_86
    :goto_86
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    if-nez p1, :cond_e1

    new-array p1, v3, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    :try_start_96
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p1
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9c} :catch_cf

    :try_start_9c
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_c2} :catch_c3

    goto :goto_e1

    :catch_c3
    move-exception v0

    const-string v1, "Failed to write display settings, restoring backup."

    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_e1

    :catch_cf
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to write display settings: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    :goto_e1
    return-void
.end method
