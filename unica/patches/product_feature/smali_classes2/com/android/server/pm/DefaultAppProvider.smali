.class public final Lcom/android/server/pm/DefaultAppProvider;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mRoleManagerSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

.field public final mUserManagerInternalSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    iput-object p2, p0, Lcom/android/server/pm/DefaultAppProvider;->mUserManagerInternalSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;

    return-void
.end method


# virtual methods
.method public final getDefaultHome(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/DefaultAppProvider;->mUserManagerInternalSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda42;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    const-string/jumbo v0, "android.app.role.HOME"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRoleHolder(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object p0, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_10
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_22
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setDefaultBrowser(ILjava/lang/String;)V
    .registers 10

    iget-object p0, p0, Lcom/android/server/pm/DefaultAppProvider;->mRoleManagerSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/role/RoleManager;

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/DefaultAppProvider$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2}, Lcom/android/server/pm/DefaultAppProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    if-eqz p2, :cond_2e

    :try_start_1f
    const-string/jumbo v1, "android.app.role.BROWSER"

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    const/4 v3, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_3b

    :catchall_2b
    move-exception v0

    move-object p2, v0

    goto :goto_3f

    :cond_2e
    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    const-string/jumbo v1, "android.app.role.BROWSER"

    const/4 v2, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/app/role/RoleManager;->clearRoleHoldersAsUser(Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_2b

    :goto_3b
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3f
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p2
.end method
