.class public final Lcom/android/server/wm/CompatModePackages;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mFile:Landroid/util/AtomicFile;

.field public final mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

.field public final mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

.field public final mPackages:Ljava/util/HashMap;

.field public final mProviders:Landroid/util/SparseArray;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;)V
    .locals 7

    const-string v0, "Error reading compat-packages"

    const-string v1, "ActivityTaskManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mProviders:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    new-instance p2, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "packages-compat.xml"

    invoke-direct {v2, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p3, "compat-mode"

    invoke-direct {p2, v2, p3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    new-instance p3, Lcom/android/server/wm/CompatModePackages$CompatHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/wm/CompatModePackages;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, p2

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, p2

    goto :goto_4

    :cond_0
    if-ne v2, v3, :cond_1

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "compat-packages"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    :cond_2
    if-ne v2, v4, :cond_3

    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v4, :cond_3

    const-string/jumbo v5, "pkg"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "name"

    invoke-interface {p3, p1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v5, "mode"

    const/4 v6, 0x0

    invoke-interface {p3, p1, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_2

    :cond_4
    if-eqz p2, :cond_6

    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    return-void

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    :goto_2
    if-eqz p1, :cond_5

    :try_start_3
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    if-eqz p1, :cond_6

    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_3
    move-exception p0

    :goto_4
    :try_start_5
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_6

    goto :goto_3

    :catch_4
    :cond_6
    :goto_5
    return-void

    :goto_6
    if-eqz p1, :cond_7

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_7
    throw p0
.end method


# virtual methods
.method public final compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 10

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/CompatModePackages;->getCompatScaleFromProvider(ILjava/lang/String;)Landroid/content/res/CompatibilityInfo$CompatScale;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    :goto_1
    move v8, v1

    goto :goto_2

    :cond_1
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v4, v3, v1}, Lcom/android/server/wm/CompatModePackages;->getCompatScale(ILjava/lang/String;Z)F

    move-result v1

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_2

    iget v0, v0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    move v9, v0

    goto :goto_3

    :cond_2
    move v9, v8

    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v3, Landroid/content/res/CompatibilityInfo;

    iget v5, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZFF)V

    iget p1, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz p1, :cond_4

    iget-object p1, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result p1

    if-nez p1, :cond_3

    const-string/jumbo p1, "android"

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Use legacy screen compat mode: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "ActivityTaskManager"

    invoke-static {p1, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    iget-object p1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-object v3

    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    iget-object p1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_4
    return-object v3
.end method

.method public final getCompatScale(ILjava/lang/String;Z)F
    .locals 5

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CompatModePackages;->getCompatScaleFromProvider(ILjava/lang/String;)Landroid/content/res/CompatibilityInfo$CompatScale;

    move-result-object p3

    if-eqz p3, :cond_0

    iget p0, p3, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    return p0

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    const-wide/32 v0, 0xa09e1d7

    invoke-static {v0, v1, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    const-wide/32 v0, 0x104e4406

    invoke-static {v0, v1, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p3, :cond_1

    if-eqz v0, :cond_10

    :cond_1
    const-wide/32 v3, 0xae57a6b

    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_2

    const p3, 0x3f666666    # 0.9f

    goto/16 :goto_0

    :cond_2
    const-wide/32 v3, 0xb52b546

    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_3

    const p3, 0x3f59999a    # 0.85f

    goto/16 :goto_0

    :cond_3
    const-wide/32 v3, 0xa8bb021

    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_4

    const p3, 0x3f4ccccd    # 0.8f

    goto/16 :goto_0

    :cond_4
    const-wide/32 v3, 0xb52b573

    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/high16 p3, 0x3f400000    # 0.75f

    goto/16 :goto_0

    :cond_5
    const-wide/32 v3, 0xa8bb06d

    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_6

    const p3, 0x3f333333    # 0.7f

    goto/16 :goto_0

    :cond_6
    const-wide/32 v3, 0xb52b550

    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_7

    const p3, 0x3f266666    # 0.65f

    goto :goto_0

    :cond_7
    const-wide/32 v3, 0xa8bb033

    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_8

    const p3, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_8
    const-wide/32 v3, 0xb52b674

    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_9

    const p3, 0x3f0ccccd    # 0.55f

    goto :goto_0

    :cond_9
    const-wide/32 v3, 0xa8bb015

    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_a

    move p3, v1

    goto :goto_0

    :cond_a
    const-wide/32 v3, 0xb52b576

    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_b

    const p3, 0x3ee66666    # 0.45f

    goto :goto_0

    :cond_b
    const-wide/32 v3, 0xb52b676

    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_c

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_c
    const-wide/32 v3, 0xb52b555

    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_d

    const p3, 0x3eb33333    # 0.35f

    goto :goto_0

    :cond_d
    const-wide/32 v3, 0xb52b678

    invoke-static {v3, v4, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_e

    const p3, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_e
    move p3, v2

    :goto_0
    cmpl-float v3, p3, v2

    if-eqz v3, :cond_10

    if-eqz v0, :cond_f

    return p3

    :cond_f
    div-float/2addr v2, p3

    return v2

    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz p3, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p3, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p3, p3

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p3, v0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float p0, p0

    mul-float/2addr p0, p3

    add-float/2addr p0, v1

    float-to-int p0, p0

    const/16 p3, 0x438

    if-le p0, p3, :cond_11

    const-wide/32 v0, 0x9653d2a

    invoke-static {v0, v1, p2, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_11

    int-to-float p0, p0

    const/high16 p1, 0x44870000    # 1080.0f

    div-float/2addr p0, p1

    return p0

    :cond_11
    return v2
.end method

.method public final getCompatScaleFromProvider(ILjava/lang/String;)Landroid/content/res/CompatibilityInfo$CompatScale;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/CompatScaleProvider;

    check-cast v1, Lcom/android/server/app/GameManagerService$LocalService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, p2, v3}, Lcom/android/server/app/GameManagerService$LocalService;->getResolutionScalingFactor(Ljava/lang/String;I)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    new-instance v2, Landroid/content/res/CompatibilityInfo$CompatScale;

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v1

    invoke-direct {v2, v3}, Landroid/content/res/CompatibilityInfo$CompatScale;-><init>(F)V

    :cond_0
    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final getPackageFlags(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final scheduleWrite()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .locals 10

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    const-string v2, "ActivityTaskManager"

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v3, :cond_1

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    const-string/jumbo p0, "Unknown screen compat mode req #"

    const-string p1, "; ignoring"

    invoke-static {p2, p0, p1, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    and-int/lit8 p2, v1, 0x2

    if-nez p2, :cond_2

    :cond_1
    or-int/lit8 p2, v1, 0x2

    goto :goto_0

    :cond_2
    and-int/lit8 p2, v1, -0x3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v5

    const-string v6, "Ignoring compat mode change of "

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    const-string p2, "; compatibility never needed"

    invoke-static {v6, v0, p2, v2}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v7

    :cond_3
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p2, "; compatibility always needed"

    invoke-static {v6, v0, p2, v2}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v7

    :cond_4
    if-eq p2, v1, :cond_9

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/CompatModePackages$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2}, Lcom/android/server/wm/CompatModePackages$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_2
    if-ltz v1, :cond_9

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowProcessController;->containsPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v8, -0x10a45df3f51cef8L

    invoke-static {v6, v8, v9, v7, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_7
    iget-object v2, v2, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    invoke-interface {v2, v0, p1}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_9
    return-void
.end method
