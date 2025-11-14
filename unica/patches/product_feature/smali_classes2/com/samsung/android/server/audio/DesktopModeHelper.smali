.class public final Lcom/samsung/android/server/audio/DesktopModeHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDexConnectedState:Z

.field public mDexPadConnectedState:Z

.field public mDexState:Z

.field public final mDisplayListener:Lcom/samsung/android/server/audio/DesktopModeHelper$1;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/DesktopModeHelper$1;-><init>(Lcom/samsung/android/server/audio/DesktopModeHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDisplayListener:Lcom/samsung/android/server/audio/DesktopModeHelper$1;

    iput-object p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string p0, "AS.DesktopModeHelper"

    if-eqz p1, :cond_27

    const-string p1, "DesktopModeHelper :: mDisplayManager is successful"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    const-string p1, "DesktopModeHelper :: mDisplayManager is failed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/DesktopModeHelper;
    .registers 3

    const-class v0, Lcom/samsung/android/server/audio/DesktopModeHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/DesktopModeHelper;->sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;

    if-nez v1, :cond_11

    new-instance v1, Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/DesktopModeHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/DesktopModeHelper;->sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    :cond_11
    :goto_11
    sget-object p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object p0

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw p0
.end method


# virtual methods
.method public final registerListener()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v1, "AS.DesktopModeHelper"

    if-eqz v0, :cond_12

    iget-object v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDisplayListener:Lcom/samsung/android/server/audio/DesktopModeHelper$1;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const-string v0, "DEX registration is successful"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_12
    const-string v0, "DEX registration is failed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    return-void
.end method

.method public final restoreDexState()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/audio/utils/DesktopUtils;->isDesktopWindowing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "dex"

    goto :goto_f

    :cond_c
    const-string/jumbo v1, "none"

    :goto_f
    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/utils/DesktopUtils;->setDexPolicyParameter(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "station"

    iget-boolean v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/audio/utils/DesktopUtils;->setDexParameter(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pad"

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/audio/utils/DesktopUtils;->setDexParameter(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
