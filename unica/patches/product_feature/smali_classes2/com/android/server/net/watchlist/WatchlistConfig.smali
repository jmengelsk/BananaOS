.class public Lcom/android/server/net/watchlist/WatchlistConfig;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;


# instance fields
.field public volatile mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field public volatile mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field public mIsSecureConfig:Z

.field public mXmlFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/network_watchlist/network_watchlist.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/net/watchlist/WatchlistConfig;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    return-void
.end method

.method public static parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v0, :cond_24

    const-string/jumbo v2, "hash"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {p0, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_24
    invoke-interface {p0, v3, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getWatchlistConfigHash()[B
    .registers 4

    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object p0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    const-string/jumbo v0, "WatchlistConfig"

    const-string/jumbo v2, "Unable to get watchlist config hash"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final reloadConfig()V
    .registers 15

    const-string/jumbo v0, "watchlist-config"

    const-string/jumbo v1, "WatchlistConfig"

    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_f8

    :cond_10
    :try_start_10
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_17} :catch_e8
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_17} :catch_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_17} :catch_e8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_17} :catch_e8
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_e8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_17} :catch_e8

    :try_start_17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-interface {v7, v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :goto_40
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v9, :cond_b9

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, 0x1

    sparse-switch v12, :sswitch_data_fa

    goto :goto_83

    :sswitch_54
    const-string/jumbo v12, "crc32-ip"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_83

    move v12, v13

    goto :goto_84

    :catchall_5f
    move-exception p0

    goto/16 :goto_ea

    :sswitch_62
    const-string/jumbo v12, "sha256-ip"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_83

    move v12, v11

    goto :goto_84

    :sswitch_6d
    const-string/jumbo v12, "sha256-domain"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_83

    move v12, v9

    goto :goto_84

    :sswitch_78
    const-string/jumbo v12, "crc32-domain"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_83

    const/4 v12, 0x0

    goto :goto_84

    :cond_83
    :goto_83
    const/4 v12, -0x1

    :goto_84
    if-eqz v12, :cond_b5

    if-eq v12, v13, :cond_b1

    if-eq v12, v9, :cond_ad

    if-eq v12, v11, :cond_a9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown element: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_40

    :cond_a9
    invoke-static {v7, v10, v6}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_40

    :cond_ad
    invoke-static {v7, v10, v4}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_40

    :cond_b1
    invoke-static {v7, v10, v5}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_40

    :cond_b5
    invoke-static {v7, v10, v3}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_40

    :cond_b9
    invoke-interface {v7, v11, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v7, Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-direct {v7, v3}, Lcom/android/server/net/watchlist/HarmfulCrcs;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v3, v4}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v7, v3}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulCrcs;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v3, Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-direct {v3, v5}, Lcom/android/server/net/watchlist/HarmfulCrcs;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v4, v6}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v3, v4}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulCrcs;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    const-string/jumbo p0, "Reload watchlist done"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_17 .. :try_end_e4} :catchall_5f

    :try_start_e4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catch Ljava/lang/IllegalStateException; {:try_start_e4 .. :try_end_e7} :catch_e8
    .catch Ljava/lang/NullPointerException; {:try_start_e4 .. :try_end_e7} :catch_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_e4 .. :try_end_e7} :catch_e8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e4 .. :try_end_e7} :catch_e8
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e4 .. :try_end_e7} :catch_e8

    return-void

    :catch_e8
    move-exception p0

    goto :goto_f3

    :goto_ea
    :try_start_ea
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_ee

    goto :goto_f2

    :catchall_ee
    move-exception v0

    :try_start_ef
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f2
    throw p0
    :try_end_f3
    .catch Ljava/lang/IllegalStateException; {:try_start_ef .. :try_end_f3} :catch_e8
    .catch Ljava/lang/NullPointerException; {:try_start_ef .. :try_end_f3} :catch_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_ef .. :try_end_f3} :catch_e8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ef .. :try_end_f3} :catch_e8
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f3} :catch_e8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ef .. :try_end_f3} :catch_e8

    :goto_f3
    const-string v0, "Failed parsing xml"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f8
    return-void

    nop

    :sswitch_data_fa
    .sparse-switch
        -0x6f059362 -> :sswitch_78
        -0xe260d6 -> :sswitch_6d
        0x31cafa8d -> :sswitch_62
        0x6670a201 -> :sswitch_54
    .end sparse-switch
.end method
