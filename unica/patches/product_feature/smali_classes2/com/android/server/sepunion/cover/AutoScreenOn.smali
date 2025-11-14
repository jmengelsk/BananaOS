.class public Lcom/android/server/sepunion/cover/AutoScreenOn;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAutoScreenOnFeature:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mIsAutoScreenOn:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNfcAuthEnabled:Z

.field public final mObserver:Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mIsAutoScreenOn:Z

    invoke-static {p2}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mNfcAuthEnabled:Z

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.autoscreenon"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mAutoScreenOnFeature:Z

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p2, Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;-><init>(Lcom/android/server/sepunion/cover/AutoScreenOn;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mObserver:Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;

    iget-object p1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "auto_screen_on"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mObserver:Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->update()V

    :cond_50
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "  mAutoScreenOn = "

    const-string v1, "  "

    const-string v2, " Current AutoScreenOn State:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mNfcAuthEnabled:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mAutoScreenOnFeature:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mIsAutoScreenOn:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public final off()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mIsAutoScreenOn:Z

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final support()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mNfcAuthEnabled:Z

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mAutoScreenOnFeature:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final update()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "auto_screen_on"

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_11

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    :goto_12
    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mIsAutoScreenOn:Z

    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method
