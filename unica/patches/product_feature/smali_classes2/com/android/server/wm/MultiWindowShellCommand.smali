.class public Lcom/android/server/wm/MultiWindowShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field private static final CMD_ADD_SPLIT_ACTIVITY_INFO:Ljava/lang/String; = "add-split-activity"

.field private static final CMD_ALLOW_MULTIWINDOW:Ljava/lang/String; = "allow-multiwindow"

.field private static final CMD_BLOCK_MULTIWINDOW:Ljava/lang/String; = "block-multiwindow"

.field private static final CMD_DUMP_EMBED_ACTIVITY_INFO:Ljava/lang/String; = "dump-embed-activity"

.field private static final CMD_DUMP_SPLIT_ACTIVITY_INFO:Ljava/lang/String; = "dump-split-activity"

.field private static final CMD_GET_EMBED_ACTIVITY_PACKAGE_ENABLED:Ljava/lang/String; = "get-embed-activity-package-enabled"

.field private static final CMD_GET_SPLIT_ACTIVITY_PACKAGE_ENABLED:Ljava/lang/String; = "get-split-activity-package-enabled"

.field private static final CMD_GET_TASKID_FROM_PACKAGE_NAME:Ljava/lang/String; = "getTaskIdFromPackageName"

.field private static final CMD_MINIMIZE_ALL:Ljava/lang/String; = "minimize-all"

.field private static final CMD_MINIMIZE_ALL_INTENT:Ljava/lang/String; = "minimize-all-intent"

.field private static final CMD_MW_DYNAMIC_ENABLED:Ljava/lang/String; = "support"

.field private static final CMD_MW_TOGGLE_FREEFORM:Ljava/lang/String; = "toggle-freeform"

.field private static final CMD_REMOVE_FOCUSED_TASK:Ljava/lang/String; = "removeFocusedTask"

.field private static final CMD_REMOVE_SPLIT_ACTIVITY_INFO:Ljava/lang/String; = "remove-split-activity"

.field private static final CMD_SET_EMBED_ACTIVITY_PACKAGE_ENABLED:Ljava/lang/String; = "set-embed-activity-package-enabled"

.field private static final CMD_SET_MULTISTAR_ENSURE_LAUNCH_SPLIT:Ljava/lang/String; = "setMultiStarEnsureLaunchSplit"

.field private static final CMD_SET_NAVSTAR_IMMERSIVE_MODE:Ljava/lang/String; = "setNavStarImmersiveMode"

.field private static final CMD_SET_SPLIT_ACTIVITY_PACKAGE_ENABLED:Ljava/lang/String; = "set-split-activity-package-enabled"

.field private static final CMD_SHOW_ALL_COMMANDS:Ljava/lang/String; = "showall"

.field private static final CMD_SPLIT_IMMERSIVE:Ljava/lang/String; = "split-immersive"

.field private static final CMD_TOP_TASK_SUPPORTS_MULTIWINDOW:Ljava/lang/String; = "top-task-supports-mw"

.field private static final CMD_VISIBLETASKS:Ljava/lang/String; = "visibletasks"

