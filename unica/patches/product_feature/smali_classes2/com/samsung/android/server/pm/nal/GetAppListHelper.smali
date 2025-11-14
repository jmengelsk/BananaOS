.class public final Lcom/samsung/android/server/pm/nal/GetAppListHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final EXEMPTED_PACKAGES:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "com.google.android.wearable.app.cn"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->EXEMPTED_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public static checkCallingGetAppList(Landroid/content/Context;IZLjava/util/function/Function;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    return v0

    :cond_4
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const-string/jumbo v1, "com.samsung.android.permission.GET_APP_LIST"

    invoke-static {v1, p1}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_46

    array-length p3, p1

    if-nez p3, :cond_26

    goto :goto_46

    :cond_26
    aget-object p1, p1, v0

    const-class p3, Landroid/permission/PermissionManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionManager;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Landroid/permission/PermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_44

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_40

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_40
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_44
    move-exception p0

    goto :goto_4a

    :cond_46
    :goto_46
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_4a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4e
    return v3
.end method

.method public static getTaskIdOfVisibleActivity(Ljava/util/List;)I
    .registers 6

    if-nez p0, :cond_4

    goto/16 :goto_82

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-boolean v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    if-eqz v2, :cond_8

    iget-boolean v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-eqz v2, :cond_8

    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v3, "android.intent.category.CAR_LAUNCHER"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5e
    iget p0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    return p0

    :cond_61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_65
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    if-eqz v1, :cond_65

    iget-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-eqz v1, :cond_65

    iget p0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    return p0

    :cond_82
    :goto_82
    const/4 p0, -0x1

    return p0
.end method

.method public static requestGetAppListPermIfNeeded(Landroid/content/Context;II)V
    .registers 8

    const-string v0, "GetAppListHelper"

    const-string v1, "Failed to get app tasks for "

    :try_start_4
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p2}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_59

    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_54

    :try_start_1a
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAppTasks(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    :try_start_1f
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_27
    if-nez v1, :cond_2a

    goto :goto_59

    :cond_2a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_2e

    iget-boolean v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    if-eqz v4, :cond_2e

    iget-boolean v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-eqz v3, :cond_2e

    invoke-static {v1}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->getTaskIdOfVisibleActivity(Ljava/util/List;)I

    move-result v1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p0, p2, v1, v2}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->showGetAppListConfirmDialog(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_53} :catch_54

    goto :goto_59

    :catch_54
    const-string p0, "Failed to request GET_APP_LIST for "

    invoke-static {p1, p0, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public static showGetAppListConfirmDialog(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 9

    const-string/jumbo v0, "Request GET_APP_LIST permission for "

    if-gez p2, :cond_6

    goto :goto_63

    :cond_6
    :try_start_6
    const-string v1, "GetAppListHelper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    const-string/jumbo v2, "com.samsung.android.permission.GET_APP_LIST"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.permissioncontroller"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10040000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_39} :catch_5f

    :try_start_39
    new-instance p1, Landroid/app/ActivityOptions;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, v3}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_56
    .catchall {:try_start_39 .. :try_end_56} :catchall_5a

    :try_start_56
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_5a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_63
    return-void
.end method


# virtual methods
.method public final isExemptedPackage(ILcom/android/server/pm/SettingBase;)Z
    .registers 9

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_8c

    if-nez p1, :cond_9

    goto/16 :goto_8c

    :cond_9
    const/4 p1, 0x0

    if-nez p2, :cond_e

    goto/16 :goto_8b

    :cond_e
    iget v0, p2, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    goto/16 :goto_8c

    :cond_15
    instance-of v0, p2, Lcom/android/server/pm/SharedUserSetting;

    iget-object p0, p0, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->EXEMPTED_PACKAGES:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_59

    check-cast p2, Lcom/android/server/pm/SharedUserSetting;

    iget-object p2, p2, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object p2, p2, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    if-eqz p2, :cond_77

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_77

    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_41

    goto :goto_2e

    :cond_41
    array-length v3, p0

    move v4, p1

    :goto_43
    if-ge v4, v3, :cond_2e

    aget-object v5, p0, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    return v1

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    :cond_51
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    goto :goto_77

    :cond_59
    instance-of v0, p2, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v0, :cond_77

    move-object v2, p2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_67

    goto :goto_77

    :cond_67
    array-length v0, p0

    move v3, p1

    :goto_69
    if-ge v3, v0, :cond_77

    aget-object v4, p0, v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    return v1

    :cond_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    :cond_77
    :goto_77
    if-eqz v2, :cond_8b

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p0

    const-string/jumbo p2, "com.samsung.android.permission.GET_APP_LIST"

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    goto :goto_8c

    :cond_8b
    :goto_8b
    return p1

    :cond_8c
    :goto_8c
    return v1
.end method
