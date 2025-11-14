.class public final Lcom/android/server/power/ForegroundPackageObserver$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ForegroundPackageObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ForegroundPackageObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .registers 4

    monitor-enter p0

    if-eqz p3, :cond_11

    :try_start_3
    iget-object p2, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    iget-object p2, p2, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPidSet:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :catchall_f
    move-exception p1

    goto :goto_5e

    :cond_11
    iget-object p2, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    iget-object p2, p2, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPidSet:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    :goto_1c
    iget-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    iget-object p1, p1, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPidSet:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5c

    iget-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    iget-object p2, p1, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object p1, p1, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPidSet:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5c

    iget-object p2, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    iget-object p2, p2, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5c

    iget-object p2, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    iput-object p1, p2, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/power/ForegroundPackageObserver;->access$000(Lcom/android/server/power/ForegroundPackageObserver;)V

    iget-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    iget-object p2, p1, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    :cond_5c
    monitor-exit p0

    return-void

    :goto_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_f

    throw p1
.end method

.method public final onForegroundServicesChanged(III)V
    .registers 4

    return-void
.end method

.method public final onProcessDied(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/ForegroundPackageObserver$1;->onForegroundActivitiesChanged(IIZ)V

    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    return-void
.end method
