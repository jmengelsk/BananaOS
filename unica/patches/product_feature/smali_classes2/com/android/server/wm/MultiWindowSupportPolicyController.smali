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
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    const-string v1, "BlockList"

    const/4 v2, 0x1

    invoke-direct {v0, v2, p1, v1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    :cond_0
    return-void
.end method

.method public static isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x1

    const-string/jumbo v3, "com.samsung.android.multiwindow.ignore.nonresizable.setting"

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public static supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mDevEnableNonResizableMultiWindow:Z

    const/4 v2, 0x1

    if-nez p1, :cond_5

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 p1, 0x258

    if-lt p0, p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    return v2
.end method


# virtual methods
.method public final checkSupportPolicyLocked(ILjava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const v1, -0x300001

    if-eqz v0, :cond_0

    and-int p0, p1, v1

    return p0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    and-int/2addr p1, v1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->containsPackage(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p0, 0x100000

    :goto_0
    or-int/2addr p0, p1

    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->containsPackage(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x200000

    goto :goto_0

    :cond_3
    return p1
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 1

    const-string/jumbo v0, "[MultiWindowSupportPolicyController]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->dump(Ljava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method public final initialize()V
    .locals 0

    return-void
.end method

.method public final supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;IZZLjava/util/function/Supplier;)Z
    .locals 5

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/high16 v0, 0x100000

    and-int/2addr v0, p2

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    const/high16 v0, 0x200000

    and-int/2addr p2, v0

    if-eqz p2, :cond_3

    invoke-static {p1, p4}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p0

    return p0

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p1, p4}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_ADAPTIVE_APP_BY_DEFAULT:Z

    if-eqz p1, :cond_7

    if-nez p4, :cond_7

    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_7

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_7

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isWindowManagerCtsPackage(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string/jumbo p2, "android.window.PROPERTY_COMPAT_ALLOW_RESTRICTED_RESIZABILITY"

    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p5, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4, p5}, Landroid/content/pm/IPackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_6

    move p2, v2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_6
    move p2, v1

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move p2, v1

    :goto_2
    if-nez p2, :cond_7

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAdaptiveAppByDefaultPolicy:Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, v2, v2}, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->isUniversalResizeableOverride(Landroid/content/pm/ApplicationInfo;ZZ)Z

    move-result p0

    if-eqz p0, :cond_7

    :goto_3
    return v2

    :catchall_1
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_7
    :goto_4
    return v1
.end method

.method public final updateAllTasksLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/wm/Task;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/Task;)V

    new-instance v4, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiWindowSupportPolicyController;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateSupportPolicyLocked(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/Task;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/android/server/wm/Task;->mIgnoreDevSettingForNonResizable:Z

    :cond_0
    iget-object p1, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget v0, p2, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->checkSupportPolicyLocked(ILjava/lang/String;)I

    move-result p0

    iput p0, p2, Lcom/android/server/wm/Task;->mResizeMode:I

    return-void
.end method
