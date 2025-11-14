.class public final Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static instance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

.field public static mContext:Landroid/content/Context;

.field public static final sColorThemeOverlayId:Landroid/content/om/OverlayIdentifier;

.field public static sGlobalColorThemeSeq:I

.field public static sIsBackgroundAllowed:Z

.field public static sIsValidatorAvailable:Z


# instance fields
.field public mIsSuccessLoadMetadata:Z

.field public mIsThemeParkApplied:Z

.field public mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;

.field public mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/content/om/OverlayIdentifier;

    const-string/jumbo v1, "android"

    const-string/jumbo v2, "SemWT_G_MonetPalette"

    invoke-direct {v0, v1, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sColorThemeOverlayId:Landroid/content/om/OverlayIdentifier;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sGlobalColorThemeSeq:I

    sput-boolean v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsBackgroundAllowed:Z

    sput-boolean v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsValidatorAvailable:Z

    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_23

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->deleteFile(Ljava/io/File;)V

    goto :goto_20

    :cond_1d
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_23
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/server/om/OverlayManagerSettingsHelper;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;
    .registers 6

    const-class v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->instance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    if-nez v1, :cond_3c

    new-instance v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsSuccessLoadMetadata:Z

    iput-boolean v2, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsThemeParkApplied:Z

    sget-object v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->sInstance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    if-nez v2, :cond_1e

    new-instance v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-direct {v2, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->sInstance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    :cond_1e
    sget-object p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->sInstance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    iput-object p0, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    new-instance v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;

    invoke-direct {v2, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V

    sget-object p0, Lcom/android/server/om/OverlayPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_37

    :try_start_2a
    sget-object v3, Lcom/android/server/om/OverlayPolicyManager;->policies:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_39

    :try_start_32
    sput-object v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->instance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    iput-object p1, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_37

    goto :goto_3c

    :catchall_37
    move-exception p0

    goto :goto_40

    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    :try_start_3b
    throw p1

    :cond_3c
    :goto_3c
    sget-object p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->instance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_37

    monitor-exit v0

    return-object p0

    :goto_40
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_37

    throw p0
.end method

.method public static increaseColorThemeSeq()V
    .registers 2

    sget v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sGlobalColorThemeSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sGlobalColorThemeSeq:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sGlobalColorThemeSeq:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sGlobalColorThemeSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "debug.wallpaper.theme.seq"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final applyThemeParkWallpaperColor(Landroid/net/Uri;)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->initTemplateMetadataIfNeeded()V

    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    iget-object v1, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    iget-object v0, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/om/wallpapertheme/TemplateManager;->loadTemplateFromUri(Landroid/content/Context;Landroid/net/Uri;)V

    :try_start_c
    sget-object v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_6f

    :try_start_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_26
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_32

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_26

    :cond_32
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "wallpaperColors"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v2, v6

    :goto_44
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5a

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :catchall_58
    move-exception p0

    goto :goto_64

    :cond_5a
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v0, v6, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->applyWallpaperColor(Ljava/util/List;Ljava/util/List;ZZ)V

    iput-boolean v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsThemeParkApplied:Z
    :try_end_60
    .catchall {:try_start_16 .. :try_end_60} :catchall_58

    :try_start_60
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_6f

    return-void

    :goto_64
    if-eqz p1, :cond_6e

    :try_start_66
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception p1

    :try_start_6b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6e
    :goto_6e
    throw p0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6f} :catch_6f

    :catch_6f
    move-exception p0

    const-string/jumbo p1, "SWT_WTM_Wrapper"

    const-string v0, "Failed at applyThemeParkWallpaperColor, e = "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final applyWallpaperColor(Ljava/util/List;Ljava/util/List;ZZ)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    const-string v5, "FAILED at applyWallpaperColor, e="

    const-string/jumbo v6, "[Disable] commit OverlayManagerTransaction, dur:"

    const-string v7, "AppIconBgColor (Light) - "

    const-string/jumbo v8, "[Enable] commit OverlayManagerTransaction, dur1:"

    const-string/jumbo v9, "SWT:applyWallpaperColors, wallpaperColors:"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    sget-object v11, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12, v10}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v11

    const-string/jumbo v12, "SWT_WTM_Wrapper"

    if-eqz v11, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "applyWallpaperColor called by abnormal uid : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3f
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "invoked applyWallpaperColor, isGray="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", colorSS="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", colorGG="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const-wide/16 v13, 0x2000

    :try_start_64
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v14, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->initTemplateMetadataIfNeeded()V

    const/4 v9, 0x0

    if-nez p4, :cond_90

    iget-boolean v11, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsThemeParkApplied:Z

    if-eqz v11, :cond_90

    invoke-virtual {v4}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->setTemplateAsColorTheme()Z

    move-result v11

    if-eqz v11, :cond_90

    iput-boolean v9, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsThemeParkApplied:Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_85} :catch_8b
    .catchall {:try_start_64 .. :try_end_85} :catchall_86

    goto :goto_90

    :catchall_86
    move-exception v0

    move-wide/from16 v16, v13

    goto/16 :goto_1d6

    :catch_8b
    move-exception v0

    move-wide/from16 v16, v13

    goto/16 :goto_1c1

    :cond_90
    :goto_90
    const-string v11, "/data/overlays/themepark/state_applied.txt"

    const-string/jumbo v15, "overlay"

    move-wide/from16 v16, v13

    const-string v13, "FAILED at commit, e="

    if-eqz v1, :cond_157

    :try_start_9b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    iget-object v6, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    invoke-virtual {v6, v1, v2, v3}, Landroid/content/om/wallpapertheme/ThemePalette;->setPalette(Ljava/util/List;Ljava/util/List;Z)V

    new-instance v2, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v2}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    invoke-virtual {v4, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->registerMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    invoke-virtual {v4, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->registerThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    invoke-virtual {v4, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->enableMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    invoke-virtual {v4, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->enableThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    invoke-virtual {v0, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->disableThemeParkOverlays(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_b8} :catch_155
    .catchall {:try_start_9b .. :try_end_b8} :catchall_12d

    :try_start_b8
    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->increaseColorThemeSeq()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    invoke-virtual {v4}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeColor()V

    invoke-virtual {v4}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->applyDynamicColor()V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeState(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v2, v20, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dur2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", AppIconBgColor (Dark) - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_12c} :catch_130
    .catchall {:try_start_b8 .. :try_end_12c} :catchall_12d

    goto :goto_144

    :catchall_12d
    move-exception v0

    goto/16 :goto_1d6

    :catch_130
    move-exception v0

    :try_start_131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    iput-object v10, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    :goto_144
    if-nez p4, :cond_1bd

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1bd

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1bd

    :catch_155
    move-exception v0

    goto :goto_1c1

    :cond_157
    iget-object v7, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    invoke-virtual {v7, v1, v2, v3}, Landroid/content/om/wallpapertheme/ThemePalette;->setPalette(Ljava/util/List;Ljava/util/List;Z)V

    new-instance v1, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {v1}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->disableMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    invoke-virtual {v4, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->disableThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    invoke-virtual {v0, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->disableThemeParkOverlays(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_16a} :catch_155
    .catchall {:try_start_131 .. :try_end_16a} :catchall_12d

    :try_start_16a
    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->increaseColorThemeSeq()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    invoke-virtual {v4}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeColor()V

    invoke-virtual {v4, v9}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeState(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_19a} :catch_19b
    .catchall {:try_start_16a .. :try_end_19a} :catchall_12d

    goto :goto_1af

    :catch_19b
    move-exception v0

    :try_start_19c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    iput-object v10, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    :goto_1af
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1bd

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1bd} :catch_155
    .catchall {:try_start_19c .. :try_end_1bd} :catchall_12d

    :cond_1bd
    :goto_1bd
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1d5

    :goto_1c1
    :try_start_1c1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    iput-object v10, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;
    :try_end_1d4
    .catchall {:try_start_1c1 .. :try_end_1d4} :catchall_12d

    goto :goto_1bd

    :goto_1d5
    return-void

    :goto_1d6
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final disableThemeParkOverlays(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerSettingsHelper;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v3}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v3}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ThemePark_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_42
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_53
    if-ge v3, v0, :cond_61

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {p1, v4, v2}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;Z)Landroid/content/om/OverlayManagerTransaction$Builder;

    goto :goto_53

    :cond_61
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveThemeParkSingleThemeState()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "[ThemePark FRRO] disable ThemePark overlay : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SWT_ThemeManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    return-void
.end method

.method public final initTemplateMetadataIfNeeded()V
    .registers 10

    const-string/jumbo v0, "SWT_ThemeManager"

    iget-boolean v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsSuccessLoadMetadata:Z

    if-nez v1, :cond_12f

    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "failed loading template and metadata, wallpaper theming will not working, ex:"

    const-string/jumbo v3, "loading metadata, error = "

    const-string/jumbo v4, "loading template, error = "

    const-wide/16 v5, 0x2000

    :try_start_17
    const-string/jumbo v7, "SWT:initTemplateMetadataStatic"

    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_54
    .catchall {:try_start_17 .. :try_end_1d} :catchall_25

    :try_start_1d
    iget-object v7, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    iget-object v8, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/om/wallpapertheme/TemplateManager;->loadStaticTemplate(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_28
    .catchall {:try_start_1d .. :try_end_24} :catchall_25

    goto :goto_38

    :catchall_25
    move-exception p0

    goto/16 :goto_12b

    :catch_28
    move-exception v7

    :try_start_29
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_54
    .catchall {:try_start_29 .. :try_end_38} :catchall_25

    :goto_38
    :try_start_38
    iget-object v4, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

    iget-object v7, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/om/wallpapertheme/MetaDataManager;->loadStaticMetadata(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3f} :catch_40
    .catchall {:try_start_38 .. :try_end_3f} :catchall_25

    goto :goto_50

    :catch_40
    move-exception v4

    :try_start_41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_50} :catch_54
    .catchall {:try_start_41 .. :try_end_50} :catchall_25

    :goto_50
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_65

    :catch_54
    move-exception v3

    :try_start_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_25

    goto :goto_50

    :goto_65
    const/4 v2, 0x0

    :try_start_66
    const-string/jumbo v3, "SWT:initTemplateMetadataFromPkg"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v7, 0x2280

    invoke-interface {v3, v7, v8, v2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    if-nez v3, :cond_87

    const-string v3, "Couldn\'t get package list properly, stop initTemplateMetadataFromPkg"

    invoke-static {v0, v3}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Landroid/os/BadParcelableException; {:try_start_66 .. :try_end_7b} :catch_85
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7b} :catch_83
    .catchall {:try_start_66 .. :try_end_7b} :catchall_80

    :goto_7b
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v2

    goto :goto_cf

    :catchall_80
    move-exception p0

    goto/16 :goto_127

    :catch_83
    move-exception v3

    goto :goto_a4

    :catch_85
    move-exception v3

    goto :goto_ba

    :cond_87
    :try_start_87
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v4}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->updateTemplateMetadataFromPkg(Landroid/content/pm/PackageInfo;)V
    :try_end_9e
    .catch Landroid/os/BadParcelableException; {:try_start_87 .. :try_end_9e} :catch_85
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_9e} :catch_83
    .catchall {:try_start_87 .. :try_end_9e} :catchall_80

    goto :goto_8f

    :cond_9f
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x1

    goto :goto_cf

    :goto_a4
    :try_start_a4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initTemplateMetadataFromPkg, ex = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    :goto_ba
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t get package list properly, stop initTemplateMetadataFromPkg. ex = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_a4 .. :try_end_ce} :catchall_80

    goto :goto_7b

    :goto_cf
    iput-boolean v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsSuccessLoadMetadata:Z

    iget-object p0, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

    invoke-virtual {p0}, Landroid/content/om/wallpapertheme/MetaDataManager;->writeLastPackageList()V

    const-string/jumbo p0, "SWT_WTM_Wrapper"

    new-instance v0, Ljava/io/File;

    const-string v3, "/data/overlays/themepark/state_applied.txt"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_12f

    :try_start_e6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_eb} :catch_115

    :try_start_eb
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_f4
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_ff

    invoke-virtual {v0, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_f4

    :cond_ff
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    invoke-virtual {v1, v0}, Landroid/content/om/wallpapertheme/TemplateManager;->initTemplate(Ljava/lang/String;)V

    const-string/jumbo v0, "ThemePark\'s template is loaded"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_eb .. :try_end_111} :catchall_117

    :try_start_111
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_114} :catch_115

    goto :goto_12f

    :catch_115
    move-exception v0

    goto :goto_121

    :catchall_117
    move-exception v0

    :try_start_118
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_11c

    goto :goto_120

    :catchall_11c
    move-exception v1

    :try_start_11d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_120
    throw v0
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_121} :catch_115

    :goto_121
    const-string v1, "Failed to set as ThemePark\'s template on init, e : "

    invoke-static {v0, v1, p0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12f

    :goto_127
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :goto_12b
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_12f
    :goto_12f
    return-void
.end method
