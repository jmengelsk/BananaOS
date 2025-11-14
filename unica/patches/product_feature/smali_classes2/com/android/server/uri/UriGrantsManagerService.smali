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
    .registers 12

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    const/4 p1, 0x0

    if-eqz p0, :cond_53

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_11
    if-ltz v0, :cond_53

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/GrantUri;

    iget v3, v2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v3, p3, :cond_1f

    if-nez p4, :cond_50

    :cond_1f
    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_35

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4d

    :cond_35
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, p1

    :goto_3d
    if-ge v5, v4, :cond_4c

    aget-object v6, v3, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    move v2, v1

    goto :goto_4d

    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_4c
    move v2, p1

    :goto_4d
    if-eqz v2, :cond_50

    return v1

    :cond_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_53
    return p1
.end method

.method public static -$$Nest$mreadGrantedUriPermissionsLocked(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 21

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Failed reading Uri grants"

    const-string/jumbo v2, "UriGrantsManagerService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    :try_start_f
    iget-object v6, v0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_15} :catch_127
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_124
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_15} :catch_121
    .catchall {:try_start_f .. :try_end_15} :catchall_11e

    :try_start_15
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v7

    :goto_19
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_118

    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    if-ne v8, v10, :cond_10d

    const-string/jumbo v8, "uri-grant"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10d

    const-string/jumbo v8, "userHandle"

    const/16 v9, -0x2710

    invoke-interface {v7, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v9, :cond_3d

    move v10, v8

    goto :goto_4c

    :cond_3d
    const-string/jumbo v8, "sourceUserId"

    invoke-interface {v7, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "targetUserId"

    invoke-interface {v7, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v10, v9

    :goto_4c
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

    if-eqz v3, :cond_e5

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e5

    iget-object v4, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_97
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_97} :catch_e2
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_97} :catch_de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_97} :catch_da
    .catchall {:try_start_15 .. :try_end_97} :catchall_d6

    move-object/from16 v19, v6

    const-wide/16 v5, 0x2000

    :try_start_9b
    invoke-virtual {v4, v11, v5, v6, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_111

    new-instance v5, Lcom/android/server/uri/GrantUri;

    if-eqz v16, :cond_a9

    const/16 v6, 0x80

    goto :goto_aa

    :cond_a9
    const/4 v6, 0x0

    :goto_aa
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

    goto :goto_111

    :catchall_c5
    move-exception v0

    :goto_c6
    move-object/from16 v5, v19

    goto/16 :goto_136

    :catch_ca
    move-exception v0

    :goto_cb
    move-object/from16 v5, v19

    goto :goto_129

    :catch_ce
    move-exception v0

    :goto_cf
    move-object/from16 v5, v19

    goto/16 :goto_132

    :catch_d3
    :goto_d3
    move-object/from16 v5, v19

    goto :goto_12c

    :catchall_d6
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_c6

    :catch_da
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_cb

    :catch_de
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_cf

    :catch_e2
    move-object/from16 v19, v6

    goto :goto_d3

    :cond_e5
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
    :try_end_10c
    .catch Ljava/io/FileNotFoundException; {:try_start_9b .. :try_end_10c} :catch_d3
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_10c} :catch_ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9b .. :try_end_10c} :catch_ca
    .catchall {:try_start_9b .. :try_end_10c} :catchall_c5

    goto :goto_111

    :cond_10d
    move-wide/from16 v17, v3

    move-object/from16 v19, v6

    :cond_111
    :goto_111
    move-wide/from16 v3, v17

    move-object/from16 v6, v19

    const/4 v5, 0x0

    goto/16 :goto_19

    :cond_118
    move-object/from16 v19, v6

    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_11e
    move-exception v0

    const/4 v5, 0x0

    goto :goto_136

    :catch_121
    move-exception v0

    const/4 v5, 0x0

    goto :goto_129

    :catch_124
    move-exception v0

    const/4 v5, 0x0

    goto :goto_132

    :catch_127
    const/4 v5, 0x0

    goto :goto_12c

    :goto_129
    :try_start_129
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12c
    .catchall {:try_start_129 .. :try_end_12c} :catchall_130

    :goto_12c
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_13a

    :catchall_130
    move-exception v0

    goto :goto_136

    :goto_132
    :try_start_132
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_135
    .catchall {:try_start_132 .. :try_end_135} :catchall_130

    goto :goto_12c

    :goto_136
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :goto_13a
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/uri/UriGrantsManagerService;->TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

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

    if-eqz p2, :cond_3e

    invoke-direct {p1, v0, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_41

    :cond_3e
    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :goto_41
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    return-void
.end method

.method public static createForTest(Ljava/io/File;)Lcom/android/server/uri/UriGrantsManagerService;
    .registers 3

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
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Isolated process not allowed to call "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addToHistoryLocked(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mUriPermissionHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mUriPermissionHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_10
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
    .registers 5

    invoke-static {p1, p2, p3, p4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    return p0
.end method

.method public final checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z
    .registers 7

    if-ltz p2, :cond_7f

    invoke-static {p3}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_62

    if-nez v0, :cond_22

    goto :goto_62

    :cond_22
    iget-object v0, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_4f

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

    :cond_4f
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_62

    :cond_56
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_59
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_5f

    throw p0

    :cond_62
    :goto_62
    const/4 p0, 0x1

    return p0

    :cond_64
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

    :cond_7f
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
    .registers 24

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    move/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    if-eqz v3, :cond_117

    const/4 v4, 0x0

    if-nez v1, :cond_14

    return-object v4

    :cond_14
    invoke-virtual {v1}, Landroid/content/Intent;->getContentUserHint()I

    move-result v0

    const/4 v6, -0x2

    if-ne v0, v6, :cond_1f

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    :cond_1f
    move v10, v0

    const-string/jumbo v6, "UriGrantsManagerService"

    const-string/jumbo v11, "android.intent.extra.STREAM"

    :try_start_26
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v1, v11, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_4a

    invoke-static {v10, v5, v0}, Lcom/android/server/uri/GrantUri;->resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v0

    invoke-virtual {p0, v8, v0, v2, v9}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    :try_end_37
    .catch Landroid/os/BadParcelableException; {:try_start_26 .. :try_end_37} :catch_38

    goto :goto_4a

    :catch_38
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed to unparcel an URI in EXTRA_STREAM, skipping requireContentUriPermissionFromCaller: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    :goto_4a
    :try_start_4a
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v1, v11, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    :goto_58
    if-ltz v11, :cond_7c

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-static {v10, v5, v12}, Lcom/android/server/uri/GrantUri;->resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v12

    invoke-virtual {p0, v8, v12, v2, v9}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    :try_end_67
    .catch Landroid/os/BadParcelableException; {:try_start_4a .. :try_end_67} :catch_6a

    add-int/lit8 v11, v11, -0x1

    goto :goto_58

    :catch_6a
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to unparcel an ArrayList of URIs in EXTRA_STREAM, skipping requireContentUriPermissionFromCaller: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    if-nez v0, :cond_89

    if-nez v11, :cond_89

    return-object v4

    :cond_89
    if-eqz v7, :cond_91

    iget v1, v7, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move/from16 v14, p6

    :cond_8f
    move v6, v1

    goto :goto_9f

    :cond_91
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v12, 0x10000000

    move/from16 v14, p6

    invoke-virtual {v1, v3, v12, v13, v14}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-gez v1, :cond_8f

    return-object v4

    :goto_9f
    if-eqz v0, :cond_bc

    invoke-static {v10, v5, v0}, Lcom/android/server/uri/GrantUri;->resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v4

    invoke-virtual {p0, v8, v4, v2, v9}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v6

    if-lez v6, :cond_bc

    if-nez v7, :cond_b7

    new-instance v0, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v0, v6, v5, v3}, Lcom/android/server/uri/NeededUriGrants;-><init>(IILjava/lang/String;)V

    move-object v7, v0

    :cond_b7
    iget-object v0, v7, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_bc
    if-eqz v11, :cond_116

    const/4 v0, 0x0

    :goto_bf
    invoke-virtual {v11}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_115

    invoke-virtual {v11, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_ea

    invoke-static {v10, v5, v4}, Lcom/android/server/uri/GrantUri;->resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v4

    invoke-virtual {p0, v8, v4, v2, v9}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v6

    if-lez v6, :cond_106

    if-nez v7, :cond_e4

    new-instance v7, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v7, v6, v5, v3}, Lcom/android/server/uri/NeededUriGrants;-><init>(IILjava/lang/String;)V

    :cond_e4
    iget-object v1, v7, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_106

    :cond_ea
    move v12, v6

    invoke-virtual {v11, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_103

    move-object v1, p0

    move/from16 v2, p1

    move-object v6, v7

    move v7, v14

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v4

    if-eqz v4, :cond_104

    move-object v7, v4

    :goto_101
    move v6, v12

    goto :goto_106

    :cond_103
    move-object v6, v7

    :cond_104
    move-object v7, v6

    goto :goto_101

    :cond_106
    :goto_106
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v14, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    goto :goto_bf

    :cond_115
    move-object v6, v7

    :cond_116
    return-object v7

    :cond_117
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "targetPkg"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-static {v9}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v1, :cond_11

    goto :goto_20

    :cond_11
    iget-object v1, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    :goto_20
    move v1, v10

    goto :goto_23

    :cond_22
    move v1, v11

    :goto_23
    const/4 v12, -0x1

    if-nez v1, :cond_28

    goto/16 :goto_106

    :cond_28
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iget-object v2, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_3d

    if-nez v1, :cond_39

    goto :goto_3d

    :cond_39
    :goto_39
    move/from16 v3, p1

    goto/16 :goto_cd

    :cond_3d
    :goto_3d
    const-string/jumbo v1, "com.android.settings.files"

    iget-object v2, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string/jumbo v1, "com.android.settings.module_licenses"

    iget-object v2, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    goto :goto_39

    :cond_5c
    iget-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v1, :cond_b3

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

    if-eqz v1, :cond_99

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_99

    const-string/jumbo v2, "com.samsung.android.exempt.GRANT_URI_PERMISSION"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_99

    const-string/jumbo v1, "UriGrantsManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Requested grant to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    :cond_99
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

    :cond_b3
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

    :goto_cd
    iget v1, v8, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_f3

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

    :cond_f3
    if-gez p5, :cond_109

    if-eqz v7, :cond_109

    iget-object v2, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v4, 0x10000000

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-gez v2, :cond_107

    :goto_106
    return v12

    :cond_107
    move v6, v2

    goto :goto_10b

    :cond_109
    move/from16 v6, p5

    :goto_10b
    if-ltz v6, :cond_115

    invoke-virtual {v0, v1, v8, v6, v9}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v2

    if-eqz v2, :cond_164

    :goto_113
    move v2, v11

    goto :goto_165

    :cond_115
    iget-boolean v2, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    and-int/lit8 v4, v9, 0x1

    if-eqz v4, :cond_120

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v5, :cond_120

    move v2, v10

    :cond_120
    and-int/lit8 v5, v9, 0x2

    if-eqz v5, :cond_129

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v7, :cond_129

    move v2, v10

    :cond_129
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v7, :cond_161

    array-length v7, v7

    move v13, v10

    :goto_12f
    if-ge v13, v7, :cond_161

    iget-object v14, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v14, v14, v13

    if-eqz v14, :cond_15e

    iget-object v15, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15e

    if-eqz v4, :cond_150

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v4, v4, v13

    invoke-virtual {v4}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_150

    move v2, v10

    :cond_150
    if-eqz v5, :cond_161

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v4, v4, v13

    invoke-virtual {v4}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_161

    move v2, v10

    goto :goto_161

    :cond_15e
    add-int/lit8 v13, v13, 0x1

    goto :goto_12f

    :cond_161
    :goto_161
    if-eqz v2, :cond_164

    goto :goto_113

    :cond_164
    move v2, v10

    :goto_165
    iget-boolean v4, v1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v4, :cond_16a

    move v2, v10

    :cond_16a
    and-int/lit16 v4, v9, 0xc0

    if-nez v4, :cond_170

    move v7, v11

    goto :goto_171

    :cond_170
    move v7, v10

    :goto_171
    if-eqz v7, :cond_191

    if-eqz v2, :cond_191

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

    :cond_191
    if-ltz v6, :cond_1a6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget v4, v8, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v2, v4, :cond_1a6

    const/4 v5, 0x0

    move-object v2, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v5

    if-eqz v5, :cond_1a8

    move v5, v11

    goto :goto_1a9

    :cond_1a6
    move-object v2, v8

    move v4, v9

    :cond_1a8
    move v5, v10

    :goto_1a9
    iget-boolean v8, v1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d0

    iget-object v8, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v8, v8

    move v9, v10

    :goto_1b7
    if-ge v9, v8, :cond_1d1

    iget-object v12, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v12, v12, v9

    if-eqz v12, :cond_1cd

    iget-object v13, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1cd

    move v10, v11

    goto :goto_1d1

    :cond_1cd
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b7

    :cond_1d0
    move v10, v8

    :cond_1d1
    :goto_1d1
    if-nez v10, :cond_234

    if-eqz v5, :cond_206

    if-eqz v7, :cond_1d8

    goto :goto_234

    :cond_1d8
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

    :cond_206
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

    :cond_234
    :goto_234
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v5

    if-nez v5, :cond_291

    iget-object v5, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_23d
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    monitor-exit v5
    :try_end_242
    .catchall {:try_start_23d .. :try_end_242} :catchall_28e

    if-nez v0, :cond_291

    const-string/jumbo v0, "android.permission.MANAGE_DOCUMENTS"

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_271

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

    :cond_271
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

    :catchall_28e
    move-exception v0

    :try_start_28f
    monitor-exit v5
    :try_end_290
    .catchall {:try_start_28f .. :try_end_290} :catchall_28e

    throw v0

    :cond_291
    return v6
.end method

.method public final checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_18

    if-nez v0, :cond_b

    goto :goto_18

    :cond_b
    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/android/server/uri/UriGrantsManagerService;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_18

    :cond_17
    return v3

    :cond_18
    :goto_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-object v0, p3

    :try_start_1d
    new-instance p3, Lcom/android/server/uri/GrantUri;

    invoke-direct {p3, p5, p4, v0}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    const/4 p5, -0x1

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result p0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2b

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2b
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-object v5, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cc

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    if-ne v5, v3, :cond_1b

    goto/16 :goto_ca

    :cond_1b
    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v7, 0x0

    if-nez v5, :cond_22

    goto/16 :goto_cb

    :cond_22
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_28

    move v5, v6

    goto :goto_29

    :cond_28
    move v5, v7

    :goto_29
    and-int/lit8 v8, v4, 0x2

    if-nez v8, :cond_2f

    move v8, v6

    goto :goto_30

    :cond_2f
    move v8, v7

    :goto_30
    if-nez v5, :cond_3f

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v9, :cond_3f

    if-eqz p5, :cond_3f

    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3f

    move v5, v6

    :cond_3f
    if-nez v8, :cond_4e

    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v9, :cond_4e

    if-eqz p5, :cond_4e

    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4e

    move v8, v6

    :cond_4e
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v9, :cond_54

    move v9, v6

    goto :goto_55

    :cond_54
    move v9, v7

    :goto_55
    iget-object v10, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v10, :cond_5b

    move v10, v6

    goto :goto_5c

    :cond_5b
    move v10, v7

    :goto_5c
    iget-object v11, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v11, :cond_9e

    iget-object v12, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    array-length v13, v11

    :cond_67
    :goto_67
    if-lez v13, :cond_9e

    if-eqz v5, :cond_6d

    if-nez v8, :cond_9e

    :cond_6d
    add-int/lit8 v13, v13, -0x1

    aget-object v14, v11, v13

    invoke-virtual {v14, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_67

    if-nez v5, :cond_8a

    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8a

    if-eqz p5, :cond_89

    invoke-virtual {v0, v15, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_89

    move v5, v6

    goto :goto_8a

    :cond_89
    move v9, v7

    :cond_8a
    :goto_8a
    if-nez v8, :cond_67

    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_67

    if-eqz p5, :cond_9c

    invoke-virtual {v0, v14, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_9c

    move v8, v6

    goto :goto_67

    :cond_9c
    move v10, v7

    goto :goto_67

    :cond_9e
    if-eqz v9, :cond_a1

    move v5, v6

    :cond_a1
    if-eqz v10, :cond_a4

    move v8, v6

    :cond_a4
    iget-boolean v9, v1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v9, :cond_c3

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v1, v9, :cond_c1

    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/ActivityManagerInternal;->checkContentProviderUriPermission(Landroid/net/Uri;III)I

    move-result v0

    if-nez v0, :cond_c1

    goto :goto_c3

    :cond_c1
    move v0, v7

    goto :goto_c4

    :cond_c3
    :goto_c3
    move v0, v6

    :goto_c4
    if-eqz v5, :cond_cb

    if-eqz v8, :cond_cb

    if-eqz v0, :cond_cb

    :goto_ca
    return v6

    :cond_cb
    :goto_cb
    return v7

    :cond_cc
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must never hold local mLock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .registers 11

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_15

    const/4 v0, 0x1

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p3, v2, v0}, Lcom/android/server/uri/UriGrantsManagerService;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
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
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z
    .registers 13

    and-int/lit8 v0, p3, 0x40

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    if-nez p2, :cond_d

    goto/16 :goto_75

    :cond_d
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    const/4 p2, 0x0

    if-nez p0, :cond_1a

    goto/16 :goto_79

    :cond_1a
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    const/4 v4, 0x2

    if-eqz v3, :cond_3e

    and-int/lit8 v5, p3, 0x3

    iget v6, v3, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_2c

    move v3, v1

    goto :goto_3b

    :cond_2c
    iget v6, v3, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_33

    move v3, v4

    goto :goto_3b

    :cond_33
    iget v3, v3, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_3a

    move v3, v2

    goto :goto_3b

    :cond_3a
    move v3, p2

    :goto_3b
    if-lt v3, v0, :cond_3e

    goto :goto_75

    :cond_3e
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v5, p2

    :goto_43
    if-ge v5, v3, :cond_79

    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v8, v7, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v8, :cond_76

    iget-object v8, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v7, v7, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v8, v7}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_76

    and-int/lit8 v7, p3, 0x3

    iget v8, v6, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_64

    move v6, v1

    goto :goto_73

    :cond_64
    iget v8, v6, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_6b

    move v6, v4

    goto :goto_73

    :cond_6b
    iget v6, v6, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_72

    move v6, v2

    goto :goto_73

    :cond_72
    move v6, p2

    :goto_73
    if-lt v6, v0, :cond_76

    :goto_75
    return v2

    :cond_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :cond_79
    :goto_79
    return p2
.end method

.method public final clearGrantedUriPermissions(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

    const-string/jumbo v2, "clearGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_f
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final enforceRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;ILjava/lang/Integer;)V
    .registers 7

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_47

    const-string/jumbo v0, "content"

    iget-object v1, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_47

    :cond_18
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->hasRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)Z

    move-result p0

    if-eqz p0, :cond_20

    goto/16 :goto_a1

    :cond_20
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

    :cond_47
    :goto_47
    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_a1

    const-string/jumbo p1, "content"

    iget-object v0, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a1

    if-nez p4, :cond_61

    goto :goto_a1

    :cond_61
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->hasRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)Z

    move-result p1

    if-nez p1, :cond_a1

    iget-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_6f
    iget-object p3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_8c

    iget-object p3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8c

    :catchall_8a
    move-exception p0

    goto :goto_9f

    :cond_8c
    :goto_8c
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

    :goto_9f
    monitor-exit p1
    :try_end_a0
    .catchall {:try_start_6f .. :try_end_a0} :catchall_8a

    throw p0

    :cond_a1
    :goto_a1
    return-void
.end method

.method public final findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 8

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_13

    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_13
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    if-nez v1, :cond_95

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

    if-lt p0, p3, :cond_95

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    rem-int/lit8 p0, p0, 0x64

    if-nez p0, :cond_95

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

    :cond_95
    return-object v1
.end method

.method public final findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 3

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/uri/UriPermission;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 13

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

    const-string/jumbo v2, "getGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_5b

    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    move v6, v3

    :goto_26
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_58

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_3f

    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    goto :goto_3f

    :catchall_3d
    move-exception p0

    goto :goto_62

    :cond_3f
    :goto_3f
    iget v8, v7, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-ne v8, p2, :cond_55

    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_55

    new-instance v8, Landroid/app/GrantedUriPermission;

    iget-object v9, v7, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v7, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Landroid/app/GrantedUriPermission;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_13 .. :try_end_5c} :catchall_3d

    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :goto_62
    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_3d

    throw p0
