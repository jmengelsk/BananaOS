.class public final Lcom/android/server/wm/MultiWindowSupportPolicyController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    const-string v1, "BlockList"

    const/4 v2, 0x1

    invoke-direct {v0, v2, p1, v1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    :cond_18
    return-void
.end method

.method public static isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x1

    const-string/jumbo v3, "com.samsung.android.multiwindow.ignore.nonresizable.setting"

    if-eqz v1, :cond_17

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_17

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_22

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public static supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mDevEnableNonResizableMultiWindow:Z

    const/4 v2, 0x1

    if-nez p1, :cond_27

    if-ne v1, v2, :cond_10

    goto :goto_27

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_27

    :cond_17
    const/4 p1, -0x1

    if-ne v1, p1, :cond_1b

    goto :goto_26

    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 p1, 0x258

    if-lt p0, p1, :cond_26

    goto :goto_27

    :cond_26
    :goto_26
    return v0

    :cond_27
    :goto_27
    return v2
.end method


# virtual methods
.method public final checkSupportPolicyLocked(ILjava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const v1, -0x300001

    if-eqz v0, :cond_c

    and-int p0, p1, v1

    return p0

    :cond_c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    return p1

    :cond_13
    and-int/2addr p1, v1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-eqz v0, :cond_23

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->containsPackage(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_23

    const/high16 p0, 0x100000

    :goto_21
    or-int/2addr p0, p1

    return p0

    :cond_23
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-eqz p0, :cond_31

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->containsPackage(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_31

    const/high16 p0, 0x200000

    goto :goto_21

    :cond_31
    return p1
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .registers 3

    const-string/jumbo v0, "[MultiWindowSupportPolicyController]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->dump(Ljava/io/PrintWriter;)V

    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-eqz p0, :cond_14

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->dump(Ljava/io/PrintWriter;)V

    :cond_14
    return-void
.end method

.method public final initialize()V
    .registers 1

    return-void
.end method

.method public final supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;IZZLjava/util/function/Supplier;)Z
    .registers 11

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-ne p2, v0, :cond_7

    goto/16 :goto_8c

    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    goto/16 :goto_86

    :cond_10
    const/high16 v0, 0x100000

    and-int/2addr v0, p2

    if-eqz v0, :cond_17

    goto/16 :goto_86

    :cond_17
    const/high16 v0, 0x200000

    and-int/2addr p2, v0

    if-eqz p2, :cond_21

    invoke-static {p1, p4}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p0

    return p0

    :cond_21
    if-eqz p3, :cond_24

    goto :goto_86

    :cond_24
    invoke-static {p1, p4}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_86

    :cond_2b
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_ADAPTIVE_APP_BY_DEFAULT:Z

    if-eqz p1, :cond_8c

    if-nez p4, :cond_8c

    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_8c

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_8c

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isWindowManagerCtsPackage(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8c

    const-string/jumbo p2, "android.window.PROPERTY_COMPAT_ALLOW_RESTRICTED_RESIZABILITY"

    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p5, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_58
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4, p5}, Landroid/content/pm/IPackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p2

    if-eqz p2, :cond_6c

    invoke-virtual {p2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p2
    :try_end_66
    .catchall {:try_start_58 .. :try_end_66} :catchall_6a

    if-eqz p2, :cond_6c

    move p2, v2

    goto :goto_6d

    :catchall_6a
    move-exception p2

    goto :goto_71

    :cond_6c
    move p2, v1

    :goto_6d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_78

    :goto_71
    :try_start_71
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_87

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move p2, v1

    :goto_78
    if-nez p2, :cond_8c

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAdaptiveAppByDefaultPolicy:Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, v2, v2}, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->isUniversalResizeableOverride(Landroid/content/pm/ApplicationInfo;ZZ)Z

    move-result p0

    if-eqz p0, :cond_8c

    :goto_86
    return v2

    :catchall_87
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_8c
    :goto_8c
    return v1
.end method

.method public final updateAllTasksLocked()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/wm/Task;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/Task;)V

    new-instance v4, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiWindowSupportPolicyController;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_d

    :cond_24
    return-void
.end method

.method public final updateSupportPolicyLocked(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/Task;)V
    .registers 4

    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/android/server/wm/Task;->mIgnoreDevSettingForNonResizable:Z

    :cond_8
    iget-object p1, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iget v0, p2, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->checkSupportPolicyLocked(ILjava/lang/String;)I

    move-result p0

    iput p0, p2, Lcom/android/server/wm/Task;->mResizeMode:I

    return-void
.end method
