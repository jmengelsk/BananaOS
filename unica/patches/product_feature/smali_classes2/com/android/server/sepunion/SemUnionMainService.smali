.class public Lcom/android/server/sepunion/SemUnionMainService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 3

    const-string/jumbo v0, "SemUnionMainService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onBootPhase = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/server/sepunion/AbsSemSystemService;->onBootPhase(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onStart()V
    .locals 2

    const-string/jumbo v0, "SemUnionMainService"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sepunion"

    iget-object v1, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iget-object v1, v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    const-string/jumbo v0, "onUserStarting"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserStarting(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    const-string/jumbo p1, "onUserStopped"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    const-string/jumbo v0, "onUserStopping"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserStopping(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    const-string/jumbo v0, "onUserSwitching"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1, p2}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserSwitching(II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    const-string/jumbo v0, "onUserUnlocked"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserUnlocked(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    const-string/jumbo p1, "onUserUnlocking"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
