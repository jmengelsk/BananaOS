.class public final Lcom/android/server/policy/PermissionPolicyService$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .registers 8

    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_24

    aget v2, p1, v1

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizeUidPermissionsAndAppOps(I)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_24
    return-void
.end method

.method public final onPackageChanged(ILjava/lang/String;)V
    .registers 8

    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_27

    aget v2, p2, v1

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {v2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizeUidPermissionsAndAppOps(I)V

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_27
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .registers 8

    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_24

    aget v2, p1, v1

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_24
    return-void
.end method
