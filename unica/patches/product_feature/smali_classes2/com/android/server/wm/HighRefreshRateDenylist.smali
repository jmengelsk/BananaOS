.class public Lcom/android/server/wm/HighRefreshRateDenylist;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDefaultDenylist:[Ljava/lang/String;

.field public final mDenylistedPackages:Landroid/util/ArraySet;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/provider/DeviceConfigInterface;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mLock:Ljava/lang/Object;

    const v0, 0x1070115

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDefaultDenylist:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;

    invoke-direct {v0, p0}, Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;-><init>(Lcom/android/server/wm/HighRefreshRateDenylist;)V

    const-string/jumbo v1, "display_manager"

    invoke-interface {p2, v1, p1, v0}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string/jumbo p1, "high_refresh_rate_blacklist"

    invoke-interface {p2, v1, p1}, Landroid/provider/DeviceConfigInterface;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/HighRefreshRateDenylist;->updateDenylist(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final updateDenylist(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDefaultDenylist:[Ljava/lang/String;

    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
