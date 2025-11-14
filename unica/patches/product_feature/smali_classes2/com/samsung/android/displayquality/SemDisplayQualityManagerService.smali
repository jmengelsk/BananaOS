.class public Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;
.super Lcom/samsung/android/displayquality/ISemDisplayQualityManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemDisplayQualityManagerService"


# instance fields
.field private final DEBUG:Z

.field private displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

.field private final mContext:Landroid/content/Context;

.field private final mEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPlatform:Ljava/lang/String;

.field private final mSupportAdaptiveSync:Z

.field private final mSupportOutdoor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/displayquality/ISemDisplayQualityManager$Stub;-><init>()V

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->DEBUG:Z

    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    iput-boolean v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mEnabled:Z

    sget-object v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mPlatform:Ljava/lang/String;

    sget-boolean v1, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->OUTDOOR_VISIBILITY_SUPPORT:Z

    iput-boolean v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportOutdoor:Z

    sget-boolean v2, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ADAPTIVE_SYNC_SUPPORT:Z

    iput-boolean v2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportAdaptiveSync:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/displayquality/SemDisplayQuality;

    invoke-direct {v3, p1}, Lcom/samsung/android/displayquality/SemDisplayQuality;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "platform:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " outdoor:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " adaptiveSync:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "SemDisplayQualityManagerService"

    invoke-static {p1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method


# virtual methods
.method public enhanceDisplayOutdoorVisibilityByLux(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportOutdoor:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->enhanceOutdoorVisibilityByLux(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "SemDisplayQualityManagerService"

    const-string/jumbo v1, "enhanceOutdoorVisibilityByLux"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setAdaptiveSync(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->displayQuality:Lcom/samsung/android/displayquality/SemDisplayQuality;

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityManagerService;->mSupportAdaptiveSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->setAdaptiveSync(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "SemDisplayQualityManagerService"

    const-string/jumbo v1, "setAdaptiveSync"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