.end method

.method public getLocalService()Lcom/android/server/uri/UriGrantsManagerInternal;
    .registers 2

    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;)V

    return-object v0
.end method

.method public final getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;
    .registers 11

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
    .registers 16

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

    if-ne v2, v1, :cond_c3

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    if-eqz p2, :cond_78

    :try_start_32
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_4b

    const-string/jumbo p0, "UriGrantsManagerService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ba

    :catchall_48
    move-exception p0

    goto/16 :goto_c1

    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-ge v4, p2, :cond_ba

    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/uri/UriPermission;

    iget-object v0, p2, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    if-eqz p3, :cond_65

    iget v0, p2, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v0, :cond_75

    :cond_65
    new-instance v0, Landroid/content/UriPermission;

    iget-object v1, p2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v1, v1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget v5, p2, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    iget-wide v6, p2, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-direct {v0, v1, v5, v6, v7}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_78
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    move v0, v4

    :goto_7f
    if-ge v0, p2, :cond_ba

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    move v5, v4

    :goto_8a
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_b7

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b4

    if-eqz p3, :cond_a4

    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_b4

    :cond_a4
    new-instance v7, Landroid/content/UriPermission;

    iget-object v8, v6, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v8, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget v9, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    iget-wide v10, v6, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b4
    add-int/lit8 v5, v5, 0x1

    goto :goto_8a

    :cond_b7
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    :cond_ba
    :goto_ba
    monitor-exit v3
    :try_end_bb
    .catchall {:try_start_32 .. :try_end_bb} :catchall_48

    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :goto_c1
    :try_start_c1
    monitor-exit v3
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_48

    throw p0

    :cond_c3
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p2, "Package "

    const-string p3, " does not belong to calling UID "

    invoke-static {v1, p2, p1, p3}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .registers 16

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

    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    iget-object v0, v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->this$0:Lcom/android/server/uri/UriPermissionOwner;

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_74

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-eq p2, p1, :cond_3c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne p1, v1, :cond_33

    goto :goto_3c

    :cond_33
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "nice try"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    :goto_3c
    if-eqz p3, :cond_6b

    if-eqz p4, :cond_62

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

    if-gez p1, :cond_5c

    return-void

    :cond_5c
    move p4, p6

    move-object p5, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    return-void

    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "null uri"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "null target"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_74
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
    .registers 13

    invoke-static {p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    const/16 v3, 0x3e8

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_33

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

    :cond_33
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_36
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p2, p1, p3}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_f5

    and-int/lit8 p3, p4, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_45

    move v3, v2

    goto :goto_46

    :cond_45
    move v3, v1

    :goto_46
    and-int/lit8 v4, p4, 0x3

    if-eqz v3, :cond_4f

    iget v3, p2, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    or-int/2addr v3, v4

    iput v3, p2, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    :cond_4f
    if-nez p5, :cond_58

    iget p4, p2, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    or-int/2addr p4, v4

    iput p4, p2, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    goto/16 :goto_d7

    :cond_58
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_97

    monitor-enter p2

    :try_start_5d
    iget-object v3, p2, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-nez v3, :cond_73

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, p2, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    iget v3, p2, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    or-int/2addr v3, v2

    iput v3, p2, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    invoke-virtual {p2}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    goto :goto_73

    :catchall_70
    move-exception v0

    move-object p0, v0

    goto :goto_95

    :cond_73
    :goto_73
    iget-object v3, p2, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v3, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    monitor-enter p5
    :try_end_7c
    .catchall {:try_start_5d .. :try_end_7c} :catchall_70

    :try_start_7c
    iget-object v3, p5, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-nez v3, :cond_8a

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, p5, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    goto :goto_8a

    :catchall_87
    move-exception v0

    move-object p0, v0

    goto :goto_91

    :cond_8a
    :goto_8a
    iget-object v3, p5, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit p5

    goto :goto_93

    :goto_91
    monitor-exit p5
    :try_end_92
    .catchall {:try_start_7c .. :try_end_92} :catchall_87

    :try_start_92
    throw p0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_70

    :cond_93
    :goto_93
    monitor-exit p2

    goto :goto_97

    :goto_95
    :try_start_95
    monitor-exit p2
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_70

    throw p0

    :cond_97
    :goto_97
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_d7

    monitor-enter p2

    :try_start_9c
    iget-object p4, p2, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-nez p4, :cond_b3

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object p4

    iput-object p4, p2, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    iget p4, p2, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    or-int/lit8 p4, p4, 0x2

    iput p4, p2, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    invoke-virtual {p2}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    goto :goto_b3

    :catchall_b0
    move-exception v0

    move-object p0, v0

    goto :goto_d5

    :cond_b3
    :goto_b3
    iget-object p4, p2, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {p4, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d3

    monitor-enter p5
    :try_end_bc
    .catchall {:try_start_9c .. :try_end_bc} :catchall_b0

    :try_start_bc
    iget-object p4, p5, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-nez p4, :cond_ca

    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object p4

    iput-object p4, p5, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    goto :goto_ca

    :catchall_c7
    move-exception v0

    move-object p0, v0

    goto :goto_d1

    :cond_ca
    :goto_ca
    iget-object p4, p5, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p4, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit p5

    goto :goto_d3

    :goto_d1
    monitor-exit p5
    :try_end_d2
    .catchall {:try_start_bc .. :try_end_d2} :catchall_c7

    :try_start_d2
    throw p0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_b0

    :cond_d3
    :goto_d3
    monitor-exit p2

    goto :goto_d7

    :goto_d5
    :try_start_d5
    monitor-exit p2
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_b0

    throw p0

    :cond_d7
    :goto_d7
    invoke-virtual {p2}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    move p2, v1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget-object p1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p3, :cond_ed

    move v6, v2

    goto :goto_ee

    :cond_ed
    move v6, p2

    :goto_ee
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    return-void

    :catchall_f5
    move-exception v0

    move-object p0, v0

    :try_start_f7
    monitor-exit v1
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f5

    throw p0
.end method

.method public final hasRequireContentUriPermissionFromCallerUnlocked(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)Z
    .registers 8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isRequiredContentUriPermissionRead(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    move v0, v1

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v2

    :goto_16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isRequiredContentUriPermissionWrite(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x2

    invoke-virtual {p0, p2, p3, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_2a

    :cond_28
    move p0, v1

    goto :goto_2b

    :cond_2a
    :goto_2a
    move p0, v2

    :goto_2b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_37

    if-nez v0, :cond_3b

    if-eqz p0, :cond_3c

    goto :goto_3b

    :cond_37
    if-eqz v0, :cond_3c

    if-eqz p0, :cond_3c

    :cond_3b
    :goto_3b
    return v2

    :cond_3c
    return v1
.end method

.method public final maybePrunePersistedUriGrantsLocked(I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x200

    if-ge v1, v2, :cond_15

    return v0

    :cond_15
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    iget v4, v3, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v4, :cond_21

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    if-gtz p1, :cond_3d

    return v0

    :cond_3d
    new-instance v2, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_45
    if-ge v0, p1, :cond_57

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    invoke-virtual {p0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_57
    const/4 p0, 0x1

    return p0
.end method

.method public final releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 12

    const-string/jumbo v0, "No permission grants found for UID "

    if-eqz p3, :cond_19

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v3, "releasePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p3, v2, v3, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    goto :goto_23

    :cond_19
    const-string/jumbo v1, "releasePersistableUriPermission"

    invoke-static {v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    :goto_23
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2a
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

    if-nez v3, :cond_66

    if-nez p4, :cond_66

    if-eqz p3, :cond_46

    goto :goto_66

    :cond_46
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

    :catchall_64
    move-exception p0

    goto :goto_80

    :cond_66
    :goto_66
    if-eqz v3, :cond_6f

    invoke-virtual {v3, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v4

    invoke-virtual {p0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    :cond_6f
    if-eqz p4, :cond_79

    invoke-virtual {p4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result p1

    or-int/2addr v4, p1

    invoke-virtual {p0, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    :cond_79
    if-eqz v4, :cond_7e

    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_7e
    monitor-exit v2

    return-void

    :goto_80
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_2a .. :try_end_81} :catchall_64

    throw p0
.end method

.method public final removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V
    .registers 6

    iget v0, p1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eqz v0, :cond_5

    goto :goto_49

    :cond_5
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    goto :goto_49

    :cond_12
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

    if-eqz p1, :cond_49

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_49
    :goto_49
    return-void
.end method

.method public final removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V
    .registers 16

    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    if-eqz p1, :cond_6

    goto :goto_f

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Must narrow by either package or user"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v2, v1, :cond_bc

    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    const/4 v6, 0x1

    if-eq p2, v0, :cond_30

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne p2, v7, :cond_b9

    :cond_30
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_38
    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_58

    if-nez p4, :cond_50

    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_58

    :cond_50
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    :cond_58
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "downloads"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    if-nez p3, :cond_6c

    goto :goto_38

    :cond_6c
    if-eqz p3, :cond_70

    move v9, v0

    goto :goto_72

    :cond_70
    const/16 v9, -0x41

    :goto_72
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v9

    or-int/2addr v3, v9

    iget v9, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v9, :cond_38

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

    goto :goto_38

    :cond_aa
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b9

    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_b9
    add-int/2addr v2, v6

    goto/16 :goto_17

    :cond_bc
    if-eqz v3, :cond_c1

    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_c1
    return-void
.end method

.method public final revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V
    .registers 15

    iget v0, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const-string v1, "-"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p5, :cond_84

    iget-object p5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/ArrayMap;

    if-eqz p5, :cond_114

    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v2

    move v2, v3

    :goto_18
    if-ltz v4, :cond_73

    invoke-virtual {p5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_2b

    iget-object v6, v5, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_70

    :cond_2b
    iget-object v6, v5, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v7, v6, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v7, v0, :cond_70

    iget-object v6, v6, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v7, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_70

    or-int/lit8 v6, p4, 0x40

    invoke-virtual {v5, v6, v3}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v6

    or-int/2addr v2, v6

    iget v6, v5, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v6, :cond_70

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

    :cond_70
    :goto_70
    add-int/lit8 v4, v4, -0x1

    goto :goto_18

    :cond_73
    invoke-virtual {p5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7e

    iget-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_7e
    if-eqz v2, :cond_114

    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    return-void

    :cond_84
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v2

    move p5, v3

    :goto_8c
    if-ltz p2, :cond_10f

    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->keyAt(I)I

    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_a0
    if-ltz v5, :cond_100

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_b3

    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b3

    goto :goto_fd

    :cond_b3
    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v8, v7, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v8, v0, :cond_fd

    iget-object v7, v7, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v8, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_fd

    or-int/lit8 v7, p4, 0x40

    if-nez p1, :cond_c9

    move v8, v2

    goto :goto_ca

    :cond_c9
    move v8, v3

    :goto_ca
    invoke-virtual {v6, v7, v8}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v7

    or-int/2addr p5, v7

    iget v7, v6, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v7, :cond_fd

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

    :cond_fd
    :goto_fd
    add-int/lit8 v5, v5, -0x1

    goto :goto_a0

    :cond_100
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10b

    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_10b
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_8c

    :cond_10f
    if-eqz p5, :cond_114

    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_114
    return-void
.end method

.method public final schedulePersistUriGrants()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_14
    return-void
.end method

.method public final takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 12

    const-string/jumbo v0, "No persistable permission grants found for UID "

    if-eqz p3, :cond_19

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v3, "takePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p3, v2, v3, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    goto :goto_23

    :cond_19
    const-string/jumbo p3, "takePersistableUriPermission"

    invoke-static {p3}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    :goto_23
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2a
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

    if-eqz v2, :cond_4b

    iget v5, v2, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v5, p2

    if-ne v5, p2, :cond_4b

    move v5, v4

    goto :goto_4c

    :catchall_49
    move-exception p0

    goto :goto_91

    :cond_4b
    move v5, v3

    :goto_4c
    if-eqz p4, :cond_54

    iget v6, p4, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v6, p2

    if-ne v6, p2, :cond_54

    goto :goto_55

    :cond_54
    move v4, v3

    :goto_55
    if-nez v5, :cond_78

    if-eqz v4, :cond_5a

    goto :goto_78

    :cond_5a
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

    :cond_78
    :goto_78
    if-eqz v5, :cond_7e

    invoke-virtual {v2, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v3

    :cond_7e
    if-eqz v4, :cond_85

    invoke-virtual {p4, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result p1

    or-int/2addr v3, p1

    :cond_85
    invoke-virtual {p0, p3}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrantsLocked(I)Z

    move-result p1

    or-int/2addr p1, v3

    if-eqz p1, :cond_8f

    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_8f
    monitor-exit v1

    return-void

    :goto_91
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_2a .. :try_end_92} :catchall_49

    throw p0
.end method
