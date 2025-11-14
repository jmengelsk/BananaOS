.class public final Lcom/android/server/policy/PermissionPolicyService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPermControllerManagers:Ljava/util/Map;

.field public final mUserSetupUids:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xc8

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mPermControllerManagers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    :goto_0
    move v0, p1

    :goto_1
    const-string/jumbo v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object v1, v1, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_6

    :cond_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    :goto_2
    if-ltz v1, :cond_2

    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$3;->updateUid(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_4
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PermissionPolicyService$3;->updateUid(I)V

    goto :goto_6

    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_5
    :goto_5
    monitor-exit p1

    :goto_6
    return-void

    :goto_7
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final updateUid(I)V
    .locals 4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mPermControllerManagers:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mPermControllerManagers:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Could not create PermissionControllerManager for user"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "PermissionPolicyService"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Landroid/permission/PermissionControllerManager;->updateUserSensitiveForApp(I)V

    return-void
.end method
