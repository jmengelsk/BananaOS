.class public final Lcom/android/server/policy/PermissionPolicyService$Internal;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityInterceptorCallback:Lcom/android/server/policy/PermissionPolicyService$Internal$1;

.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    new-instance p1, Lcom/android/server/policy/PermissionPolicyService$Internal$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PermissionPolicyService$Internal$1;-><init>(Lcom/android/server/policy/PermissionPolicyService$Internal;)V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->mActivityInterceptorCallback:Lcom/android/server/policy/PermissionPolicyService$Internal$1;

    return-void
.end method

.method public static isLauncherIntent(Landroid/content/Intent;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    const-string/jumbo v0, "android.intent.category.CAR_LAUNCHER"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    :cond_3a
    const/4 p0, 0x1

    return p0

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final checkStartActivity(Landroid/content/Intent;Ljava/lang/String;I)Z
    .registers 8

    const-string/jumbo v0, "PermissionPolicyService"

    const/4 v1, 0x0

    if-eqz p2, :cond_68

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_68

    :cond_d
    const-string/jumbo v3, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string/jumbo v3, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_68

    :cond_20
    :try_start_20
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, p2, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_34} :catch_59

    const/16 v2, 0x1d

    if-lt p0, v2, :cond_62

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Action Removed: starting "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-static {p3, p1, v0, p0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return v1

    :catch_59
    const-string p0, "Cannot find application info for "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    const-string/jumbo p0, "android.intent.extra.CALLING_PACKAGE"

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_68
    :goto_68
    const-string/jumbo p0, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_83

    const/16 p0, 0x3e8

    if-ne p3, p0, :cond_82

    const-string/jumbo p0, "android"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_83

    :cond_82
    return v1

    :cond_83
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p4, :cond_b3

    if-eqz p2, :cond_b3

    if-eqz p1, :cond_b3

    if-eqz p6, :cond_b3

    iget-boolean v1, p1, Landroid/app/TaskInfo;->isFocused:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p1, Landroid/app/TaskInfo;->isRunning:Z

    if-nez v1, :cond_19

    :cond_15
    if-nez p7, :cond_19

    goto/16 :goto_b3

    :cond_19
    invoke-static {p4}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_b2

    if-eqz p5, :cond_28

    invoke-virtual {p5}, Landroid/app/ActivityOptions;->isEligibleForLegacyPermissionPrompt()Z

    move-result p5

    if-nez p5, :cond_b2

    :cond_28
    iget-object p5, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p5, :cond_3f

    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3f

    iget-object p5, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {p5}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result p5

    if-eqz p5, :cond_3f

    return v2

    :cond_3f
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b3

    iget-object p3, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p3, p4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_b3

    iget p3, p1, Landroid/app/TaskInfo;->numActivities:I

    if-ne p3, v2, :cond_b3

    iget-object p3, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b3

    if-eqz p7, :cond_b2

    const-class p3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    :try_start_65
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p3, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAppTasks(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    move p3, v0

    :goto_72
    move-object p4, p0

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p3, p5, :cond_b3

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {p4}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p4

    iget p5, p4, Landroid/app/TaskInfo;->taskId:I

    iget p6, p1, Landroid/app/TaskInfo;->taskId:I

    if-eq p5, p6, :cond_af

    iget-boolean p5, p4, Landroid/app/TaskInfo;->isFocused:Z

    if-eqz p5, :cond_af

    iget-boolean p5, p4, Landroid/app/TaskInfo;->isRunning:Z

    if-eqz p5, :cond_af

    iget-object p5, p4, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p5, :cond_ab

    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_ab

    iget-object p4, p4, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {p4}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result p4
    :try_end_a7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_a7} :catch_b3

    if-eqz p4, :cond_ab

    move p4, v2

    goto :goto_ac

    :cond_ab
    move p4, v0

    :goto_ac
    if-eqz p4, :cond_af

    goto :goto_b2

    :cond_af
    add-int/lit8 p3, p3, 0x1

    goto :goto_72

    :cond_b2
    :goto_b2
    return v2

    :catch_b3
    :cond_b3
    :goto_b3
    return v0
.end method

.method public final showNotificationPromptIfNeeded(Ljava/lang/String;IILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .registers 11

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    if-eqz p1, :cond_14d

    const/4 v0, -0x1

    if-eq p3, v0, :cond_14d

    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object v0, v0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_13f

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13f

    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object v1, v1, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13f

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x17

    if-ge v1, v2, :cond_31

    goto/16 :goto_13f

    :cond_31
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object v1, v1, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_36
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-boolean v2, v2, Lcom/android/server/policy/PermissionPolicyService;->mBootCompleted:Z

    if-nez v2, :cond_41

    monitor-exit v1

    return-void

    :catchall_3e
    move-exception p0

    goto/16 :goto_13d

    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_3e

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v2, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14d

    const-wide/32 v1, 0xb9cec21

    invoke-static {v1, v2, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_14d

    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object v1, v1, Lcom/android/server/policy/PermissionPolicyService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_64

    goto/16 :goto_14d

    :cond_64
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->getUid(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

    if-nez v2, :cond_7c

    const-class v2, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerInternal;

    iput-object v2, v1, Lcom/android/server/policy/PermissionPolicyService;->mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

    :cond_7c
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object v1, v1, Lcom/android/server/policy/PermissionPolicyService;->mNotificationManager:Lcom/android/server/notification/NotificationManagerInternal;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lcom/android/server/notification/NotificationManagerInternal;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v1

    const/4 v3, 0x0

    if-lez v1, :cond_8a

    move v1, v2

    goto :goto_8b

    :cond_8a
    move v1, v3

    :goto_8b
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object v4, v4, Lcom/android/server/policy/PermissionPolicyService;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const-string/jumbo v5, "android.permission.POST_NOTIFICATIONS"

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v4, v0, v5, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9c

    move v0, v2

    goto :goto_9d

    :cond_9c
    move v0, v3

    :goto_9d
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object v4, v4, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v4, v5, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v4

    const v5, 0x8037

    and-int/2addr v4, v5

    if-eqz v4, :cond_b0

    move v4, v2

    goto :goto_b1

    :cond_b0
    move v4, v3

    :goto_b1
    if-nez v0, :cond_14d

    if-eqz v1, :cond_14d

    if-nez v4, :cond_14d

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10040000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_f3

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    if-eqz v1, :cond_f3

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_f3

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getClearOptionsAnimationRunnable()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_f3

    move v1, v2

    goto :goto_f4

    :cond_f3
    move v1, v3

    :goto_f4
    if-eqz v1, :cond_10b

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v4

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_115

    :cond_10b
    new-instance v4, Landroid/app/ActivityOptions;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v4, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    :goto_115
    invoke-virtual {v4, v2, v3}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    invoke-virtual {v4, p3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    if-eqz v1, :cond_124

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getClearOptionsAnimationRunnable()Ljava/lang/Runnable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_124
    :try_start_124
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p0, v0, p3, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_12d} :catch_12e

    return-void

    :catch_12e
    move-exception p0

    const-string/jumbo p2, "couldn\'t start grant permission dialogfor other package "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "PermissionPolicyService"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14d

    :goto_13d
    :try_start_13d
    monitor-exit v1
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_3e

    throw p0

    :cond_13f
    :goto_13f
    if-nez v0, :cond_14d

    const-string/jumbo p0, "PermissionPolicyService"

    const-string p2, "Cannot check for Notification prompt, no package for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14d
    :goto_14d
    return-void
.end method
