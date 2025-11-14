.class public Lcom/android/server/people/PeopleService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mLazyConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

.field public mLazyDataManager:Lcom/android/server/people/data/DataManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mService:Landroid/os/IBinder;


# direct methods
.method public static -$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, v0, :cond_13

    return-void

    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "Calling uid "

    const-string v2, " cannot query eventsfor package "

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static -$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)V
    .registers 10

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, ""

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    move v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/server/people/PeopleService$1;

    invoke-direct {p1, p0}, Lcom/android/server/people/PeopleService$1;-><init>(Lcom/android/server/people/PeopleService;)V

    iput-object p1, p0, Lcom/android/server/people/PeopleService;->mService:Landroid/os/IBinder;

    return-void
.end method

.method public static isSystemOrRoot()Z
    .registers 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_11

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    const-string/jumbo p0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getConversationListenerHelper()Lcom/android/server/people/PeopleService$ConversationListenerHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->initLazyStuff()V

    :cond_7
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mLazyConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    return-object p0
.end method

.method public final getDataManager()Lcom/android/server/people/data/DataManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->initLazyStuff()V

    :cond_7
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    return-object p0
.end method

.method public final declared-synchronized initLazyStuff()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    if-nez v0, :cond_2d

    new-instance v0, Lcom/android/server/people/data/DataManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/people/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v0}, Lcom/android/server/people/data/DataManager;->initialize()V

    new-instance v0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    invoke-direct {v0}, Lcom/android/server/people/PeopleService$ConversationListenerHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    iget-object v1, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    iget-object v2, v1, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_2b

    :try_start_1f
    iget-object v1, v1, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_2d

    :catchall_28
    move-exception v0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    goto :goto_2f

    :cond_2d
    :goto_2d
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2b

    throw v0
.end method

.method public final onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    :cond_7
    return-void
.end method

.method public final onStart()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/people/PeopleService;->onStart(Z)V

    return-void
.end method

.method public onStart(Z)V
    .registers 3

    if-nez p1, :cond_a

    const-string/jumbo p1, "people"

    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_a
    const-class p1, Lcom/android/server/people/PeopleServiceInternal;

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/people/PeopleService$LocalService;-><init>(Lcom/android/server/people/PeopleService;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/people/PeopleService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    if-eqz v1, :cond_18

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_25

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_25
    move-exception p0

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    if-nez v1, :cond_24

    new-instance v1, Lcom/android/server/people/data/UserData;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, p1, v2}, Lcom/android/server/people/data/UserData;-><init>(ILjava/util/concurrent/ScheduledExecutorService;)V

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_34

    :cond_24
    :goto_24
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_22

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_34
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_22

    throw p0
.end method
