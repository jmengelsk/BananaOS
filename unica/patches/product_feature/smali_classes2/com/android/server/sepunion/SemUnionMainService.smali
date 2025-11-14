.class public Lcom/android/server/sepunion/SemUnionMainService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .registers 5

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

    :try_start_1d
    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v2, :cond_27

    invoke-interface {v2, p1}, Lcom/android/server/sepunion/AbsSemSystemService;->onBootPhase(I)V

    goto :goto_27

    :catchall_3f
    move-exception p0

    goto :goto_4e

    :cond_41
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_4c

    iget-boolean p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    if-nez p1, :cond_4c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mIsBootCompleted:Z

    :cond_4c
    monitor-exit v0

    return-void

    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_1d .. :try_end_4f} :catchall_3f

    throw p0
.end method

.method public final onStart()V
    .registers 3

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
    .registers 5

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    const-string/jumbo v0, "onUserStarting"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_15
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_1f

    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_1f

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserStarting(I)V

    goto :goto_1f

    :catchall_3d
    move-exception p1

    goto :goto_41

    :cond_3f
    monitor-exit p0

    return-void

    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_3d

    throw p1
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    const-string/jumbo p1, "onUserStopped"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_14
    sget-object p1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v0, :cond_1e

    instance-of v1, v0, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v1, :cond_1e

    check-cast v0, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    goto :goto_1e

    :catchall_39
    move-exception p1

    goto :goto_3d

    :cond_3b
    monitor-exit p0

    return-void

    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_39

    throw p1
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    const-string/jumbo v0, "onUserStopping"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_15
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_1f

    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_1f

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserStopping(I)V

    goto :goto_1f

    :catchall_3d
    move-exception p1

    goto :goto_41

    :cond_3f
    monitor-exit p0

    return-void

    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_3d

    throw p1
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 6

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

    :try_start_19
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_23

    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_23

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1, p2}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserSwitching(II)V

    goto :goto_23

    :catchall_41
    move-exception p1

    goto :goto_45

    :cond_43
    monitor-exit p0

    return-void

    :goto_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_41

    throw p1
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    const-string/jumbo v0, "onUserUnlocked"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_15
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v1, :cond_1f

    instance-of v2, v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v2, :cond_1f

    check-cast v1, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    invoke-interface {v1, p1}, Lcom/android/server/sepunion/AbsSemSystemServiceForS;->onUserUnlocked(I)V

    goto :goto_1f

    :catchall_3d
    move-exception p1

    goto :goto_41

    :cond_3f
    monitor-exit p0

    return-void

    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_3d

    throw p1
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    const-string/jumbo p1, "onUserUnlocking"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_14
    sget-object p1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/AbsSemSystemService;

    if-eqz v0, :cond_1e

    instance-of v1, v0, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    if-eqz v1, :cond_1e

    check-cast v0, Lcom/android/server/sepunion/AbsSemSystemServiceForS;

    goto :goto_1e

    :catchall_39
    move-exception p1

    goto :goto_3d

    :cond_3b
    monitor-exit p0

    return-void

    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_39

    throw p1
.end method
