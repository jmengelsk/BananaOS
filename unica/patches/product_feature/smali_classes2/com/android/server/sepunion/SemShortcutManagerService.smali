.class public Lcom/android/server/sepunion/SemShortcutManagerService;
.super Lcom/samsung/android/app/ISemExecuteManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final mLock:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$3;

.field public final mSemExecutableInfos:Ljava/util/HashMap;

.field public final mShortcutChangeListener:Lcom/android/server/sepunion/SemShortcutManagerService$2;

.field public final mShortcutChangedCallbackMap:Ljava/util/HashMap;

.field public final mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/app/ISemExecuteManager$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/sepunion/SemShortcutManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemShortcutManagerService$1;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v1, Lcom/android/server/sepunion/SemShortcutManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemShortcutManagerService$2;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    iput-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangeListener:Lcom/android/server/sepunion/SemShortcutManagerService$2;

    new-instance v2, Lcom/android/server/sepunion/SemShortcutManagerService$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/sepunion/SemShortcutManagerService$3;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$3;

    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-class p1, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutServiceInternal;->addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "----- SemShortcutManagerService: start updateSemExecutableInfo() on "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "SemExecuteManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->updateSemExecutableInfo()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "----- SemShortcutManagerService: end updateSemExecutableInfo() on "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final canAccessProfile(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectClearCallingIdentity()J

    move-result-wide v2

    :try_start_10
    iget-object v4, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_4d

    const-string/jumbo v1, "SemExecuteManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " by "

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for another profile "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_10 .. :try_end_46} :catchall_4b

    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_4b
    move-exception p1

    goto :goto_7d

    :cond_4d
    :try_start_4d
    iget-object p2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    if-eqz p2, :cond_63

    iget p2, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v0, -0x2710

    if-eq p2, v0, :cond_63

    iget v0, v4, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_4b

    if-ne p2, v0, :cond_63

    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    return v1

    :cond_63
    :try_start_63
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for unrelated profile "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_7d
    .catchall {:try_start_63 .. :try_end_7d} :catchall_4b

    :goto_7d
    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    throw p1
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "android.permission.DUMP"

    const-string/jumbo p3, "SemExecuteManagerService"

    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "\n##### SEM SHORTCUT MANAGER SERVICE #####\n##### (dumpsys sepunion execute) #####\n"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enforeCallingPermission(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-nez p0, :cond_13

    return-void

    :cond_13
    const-string/jumbo p0, "Permission denied: "

    const-string v1, " uid="

    const-string v2, ", you need system uid of to be signed with the system certificate."

    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SemExecuteManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot check package"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_17

    :cond_d
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    move-result p1

    if-nez p1, :cond_19

    :goto_17
    const/4 p0, 0x0

    return-object p0

    :cond_19
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    :try_start_21
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    int-to-long v3, p3

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_37

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catchall_37
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p2
.end method

.method public final getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableInfo;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/SemExecutableInfo;

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final getExecutableInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 12

    const-string/jumbo v0, "getShortcutIconFd"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const-string v0, "Cannot access shortcuts"

    invoke-virtual {p0, p5, p1, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_15

    :cond_f
    invoke-virtual {p0, p5}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    move-result p1

    if-nez p1, :cond_17

    :goto_15
    const/4 p0, 0x0

    return-object p0

    :cond_17
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final getShortcuts(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List;",
            "Landroid/content/ComponentName;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getShortcuts: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SemExecuteManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "getShortcuts"

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    invoke-virtual/range {p9 .. p9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "Cannot get shortcuts"

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual/range {p9 .. p9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_6d

    :cond_32
    if-eqz p6, :cond_40

    if-eqz p5, :cond_37

    goto :goto_40

    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "To query by shortcut ID, package name must also be set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual/range {p9 .. p9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    const/4 v8, 0x0

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v1 .. v13}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_6d
    :goto_6d
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final hasShortcutHostPermission(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo p1, "hasShortcutHostPermission"

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public injectBinderCallingUid()I
    .registers 1

    invoke-static {}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public injectClearCallingIdentity()J
    .registers 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public injectRestoreCallingIdentity(J)V
    .registers 3

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final isUserEnabled(I)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectClearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result p1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :catchall_14
    move-exception p1

    goto :goto_1b

    :cond_16
    const/4 p1, 0x0

    :goto_17
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    return p1

    :goto_1b
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    throw p1
.end method

.method public final onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_c

    new-instance p1, Lcom/android/server/sepunion/SemShortcutManagerService$4;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemShortcutManagerService$4;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_c
    return-void
.end method

.method public final onCleanupUser(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->updateSemExecutableInfo()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final onDestroy()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    return-void
.end method

.method public final onStart()V
    .registers 1

    return-void
.end method

.method public final onStartUser(I)V
    .registers 2

    return-void
.end method

.method public final onStopUser(I)V
    .registers 2

    return-void
.end method

.method public final onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public final onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public final registerChangedCallback(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p1, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_2f

    :cond_1d
    :goto_1d
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :goto_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_1b

    throw p0
.end method

.method public final startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .registers 17

    move/from16 v5, p7

    const-string/jumbo v6, "startShortcut"

    invoke-virtual {p0, v6}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const-string v0, "Cannot start activity"

    invoke-virtual {p0, v5, p1, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v8, 0x0

    if-nez p1, :cond_13

    goto/16 :goto_8c

    :cond_13
    invoke-virtual {p0, v5}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_8d

    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_2f

    invoke-virtual {p0, v6}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    :cond_2f
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_8c

    array-length p1, v4

    if-nez p1, :cond_50

    goto :goto_8c

    :cond_50
    aget-object p1, v4, v8

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    aget-object p1, v4, v8

    invoke-virtual {p1, p5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    const-string/jumbo p1, "SemExecuteManagerService"

    const-string p2, "Couldn\'t start activity, code="

    :try_start_61
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v2, 0x0

    move-object v1, p3

    move-object v5, p6

    move/from16 v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesAsPackage(Ljava/lang/String;Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result p0

    invoke-static {p0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result p3

    if-eqz p3, :cond_74

    const/4 p0, 0x1

    return p0

    :cond_74
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/SecurityException; {:try_start_61 .. :try_end_83} :catch_84

    return v8

    :catch_84
    move-exception v0

    move-object p0, v0

    const-string/jumbo p2, "SecurityException while launching intent"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8c
    :goto_8c
    return v8

    :cond_8d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot start a shortcut for disabled profile "

    invoke-static {v5, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unRegisterChangedCallback(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p1, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/PendingIntent;

    invoke-virtual {p3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    :catchall_2f
    move-exception p0

    goto :goto_33

    :cond_31
    monitor-exit p1

    return-void

    :goto_33
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_2f

    throw p0
.end method

.method public final declared-synchronized updateSemExecutableInfo()V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_69

    :try_start_4
    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/SemExecutableInfo;->scanExecutableInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_19

    move v2, v4

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/SemExecutableInfo;

    iget-object v6, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/SemExecutableInfo;

    if-nez v6, :cond_3a

    :goto_38
    move v2, v4

    goto :goto_1e

    :cond_3a
    invoke-virtual {v6, v5}, Lcom/samsung/android/app/SemExecutableInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_38

    :catchall_41
    move-exception v1

    goto :goto_67

    :cond_43
    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/SemExecutableInfo;

    iget-object v3, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_4 .. :try_end_65} :catchall_41

    monitor-exit p0

    return-void

    :goto_67
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_41

    :try_start_68
    throw v1

    :catchall_69
    move-exception v0

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_69

    throw v0
.end method

.method public verifyCallingPackage(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-wide/32 v2, 0xc2000

    invoke-interface {v0, p1, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    const/4 v0, -0x1

    :goto_15
    if-gez v0, :cond_20

    const-string/jumbo v1, "Package not found: "

    const-string/jumbo v2, "SemExecuteManagerService"

    invoke-static {v1, p1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result p0

    if-ne v0, p0, :cond_27

    return-void

    :cond_27
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Calling package name mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
