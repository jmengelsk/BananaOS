.class public final Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;
.super Lcom/samsung/android/server/pm/scpm/ScpmHelper;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final DEFAULT_FILE_PATH:Ljava/lang/String;

.field public final PACKAGE_NAME_PATTERN:Ljava/util/regex/Pattern;

.field public final PAKCAGE_FEAUTRE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public final mService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/server/pm/scpm/ScpmHelper;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->SCPM_DIR_PATH:Ljava/lang/String;

    const-string v2, "/safemode/"

    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/etc/sysconfig/safe-mode-allow-list.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;->DEFAULT_FILE_PATH:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->safemodeallowlist:Lcom/samsung/android/server/packagefeature/PackageFeature;

    iput-object v1, p0, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;->PAKCAGE_FEAUTRE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    const-string/jumbo v1, "name=\"([^\"]*)\""

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;->PACKAGE_NAME_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v1, "SafeModeAllowListHelper"

    iput-object v1, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "safe-mode-allow-list-temp.xml"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v1, "safe-mode-allow-list-from-scpm.xml"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->FILE_PATH:Ljava/lang/String;

    const-string/jumbo v0, "package name"

    iput-object v0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->PACKAGE_NAME_TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;->mService:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method public static parseSafeModeAllowListElement(Lorg/xmlpull/v1/XmlPullParser;Z)Ljava/util/Set;
    .locals 7

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_6

    :cond_1
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "name"

    const/4 v4, 0x0

    const-string/jumbo v5, "SafeModeAllowListHelper"

    const-string/jumbo v6, "package"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "version"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v3, "Invalid element name: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "persist.sys.package_feature.version.safemode"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "version : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_5

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->convertBase64String(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public final getDefaultVersion()J
    .locals 2

    const-wide/32 v0, 0x78b42969    # 1.000519E-314

    return-wide v0
.end method

.method public final getPackageNameInPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;->PACKAGE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPropVersionName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "persist.sys.package_feature.version.safemode"

    return-object p0
.end method

.method public final parse(Ljava/lang/String;Z)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string/jumbo v1, "SafeModeAllowListHelper"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p1, "No xml file exists."

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;->parseSafeModeAllowListElement(Lorg/xmlpull/v1/XmlPullParser;Z)Ljava/util/Set;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    const-string p2, "Failed to parse the SafeMode file. "

    invoke-static {p1, p2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;->mService:Lcom/android/server/pm/PackageManagerService;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSafeModeAllowList:Ljava/util/Set;

    const-string p0, "Complete to update file"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
