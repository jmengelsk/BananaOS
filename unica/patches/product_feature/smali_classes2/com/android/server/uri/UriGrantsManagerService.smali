.class public Lcom/android/server/uri/UriGrantsManagerService;
.super Landroid/app/IUriGrantsManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mGrantFile:Landroid/util/AtomicFile;

.field public final mGrantedUriPermissions:Landroid/util/SparseArray;

.field public final mH:Lcom/android/server/uri/UriGrantsManagerService$H;

.field public final mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mUriPermissionHistory:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$mcheckAuthorityGrantsLocked(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 7

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/GrantUri;

    iget v3, v2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v3, p3, :cond_0

    if-nez p4, :cond_4

    :cond_0
    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_1
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, p1

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v2, p1

    :goto_2
    if-eqz v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return p1
.end method

.method public static -$$Nest$mreadGrantedUriPermissionsLocked(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Failed reading Uri grants"

    const-string/jumbo v2, "UriGrantsManagerService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    const-string/jumbo v8, "uri-grant"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "userHandle"

    const/16 v9, -0x2710

    invoke-interface {v7, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v9, :cond_0

    move v10, v8

    goto :goto_1

    :cond_0
    const-string/jumbo v8, "sourceUserId"

    invoke-interface {v7, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "targetUserId"

    invoke-interface {v7, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v10, v9

    :goto_1
    const-string/jumbo v9, "sourcePkg"

    invoke-interface {v7, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "targetPkg"

    invoke-interface {v7, v5, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "uri"

    invoke-interface {v7, v5, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string/jumbo v13, "prefix"

    const/4 v14, 0x0

    invoke-interface {v7, v5, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    const-string/jumbo v15, "modeFlags"

    invoke-interface {v7, v5, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v14, "createdTime"

    move/from16 v16, v13

    invoke-interface {v7, v5, v14, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v13

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v17, v3

    const/high16 v3, 0xc0000

    const/16 v4, 0x3e8

    invoke-virtual {v0, v8, v3, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v19, v6

    const-wide/16 v5, 0x2000

    :try_start_2
    invoke-virtual {v4, v11, v5, v6, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    new-instance v5, Lcom/android/server/uri/GrantUri;

    if-eqz v16, :cond_1

    const/16 v6, 0x80

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    invoke-direct {v5, v8, v6, v12}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    invoke-virtual {v0, v9, v11, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v5

    invoke-virtual {v5, v15, v13, v14}, Lcom/android/server/uri/UriPermission;->initPersistedModes(IJ)V

    iget-object v9, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v9 .. v15}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    goto :goto_7

    :catchall_0
    move-exception v0

    :goto_3
    move-object/from16 v5, v19

    goto/16 :goto_b

    :catch_0
    move-exception v0

    :goto_4
    move-object/from16 v5, v19

    goto :goto_8

    :catch_1
    move-exception v0

    :goto_5
    move-object/from16 v5, v19

    goto/16 :goto_a

    :catch_2
    :goto_6
    move-object/from16 v5, v19

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_5

    :catch_5
    move-object/from16 v19, v6

    goto :goto_6

    :cond_2
    move-object/from16 v19, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Persisted grant for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " had source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but instead found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :cond_3
    move-wide/from16 v17, v3

    move-object/from16 v19, v6

    :cond_4
    :goto_7
    move-wide/from16 v3, v17

    move-object/from16 v6, v19

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v19, v6

    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    goto :goto_b

    :catch_6
    move-exception v0

    const/4 v5, 0x0

    goto :goto_8

    :catch_7
    move-exception v0

    const/4 v5, 0x0

    goto :goto_a

    :catch_8
    const/4 v5, 0x0

    goto :goto_9

    :goto_8
    :try_start_3
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_9
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_b

    :goto_a
    :try_start_4
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_9

    :goto_b
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :goto_c
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/uri/UriGrantsManagerService;->TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/IUriGrantsManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mUriPermissionHistory:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "urigrants.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Landroid/util/AtomicFile;

    if-eqz p2, :cond_0

    invoke-direct {p1, v0, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :goto_0
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    return-void
.end method

.method public static createForTest(Ljava/io/File;)Lcom/android/server/uri/UriGrantsManagerService;
    .locals 2

    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    iput-object p0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    iput-object p0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method public static enforceNotIsolatedCaller(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Isolated process not allowed to call "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addToHistoryLocked(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mUriPermissionHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mUriPermissionHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mUriPermissionHistory:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/uri/UriGrantsManagerService;->TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkComponentPermission(Ljava/lang/String;IIZ)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    return p0
.end method

.method public final checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z
    .locals 3

    if-ltz p2, :cond_5

    invoke-static {p3}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "UriGrantsManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "No content provider found for content URI permission check: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "The URI must be a content URI and the mode flags must be at least read and/or write for the content URI permission check of "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Uid must be positive for the content URI permission check of "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;
    .locals 15

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    move/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    if-eqz v3, :cond_10

    const/4 v4, 0x0

    if-nez v1, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getContentUserHint()I

    move-result v0

    const/4 v6, -0x2

    if-ne v0, v6, :cond_1

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    :cond_1
    move v10, v0

    const-string/jumbo v6, "UriGrantsManagerService"

    const-string/jumbo v11, "android.intent.extra.STREAM"

    :try_start_0
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v1, v11, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_2

    invoke-static {v10, v5, v0}, Lcom/android/server/uri/GrantUri;->resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v0

    invoke-virtual {p0, v8, v0, v2, v9}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed to unparcel an URI in EXTRA_STREAM, skipping requireContentUriPermissionFromCaller: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    :try_start_1
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v1, v11, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    :goto_1
    if-ltz v11, :cond_3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-static {v10, v5, v12}, Lcom/android/server/uri/GrantUri;->resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v12

    invoke-virtual {p0, v8, v12, v2, v9}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to unparcel an ArrayList of URIs in EXTRA_STREAM, skipping requireContentUriPermissionFromCaller: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    if-nez v0, :cond_4

    if-nez v11, :cond_4

    return-object v4

    :cond_4
    if-eqz v7, :cond_6

    iget v1, v7, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move/from16 v14, p6

    :cond_5
    move v6, v1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v12, 0x10000000

    move/from16 v14, p6

    invoke-virtual {v1, v3, v12, v13, v14}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-gez v1, :cond_5

    return-object v4

    :goto_2
    if-eqz v0, :cond_8

    invoke-static {v10, v5, v0}, Lcom/android/server/uri/GrantUri;->resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v4

    invoke-virtual {p0, v8, v4, v2, v9}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v6

    if-lez v6, :cond_8

    if-nez v7, :cond_7

    new-instance v0, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v0, v6, v5, v3}, Lcom/android/server/uri/NeededUriGrants;-><init>(IILjava/lang/String;)V

    move-object v7, v0

    :cond_7
    iget-object v0, v7, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v11, :cond_f

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v11}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_e

    invoke-virtual {v11, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-static {v10, v5, v4}, Lcom/android/server/uri/GrantUri;->resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v4

    invoke-virtual {p0, v8, v4, v2, v9}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v6

    if-lez v6, :cond_d

    if-nez v7, :cond_9

    new-instance v7, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v7, v6, v5, v3}, Lcom/android/server/uri/NeededUriGrants;-><init>(IILjava/lang/String;)V

    :cond_9
    iget-object v1, v7, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    move v12, v6

    invoke-virtual {v11, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_b

    move-object v1, p0

    move/from16 v2, p1

    move-object v6, v7

    move v7, v14

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v4

    if-eqz v4, :cond_c

    move-object v7, v4

    :goto_4
    move v6, v12

    goto :goto_5

    :cond_b
    move-object v6, v7

    :cond_c
    move-object v7, v6

    goto :goto_4

    :cond_d
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v14, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    goto :goto_3

    :cond_e
    move-object v6, v7

    :cond_f
    return-object v7

    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "targetPkg"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-static {v9}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    move v1, v10

    goto :goto_1

    :cond_1
    move v1, v11

    :goto_1
    const/4 v12, -0x1

    if-nez v1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iget-object v2, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_4

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v3, p1

    goto/16 :goto_4

    :cond_4
    :goto_3
    const-string/jumbo v1, "com.android.settings.files"

    iget-object v2, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "com.android.settings.module_licenses"

    iget-object v2, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v1, :cond_7

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const-wide/16 v4, 0x80

    move/from16 v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->resolveContentProvider(IIJLjava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    const-string/jumbo v2, "com.samsung.android.exempt.GRANT_URI_PERMISSION"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "UriGrantsManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Requested grant to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const-string/jumbo v0, "UriGrantsManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "For security reasons, the system cannot issue a Uri permission grant to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; use startActivityAsCaller() instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_7
    const-string/jumbo v0, "UriGrantsManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "For security reasons, the system cannot issue a Uri permission grant to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; use startActivityAsCaller() instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :goto_4
    iget v1, v8, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_8

    const-string/jumbo v0, "UriGrantsManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No content provider found for permission check: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_8
    if-gez p5, :cond_a

    if-eqz v7, :cond_a

    iget-object v2, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v4, 0x10000000

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-gez v2, :cond_9

    :goto_5
    return v12

    :cond_9
    move v6, v2

    goto :goto_6

    :cond_a
    move/from16 v6, p5

    :goto_6
    if-ltz v6, :cond_b

    invoke-virtual {v0, v1, v8, v6, v9}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v2

    if-eqz v2, :cond_11

    :goto_7
    move v2, v11

    goto :goto_a

    :cond_b
    iget-boolean v2, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    and-int/lit8 v4, v9, 0x1

    if-eqz v4, :cond_c

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v5, :cond_c

    move v2, v10

    :cond_c
    and-int/lit8 v5, v9, 0x2

    if-eqz v5, :cond_d

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v7, :cond_d

    move v2, v10

    :cond_d
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v7, :cond_10

    array-length v7, v7

    move v13, v10

    :goto_8
    if-ge v13, v7, :cond_10

    iget-object v14, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v14, v14, v13

    if-eqz v14, :cond_f

    iget-object v15, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    if-eqz v4, :cond_e

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v4, v4, v13

    invoke-virtual {v4}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    move v2, v10

    :cond_e
    if-eqz v5, :cond_10

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v4, v4, v13

    invoke-virtual {v4}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    move v2, v10

    goto :goto_9

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_10
    :goto_9
    if-eqz v2, :cond_11

    goto :goto_7

    :cond_11
    move v2, v10

    :goto_a
    iget-boolean v4, v1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v4, :cond_12

    move v2, v10

    :cond_12
    and-int/lit16 v4, v9, 0xc0

    if-nez v4, :cond_13

    move v7, v11

    goto :goto_b

    :cond_13
    move v7, v10

    :goto_b
    if-eqz v7, :cond_14

    if-eqz v2, :cond_14

    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v16

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v1

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    return v12

    :cond_14
    if-ltz v6, :cond_15

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget v4, v8, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v2, v4, :cond_15

    const/4 v5, 0x0

    move-object v2, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v5

    if-eqz v5, :cond_16

    move v5, v11

    goto :goto_c

    :cond_15
    move-object v2, v8

    move v4, v9

    :cond_16
    move v5, v10

    :goto_c
    iget-boolean v8, v1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    iget-object v8, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v8, v8

    move v9, v10

    :goto_d
    if-ge v9, v8, :cond_19

    iget-object v12, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v12, v12, v9

    if-eqz v12, :cond_17

    iget-object v13, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    move v10, v11

    goto :goto_e

    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_18
    move v10, v8

    :cond_19
    :goto_e
    if-nez v10, :cond_1c

    if-eqz v5, :cond_1b

    if-eqz v7, :cond_1a

    goto :goto_f

    :cond_1a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Provider "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not allow granting of advanced Uri permissions (uri "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Provider "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not allow granting of Uri permissions (uri "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_f
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v5

    if-nez v5, :cond_1e

    iget-object v5, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "android.permission.MANAGE_DOCUMENTS"

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "UID "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have permission to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "UID "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have permission to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1e
    return v6
.end method

.method public final checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/android/server/uri/UriGrantsManagerService;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-object v0, p3

    :try_start_0
    new-instance p3, Lcom/android/server/uri/GrantUri;

    invoke-direct {p3, p5, p4, v0}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    const/4 p5, -0x1

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-object v5, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    if-ne v5, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v7, 0x0

    if-nez v5, :cond_1

    goto/16 :goto_9

    :cond_1
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_0
    and-int/lit8 v8, v4, 0x2

    if-nez v8, :cond_3

    move v8, v6

    goto :goto_1

    :cond_3
    move v8, v7

    :goto_1
    if-nez v5, :cond_4

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v9, :cond_4

    if-eqz p5, :cond_4

    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4

    move v5, v6

    :cond_4
    if-nez v8, :cond_5

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v9, :cond_5

    if-eqz p5, :cond_5

    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_5

    move v8, v6

    :cond_5
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v9, :cond_6

    move v9, v6

    goto :goto_2

    :cond_6
    move v9, v7

    :goto_2
    iget-object v10, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v10, :cond_7

    move v10, v6

    goto :goto_3

    :cond_7
    move v10, v7

    :goto_3
    iget-object v11, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v11, :cond_d

    iget-object v12, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    array-length v13, v11

    :cond_8
    :goto_4
    if-lez v13, :cond_d

    if-eqz v5, :cond_9

    if-nez v8, :cond_d

    :cond_9
    add-int/lit8 v13, v13, -0x1

    aget-object v14, v11, v13

    invoke-virtual {v14, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    if-nez v5, :cond_b

    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b

    if-eqz p5, :cond_a

    invoke-virtual {v0, v15, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_a

    move v5, v6

    goto :goto_5

    :cond_a
    move v9, v7

    :cond_b
    :goto_5
    if-nez v8, :cond_8

    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    if-eqz p5, :cond_c

    invoke-virtual {v0, v14, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_c

    move v8, v6

    goto :goto_4

    :cond_c
    move v10, v7

    goto :goto_4

    :cond_d
    if-eqz v9, :cond_e

    move v5, v6

    :cond_e
    if-eqz v10, :cond_f

    move v8, v6

    :cond_f
    iget-boolean v9, v1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v9, :cond_11

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v1, v9, :cond_10

    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/ActivityManagerInternal;->checkContentProviderUriPermission(Landroid/net/Uri;III)I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_6

    :cond_10
    move v0, v7

    goto :goto_7

    :cond_11
    :goto_6
    move v0, v6

    :goto_7
    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    if-eqz v0, :cond_12

    :goto_8
    return v6

    :cond_12
    :goto_9
    return v7

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must never hold local mLock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .locals 6

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p3, v2, v0}, Lcom/android/server/uri/UriGrantsManagerService;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result p0

    return p0
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z
    .locals 9

    and-int/lit8 v0, p3, 0x40

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez p2, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    const/4 p2, 0x0

    if-nez p0, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    const/4 v4, 0x2

    if-eqz v3, :cond_6

    and-int/lit8 v5, p3, 0x3

    iget v6, v3, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    iget v6, v3, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    iget v3, v3, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_5

    move v3, v2

    goto :goto_1

    :cond_5
    move v3, p2

    :goto_1
    if-lt v3, v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v5, p2

    :goto_2
    if-ge v5, v3, :cond_b

    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v8, v7, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v8, :cond_a

    iget-object v8, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v7, v7, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v7}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_a

    and-int/lit8 v7, p3, 0x3

    iget v8, v6, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_7

    move v6, v1

    goto :goto_3

    :cond_7
    iget v8, v6, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_8

    move v6, v4

    goto :goto_3

    :cond_8
    iget v6, v6, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_9

    move v6, v2

    goto :goto_3

    :cond_9
    move v6, p2

    :goto_3
    if-lt v6, v0, :cond_a

    :goto_4
    return v2

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    :goto_5
    return p2
.end method

.method public final clearGrantedUriPermissions(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

    const-string/jumbo v2, "clearGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "content"

    iget-object v1, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->hasRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "You can\'t launch this activity because you don\'t have the required "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->requiredContentUriPermissionToShortString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " access to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_5

    const-string/jumbo p1, "content"

    iget-object v0, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p4, :cond_3

    goto :goto_3

    :cond_3
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->hasRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    iget-object p2, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method public final findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 3

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/uri/UriPermission;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/uri/UriPermission;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    invoke-virtual {v0, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "+"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, v1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "<-"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/server/uri/UriGrantsManagerService;->addToHistoryLocked(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/16 p3, 0x7d0

    if-lt p0, p3, :cond_1

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    rem-int/lit8 p0, p0, 0x64

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Too many UriPermission("

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") added for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") <- "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "UriGrantsManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public final findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 0

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/uri/UriPermission;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 10

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

    const-string/jumbo v2, "getGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    move v6, v3

    :goto_1
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_0

    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    iget v8, v7, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-ne v8, p2, :cond_1

    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_1

    new-instance v8, Landroid/app/GrantedUriPermission;

    iget-object v9, v7, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v7, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Landroid/app/GrantedUriPermission;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getLocalService()Lcom/android/server/uri/UriGrantsManagerInternal;
    .locals 1

    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;)V

    return-object v0
.end method

.method public final getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;
    .locals 6

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    or-int/lit16 p2, p2, 0x800

    int-to-long v3, p2

    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    move v1, p1

    move v2, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->resolveContentProvider(IIJLjava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;
    .locals 12

    const-string/jumbo v0, "No permission grants found for "

    const-string/jumbo v1, "getUriPermissions"

    invoke-static {v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    const-string/jumbo v1, "packageName"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v4, 0xc0000

    invoke-virtual {v3, p1, v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne v2, v1, :cond_8

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    const-string/jumbo p0, "UriGrantsManagerService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-ge v4, p2, :cond_7

    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/uri/UriPermission;

    iget-object v0, p2, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    iget v0, p2, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Landroid/content/UriPermission;

    iget-object v1, p2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v1, v1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget v5, p2, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    iget-wide v6, p2, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-direct {v0, v1, v5, v6, v7}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    move v0, v4

    :goto_1
    if-ge v0, p2, :cond_7

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    move v5, v4

    :goto_2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz p3, :cond_4

    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_5

    :cond_4
    new-instance v7, Landroid/content/UriPermission;

    iget-object v8, v6, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v8, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget v9, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    iget-wide v10, v6, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p2, "Package "

    const-string p3, " does not belong to calling UID "

    invoke-static {v1, p2, p1, p3}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v6, "grantUriPermissionFromOwner"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move v3, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p7

    instance-of v0, p1, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    iget-object v0, v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->this$0:Lcom/android/server/uri/UriPermissionOwner;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-eq p2, p1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "nice try"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    move p1, p6

    move p6, p5

    new-instance p5, Lcom/android/server/uri/GrantUri;

    invoke-direct {p5, p1, p6, p4}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v1, 0x10000000

    invoke-virtual {p1, p3, v1, v2, p7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p7

    move-object p4, p3

    move p3, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result p1

    move-object p2, p4

    move-object p3, p5

    if-gez p1, :cond_3

    return-void

    :cond_3
    move p4, p6

    move-object p5, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "null uri"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "null target"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Unknown owner: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V
    .locals 7

    invoke-static {p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    const/16 v3, 0x3e8

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "UriGrantsManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "No content provider found for grant: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p2, p1, p3}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    and-int/lit8 p3, p4, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    and-int/lit8 v4, p4, 0x3

    if-eqz v3, :cond_3

    iget v3, p2, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    or-int/2addr v3, v4

    iput v3, p2, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    :cond_3
    if-nez p5, :cond_4

    iget p4, p2, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    or-int/2addr p4, v4

    iput p4, p2, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    goto/16 :goto_c

    :cond_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    monitor-enter p2

    :try_start_1
    iget-object v3, p2, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-nez v3, :cond_5

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, p2, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    iget v3, p2, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    or-int/2addr v3, v2

    iput v3, p2, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    invoke-virtual {p2}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_5
    :goto_1
    iget-object v3, p2, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v3, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    monitor-enter p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p5, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-nez v3, :cond_6

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, p5, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v3, p5, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit p5

    goto :goto_4

    :goto_3
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_4
    monitor-exit p2

    goto :goto_6

    :goto_5
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_8
    :goto_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    monitor-enter p2

    :try_start_5
    iget-object p4, p2, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-nez p4, :cond_9

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object p4

    iput-object p4, p2, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    iget p4, p2, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    or-int/lit8 p4, p4, 0x2

    iput p4, p2, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    invoke-virtual {p2}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_b

    :cond_9
    :goto_7
    iget-object p4, p2, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {p4, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    monitor-enter p5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object p4, p5, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-nez p4, :cond_a

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object p4

    iput-object p4, p5, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :cond_a
    :goto_8
    iget-object p4, p5, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p4, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit p5

    goto :goto_a

    :goto_9
    monitor-exit p5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_b
    :goto_a
    monitor-exit p2

    goto :goto_c

    :goto_b
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    :cond_c
    :goto_c
    invoke-virtual {p2}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    move p2, v1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget-object p1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p3, :cond_d

    move v6, v2

    goto :goto_d

    :cond_d
    move v6, p2

    :goto_d
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    return-void

    :catchall_4
    move-exception v0

    move-object p0, v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0
.end method

.method public final hasRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isRequiredContentUriPermissionRead(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isRequiredContentUriPermissionWrite(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    invoke-virtual {p0, p2, p3, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v2

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    if-nez v0, :cond_5

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    :cond_5
    :goto_4
    return v2

    :cond_6
    return v1
.end method

.method public final maybePrunePersistedUriGrantsLocked(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x200

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    iget v4, v3, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    if-gtz p1, :cond_4

    return v0

    :cond_4
    new-instance v2, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_1
    if-ge v0, p1, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    invoke-virtual {p0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 7

    const-string/jumbo v0, "No permission grants found for UID "

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v3, "releasePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p3, v2, v3, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "releasePersistableUriPermission"

    invoke-static {v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    :goto_0
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/android/server/uri/GrantUri;

    const/4 v4, 0x0

    invoke-direct {v3, p4, v4, p1}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    invoke-virtual {p0, v1, v3}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v3

    new-instance v5, Lcom/android/server/uri/GrantUri;

    const/16 v6, 0x80

    invoke-direct {v5, p4, v6, p1}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    invoke-virtual {p0, v1, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p4

    if-nez v3, :cond_2

    if-nez p4, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " and Uri "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v4

    invoke-virtual {p0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result p1

    or-int/2addr v4, p1

    invoke-virtual {p0, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_5
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V
    .locals 4

    iget v0, p1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "} "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->addToHistoryLocked(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V
    .locals 11

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Must narrow by either package or user"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_a

    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    const/4 v6, 0x1

    if-eq p2, v0, :cond_2

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne p2, v7, :cond_9

    :cond_2
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_5

    if-nez p4, :cond_4

    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_5
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "downloads"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez p3, :cond_6

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_7

    move v9, v0

    goto :goto_3

    :cond_7
    const/16 v9, -0x41

    :goto_3
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v9

    or-int/2addr v3, v9

    iget v9, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v8, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/uri/UriGrantsManagerService;->addToHistoryLocked(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_9
    add-int/2addr v2, v6

    goto/16 :goto_1

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_b
    return-void
.end method

.method public final revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V
    .locals 9

    iget v0, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const-string v1, "-"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p5, :cond_4

    iget-object p5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/ArrayMap;

    if-eqz p5, :cond_b

    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v2

    move v2, v3

    :goto_0
    if-ltz v4, :cond_2

    invoke-virtual {p5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_0

    iget-object v6, v5, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v7, v6, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v7, v0, :cond_1

    iget-object v6, v6, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v7, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_1

    or-int/lit8 v6, p4, 0x40

    invoke-virtual {v5, v6, v3}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v6

    or-int/2addr v2, v6

    iget v6, v5, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v6, :cond_1

    invoke-virtual {p5, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v5, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/uri/UriGrantsManagerService;->addToHistoryLocked(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v2

    move p5, v3

    :goto_2
    if-ltz p2, :cond_a

    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->keyAt(I)I

    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_3
    if-ltz v5, :cond_8

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_5

    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_5

    :cond_5
    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v8, v7, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v8, v0, :cond_7

    iget-object v7, v7, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v8, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_7

    or-int/lit8 v7, p4, 0x40

    if-nez p1, :cond_6

    move v8, v2

    goto :goto_4

    :cond_6
    move v8, v3

    :goto_4
    invoke-virtual {v6, v7, v8}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v7

    or-int/2addr p5, v7

    iget v7, v6, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v7, :cond_7

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v6, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/uri/UriGrantsManagerService;->addToHistoryLocked(Ljava/lang/String;)V

    :cond_7
    :goto_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_9
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_2

    :cond_a
    if-eqz p5, :cond_b

    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_b
    return-void
.end method

.method public final schedulePersistUriGrants()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 7

    const-string/jumbo v0, "No persistable permission grants found for UID "

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v3, "takePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p3, v2, v3, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    goto :goto_0

    :cond_0
    const-string/jumbo p3, "takePersistableUriPermission"

    invoke-static {p3}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    :goto_0
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/android/server/uri/GrantUri;

    const/4 v3, 0x0

    invoke-direct {v2, p4, v3, p1}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    invoke-virtual {p0, p3, v2}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v2

    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/16 v5, 0x80

    invoke-direct {v4, p4, v5, p1}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    invoke-virtual {p0, p3, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p4

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget v5, v2, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v5, p2

    if-ne v5, p2, :cond_1

    move v5, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    move v5, v3

    :goto_1
    if-eqz p4, :cond_2

    iget v6, p4, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v6, p2

    if-ne v6, p2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " and Uri "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v2, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v3

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {p4, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result p1

    or-int/2addr v3, p1

    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrantsLocked(I)Z

    move-result p1

    or-int/2addr p1, v3

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_7
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