.field private static final SUPPORTS_ALL_COMMANDS:Z


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mCommandMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method public static synthetic $r8$lambda$vvsjX_ym00jUigIyeM5fHI8DjRc(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/MultiWindowShellCommand;->lambda$cmdShowAllCommands$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mCommandMethods:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mInitialized:Z

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    new-instance p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method

.method private initCommands()V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mInitialized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-class v0, Lcom/android/server/wm/MultiWindowShellCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_33

    aget-object v3, v0, v2

    const-class v4, Lcom/android/server/wm/MWCommandInfo;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_30

    const-class v4, Lcom/android/server/wm/MWCommandInfo;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/MWCommandInfo;

    invoke-interface {v4}, Lcom/android/server/wm/MWCommandInfo;->supportsReleaseBuild()Z

    move-result v5

    if-eqz v5, :cond_30

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mCommandMethods:Ljava/util/HashMap;

    invoke-interface {v4}, Lcom/android/server/wm/MWCommandInfo;->cmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mInitialized:Z

    return-void
.end method

.method private invokeCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7

    const-string/jumbo v0, "invoke cmd="

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mCommandMethods:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3b

    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    method="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_37

    return p0

    :catch_37
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$cmdShowAllCommands$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .registers 5

    const-string/jumbo v0, "cmd="

    const-string v1, "    method="

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private printHelp(Ljava/io/PrintWriter;)V
    .registers 4

    const-string/jumbo p0, "Multi Tasking commands: (adb shell mw)"

    const-string/jumbo v0, "adb shell dumpsys activity mt"

    const-string v1, "    Print all about multi-tasking"

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cmdAddSplitActivityInfo([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "add-split-activity"
        supportsReleaseBuild = true
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public cmdAllowMultiWindow([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "allow-multiwindow"
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_48

    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_48

    const/4 p2, 0x0

    aget-object p2, p1, p2

    aget-object p1, p1, v0

    const-string/jumbo v1, "add"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    iget-object p2, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-nez p2, :cond_29

    new-instance p2, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v2, "AllowList"

    const/4 v3, 0x0

    invoke-direct {p2, v3, v1, v2}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    :cond_29
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-nez p0, :cond_2e

    goto :goto_47

    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->addPackage(Ljava/lang/String;)V

    return v0

    :cond_32
    const-string/jumbo v1, "remove"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_47

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-nez p0, :cond_44

    goto :goto_47

    :cond_44
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->removePackage(Ljava/lang/String;)V

    :cond_47
    :goto_47
    return v0

    :cond_48
    const-string p0, "Error: allow-multiwindow  option requires [add/remove] [packageName]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public cmdBlockMultiWindow([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "block-multiwindow"
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_4d

    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4d

    const/4 p2, 0x0

    aget-object p2, p1, p2

    aget-object p1, p1, v0

    const-string/jumbo v1, "add"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    iget-object p2, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-nez p2, :cond_2e

    new-instance p2, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v2, "BlockList"

    const/4 v3, 0x1

    invoke-direct {p2, v3, v1, v2}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-virtual {v1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    :cond_2e
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-nez p0, :cond_33

    goto :goto_4c

    :cond_33
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->addPackage(Ljava/lang/String;)V

    return v0

    :cond_37
    const-string/jumbo v1, "remove"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4c

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;

    if-nez p0, :cond_49

    goto :goto_4c

    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController$MultiWindowSupportRepository$AllowListRepository;->removePackage(Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return v0

    :cond_4d
    const-string p0, "Error: block-multiwindow  option requires [add/remove] [packageName]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public cmdDumpEmbedActivityInfo([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "dump-embed-activity"
    .end annotation

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mActivityEmbeddedPackageRepository:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    monitor-enter p0

    :try_start_d
    const-string p1, "    "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "ActivityEmbeddedPackageRepository : "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2a

    const-string p1, "Empty"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_28

    monitor-exit p0

    goto :goto_5c

    :catchall_28
    move-exception p1

    goto :goto_5e

    :cond_2a
    :try_start_2a
    iget-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_40
    if-ge v0, v1, :cond_5b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Ljava/lang/String;

    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_5a
    .catchall {:try_start_2a .. :try_end_5a} :catchall_28

    goto :goto_40

    :cond_5b
    monitor-exit p0

    :goto_5c
    const/4 p0, 0x1

    return p0

    :goto_5e
    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_28

    throw p1
.end method

.method public cmdDumpSplitActivityInfo([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "dump-split-activity"
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public cmdGetEmbedActivityPackageEnabled([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "get-embed-activity-package-enabled"
    .end annotation

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_3b

    array-length v2, p1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3b

    aget-object v2, p1, v1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ActivityEmbeddedController;->getEnabled(ILjava/lang/String;)I

    move-result p0

    if-eq p0, v3, :cond_2a

    move v1, v0

    :cond_2a
    const-string p0, " activity embedding "

    invoke-static {v2, p0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz v1, :cond_35

    const-string p1, "Enabled"

    goto :goto_37

    :cond_35
    const-string p1, "Disabled"

    :goto_37
    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return v0

    :cond_3b
    const-string p0, "Error: get-embed-activity-package-enabled  option requires [packageName, userId]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public cmdGetSplitActivityPackageEnabled([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "get-split-activity-package-enabled"
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public cmdGetTaskIdFromPackageName([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "getTaskIdFromPackageName"
    .end annotation

    if-eqz p1, :cond_31

    array-length v0, p1

    if-lez v0, :cond_31

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getTaskInfoFromPackageName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    :cond_31
    const/4 p0, 0x1

    return p0
.end method

.method public cmdGetVisibleTasks([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "visibletasks"
    .end annotation

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public cmdImmersiveSplitMode([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "split-immersive"
    .end annotation

    if-eqz p1, :cond_3c

    array-length v0, p1

    if-lez v0, :cond_3c

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string/jumbo v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string/jumbo v1, "off"

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    :cond_1c
    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setSplitImmersiveModeLocked(Z)V

    iget-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    goto :goto_41

    :cond_3c
    const-string p0, "Invalid argument: split-immersive  option requires [on/off]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_41
    const/4 p0, 0x1

    return p0
.end method

.method public cmdMinimizeAll([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "minimize-all"
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_10

    array-length v0, p1

    if-lez v0, :cond_10

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    return p1
.end method

.method public cmdMinimizeAllIntent([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "minimize-all-intent"
    .end annotation

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cmdMultiWindowOnAndOff([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 8
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "support"
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_54

    array-length v2, p1

    if-lez v2, :cond_54

    aget-object v2, p1, v1

    const-string/jumbo v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string/jumbo v2, "off"

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    :cond_24
    aget-object p2, p1, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_39

    aget-object v1, p1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    aget-object p1, p1, v2

    goto :goto_3c

    :cond_39
    const-string/jumbo p1, "shell_command"

    :goto_3c
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowEnableController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    :try_start_46
    invoke-virtual {p0, v0, p1, p1, p2}, Lcom/android/server/wm/MultiWindowEnableController;->setEnableForUser(ILjava/lang/String;Ljava/lang/String;Z)V

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_4e
    move-exception p0

    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_54
    const-string p0, "Error: support  option requires [on/off]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public cmdRemoveFocusedTask([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "removeFocusedTask"
    .end annotation

    if-eqz p1, :cond_24

    array-length v0, p1

    if-lez v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFocusedTask(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public cmdRemoveSplitActivityInfo([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "remove-split-activity"
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public cmdSetEmbedActivityPackageEnabled([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "set-embed-activity-package-enabled"
    .end annotation

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_2c

    array-length v2, p1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2c

    aget-object p2, p1, v1

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/wm/MultiTaskingController;->setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V

    goto :goto_31

    :cond_2c
    const-string p0, "Error: set-embed-activity-package-enabled  option requires [packageName, enabled, userId]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_31
    return v0
.end method

.method public cmdSetMultiStarEnsureLaunchSplit([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "setMultiStarEnsureLaunchSplit"
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    if-gtz v0, :cond_5

    return v1

    :cond_5
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setEnsureLaunchSplitEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public cmdSetNavStarImmersiveMode([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "setNavStarImmersiveMode"
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    if-gtz v0, :cond_5

    return v1

    :cond_5
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setNaviBarImmersiveModeLocked(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public cmdSetSplitActivityPackageEnabled([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "set-split-activity-package-enabled"
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public cmdShowAllCommands([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "showall"
        supportsReleaseBuild = true
    .end annotation

    const-string/jumbo p1, "[Commands    SUPPORTS_ALL_COMMANDS=false]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mCommandMethods:Ljava/util/HashMap;

    new-instance p1, Lcom/android/server/wm/MultiWindowShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/wm/MultiWindowShellCommand$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cmdToggleFreeform([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "toggle-freeform"
    .end annotation

    iget-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    const/4 p0, 0x1

    return p0

    :cond_1f
    const-string p0, "Error: toggle-freeform  cannot find target activity"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public cmdTopTaskSupportsMultiWindow([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "top-task-supports-mw"
    .end annotation

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_30

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportsMultiWindow(Landroid/os/IBinder;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " supports multiwindow = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_36

    :cond_30
    const-string/jumbo p0, "top activity is null"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_36
    const/4 p0, 0x1

    return p0
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 6

    const-string/jumbo v0, "Unknown command: "

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowShellCommand;->initCommands()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    if-eqz p1, :cond_1c

    :try_start_e
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/MultiWindowShellCommand;->invokeCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-eqz p2, :cond_1c

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_1a
    move-exception p0

    goto :goto_41

    :cond_1c
    if-eqz p1, :cond_38

    :try_start_1e
    const-string/jumbo p2, "help"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_38

    const-string p2, "-h"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    goto :goto_38

    :cond_30
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3b

    :cond_38
    :goto_38
    invoke-direct {p0, p3}, Lcom/android/server/wm/MultiWindowShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    :goto_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_1e .. :try_end_3c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, -0x1

    return p0

    :goto_41
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    :goto_14
    if-eqz v2, :cond_1e

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_1e
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wm/MultiWindowShellCommand;->execute(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .registers 2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiWindowShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    return-void
.end method
