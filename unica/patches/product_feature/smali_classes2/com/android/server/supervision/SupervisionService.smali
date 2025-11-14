.class public final Lcom/android/server/supervision/SupervisionService;
.super Landroid/app/supervision/ISupervisionManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final ACTION_CONFIRM_SUPERVISION_CREDENTIALS:Ljava/lang/String; = "android.app.supervision.action.CONFIRM_SUPERVISION_CREDENTIALS"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

.field public final mInternal:Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;

.field public final mLockDoNoUseDirectly:Ljava/lang/Object;

.field public final mUserData:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/supervision/ISupervisionManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mLockDoNoUseDirectly:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mUserData:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;

    invoke-direct {v0, p0}, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;-><init>(Lcom/android/server/supervision/SupervisionService;)V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInternal:Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;

    const-string/jumbo v0, "SupervisionService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/supervision/SupervisionService$Injector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {v0}, Lcom/android/server/supervision/SupervisionService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p1

    new-instance v0, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;

    invoke-direct {v0, p0}, Lcom/android/server/supervision/SupervisionService$UserLifecycleListener;-><init>(Lcom/android/server/supervision/SupervisionService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    return-void
.end method


# virtual methods
.method public final createConfirmSupervisionCredentialsIntent()Landroid/content/Intent;
    .registers 7

    const-string/jumbo v0, "android.permission.QUERY_USERS"

    const-string/jumbo v1, "android.permission.MANAGE_USERS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1d

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1d
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->isSupervisionEnabledForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    return-object v1

    :cond_2e
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {v0}, Lcom/android/server/supervision/SupervisionService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getSupervisingProfileId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/16 v4, -0x2710

    if-eq v0, v4, :cond_72

    :try_start_40
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    iget-object v4, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v4, :cond_52

    iget-object v4, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/KeyguardManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_52
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p0
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_6d

    if-nez p0, :cond_5b

    goto :goto_72

    :cond_5b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance p0, Landroid/content/Intent;

    const-string/jumbo v0, "android.app.supervision.action.CONFIRM_SUPERVISION_CREDENTIALS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "com.android.settings"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :catchall_6d
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_72
    :goto_72
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    iget-object p1, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "SupervisionService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    :try_start_13
    const-string/jumbo p2, "SupervisionService state:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {p2}, Lcom/android/server/supervision/SupervisionService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mLockDoNoUseDirectly:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_50

    :try_start_2a
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_30
    if-ge p3, v1, :cond_49

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p3, p3, 0x1

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/supervision/SupervisionUserData;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_30

    :catchall_47
    move-exception p0

    goto :goto_4e

    :cond_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_47

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    return-void

    :goto_4e
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_47

    :try_start_4f
    throw p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    :catchall_50
    move-exception p0

    :try_start_51
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_59
    throw p0
.end method

.method public final enforcePermission(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    return-void
.end method

.method public final getActiveSupervisionAppPackage(I)Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, p1, :cond_10

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mLockDoNoUseDirectly:Ljava/lang/Object;

    monitor-enter v0

    :try_start_13
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionAppPackage:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;
    .registers 3

    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/supervision/SupervisionUserData;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/server/supervision/SupervisionUserData;

    invoke-direct {v0, p1}, Lcom/android/server/supervision/SupervisionUserData;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public final isSupervisionEnabledForUser(I)Z
    .registers 7

    const-string/jumbo v0, "android.permission.QUERY_USERS"

    const-string/jumbo v1, "android.permission.MANAGE_USERS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1d

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1d
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, p1, :cond_30

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    :cond_30
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mLockDoNoUseDirectly:Ljava/lang/Object;

    monitor-enter v0

    :try_start_33
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionEnabled:Z

    monitor-exit v0

    return p0

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    new-instance v0, Lcom/android/server/supervision/SupervisionServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/supervision/SupervisionServiceShellCommand;-><init>(Lcom/android/server/supervision/SupervisionService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final setSupervisionEnabledForUser(IZ)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, p1, :cond_10

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/supervision/SupervisionService;->setSupervisionEnabledForUserInternal(ILjava/lang/String;Z)V

    return-void
.end method

.method public final setSupervisionEnabledForUserInternal(ILjava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mLockDoNoUseDirectly:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p0

    iput-boolean p3, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionEnabled:Z

    if-eqz p3, :cond_c

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    :goto_d
    iput-object p2, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionAppPackage:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final shouldAllowBypassingSupervisionRoleQualification()Z
    .registers 8

    const-string/jumbo v0, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {p0, v0}, Lcom/android/server/supervision/SupervisionService;->enforcePermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    invoke-virtual {v0}, Lcom/android/server/supervision/SupervisionService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_19
    :goto_19
    if-ge v4, v2, :cond_38

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isForTesting()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v6

    if-nez v6, :cond_19

    iget v5, v5, Landroid/content/pm/UserInfo;->flags:I

    const/16 v6, 0x800

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_37

    goto :goto_19

    :cond_37
    return v3

    :cond_38
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService;->mLockDoNoUseDirectly:Ljava/lang/Object;

    monitor-enter v0

    move v2, v3

    :goto_3c
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/supervision/SupervisionService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_57

    iget-object v4, p0, Lcom/android/server/supervision/SupervisionService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/supervision/SupervisionUserData;

    iget-boolean v4, v4, Lcom/android/server/supervision/SupervisionUserData;->supervisionEnabled:Z

    if-eqz v4, :cond_54

    monitor-exit v0

    return v3

    :catchall_52
    move-exception p0

    goto :goto_59

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_57
    monitor-exit v0

    return v1

    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3c .. :try_end_5a} :catchall_52

    throw p0
.end method
