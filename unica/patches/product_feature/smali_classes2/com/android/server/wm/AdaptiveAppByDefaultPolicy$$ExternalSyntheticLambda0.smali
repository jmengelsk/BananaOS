.class public final synthetic Lcom/android/server/wm/AdaptiveAppByDefaultPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;

    return-void
.end method


# virtual methods
.method public final onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AdaptiveAppByDefaultPolicy"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "AdaptiveAppByDefaultPolicy enabled="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MultiTaskingAppCompat"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->mPolicyEnabled:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const-string/jumbo v0, "disabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->mPolicyEnabled:Z

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    return-void
.end method
