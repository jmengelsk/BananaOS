.class public final Lcom/android/server/wm/AppWarnings;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mConfigFile:Landroid/util/AtomicFile;

.field public mDeprecatedAbiDialogs:Landroid/util/SparseArray;

.field public mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

.field public final mPackageFlags:Landroid/util/ArrayMap;

.field public mPackageNightModeDialogs:Landroid/util/SparseArray;

.field public mPageSizeMismatchDialogs:Landroid/util/SparseArray;

.field public final mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

.field public mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

.field public mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

    iput-object p2, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    new-instance p2, Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    invoke-direct {p2, p0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;-><init>(Lcom/android/server/wm/AppWarnings;)V

    iput-object p2, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    new-instance p2, Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    const-string/jumbo v0, "packages-warnings.xml"

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p3, "warnings-config"

    invoke-direct {p1, p2, p3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    return-void
.end method


# virtual methods
.method public final getPackageFlags(ILjava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;
    .registers 4

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    if-nez p1, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    return-object p0

    :cond_12
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p0

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_24
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p0

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I
    .registers 3

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-nez v0, :cond_17

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p0

    return p0

    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    return p0
.end method

.method public final hasPackageFlag(IILjava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(ILjava/lang/String;)I

    move-result p0

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final isSpeg(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_2a

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2a

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Skipping warning dialog of "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v0, "SPEG"

    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2a
    return v0
.end method

.method public final onSystemReady()V
    .registers 17

    move-object/from16 v1, p0

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, v1, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const-string v2, "Error reading package metadata"

    const-string v3, "AppWarnings"

    const/4 v4, 0x0

    :try_start_11
    iget-object v0, v1, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_17} :catch_f2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_ef
    .catchall {:try_start_11 .. :try_end_17} :catchall_ec

    :try_start_17
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v6

    :goto_1f
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v6, v8, :cond_36

    if-eq v6, v7, :cond_36

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6
    :try_end_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_29} :catch_32
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2e
    .catchall {:try_start_17 .. :try_end_29} :catchall_2a

    goto :goto_1f

    :catchall_2a
    move-exception v0

    move-object v4, v5

    goto/16 :goto_11b

    :catch_2e
    move-exception v0

    move-object v4, v5

    goto/16 :goto_f5

    :catch_32
    move-exception v0

    move-object v4, v5

    goto/16 :goto_103

    :cond_36
    if-ne v6, v7, :cond_3f

    if-eqz v5, :cond_109

    :goto_3a
    :try_start_3a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_109

    goto/16 :goto_109

    :cond_3f
    :try_start_3f
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "packages"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e8

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v9, 0x0

    move v10, v9

    :goto_52
    if-ne v6, v8, :cond_d7

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v11

    if-ne v11, v8, :cond_d7

    const-string/jumbo v11, "package"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d7

    const-string/jumbo v6, "user"

    const/16 v11, -0x2710

    invoke-interface {v0, v4, v6, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v12, "name"

    invoke-interface {v0, v4, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_d7

    const-string/jumbo v13, "flags"

    invoke-interface {v0, v4, v13, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    if-eq v6, v11, :cond_94

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    iget-object v11, v1, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d7

    :cond_94
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v6

    if-nez v6, :cond_ac

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    iget-object v10, v1, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d6

    :cond_ac
    iget-object v6, v1, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v6

    array-length v10, v6

    move v11, v9

    :goto_b4
    if-ge v11, v10, :cond_d6

    aget-object v14, v6, v11

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v15

    if-nez v15, :cond_bf

    goto :goto_d2

    :cond_bf
    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v14, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d2
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_b4

    :cond_d6
    :goto_d6
    move v10, v7

    :cond_d7
    :goto_d7
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    if-ne v6, v7, :cond_e5

    if-eqz v10, :cond_e8

    iget-object v0, v1, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V
    :try_end_e4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_e4} :catch_32
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_e4} :catch_2e
    .catchall {:try_start_3f .. :try_end_e4} :catchall_2a

    goto :goto_e8

    :cond_e5
    const/4 v4, 0x0

    goto/16 :goto_52

    :cond_e8
    :goto_e8
    if-eqz v5, :cond_109

    goto/16 :goto_3a

    :catchall_ec
    move-exception v0

    const/4 v4, 0x0

    goto :goto_11b

    :catch_ef
    move-exception v0

    const/4 v4, 0x0

    goto :goto_f5

    :catch_f2
    move-exception v0

    const/4 v4, 0x0

    goto :goto_103

    :goto_f5
    if-eqz v4, :cond_fd

    :try_start_f7
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_fb

    goto :goto_fd

    :catchall_fb
    move-exception v0

    goto :goto_11b

    :cond_fd
    :goto_fd
    if-eqz v4, :cond_109

    :goto_ff
    :try_start_ff
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_109

    goto :goto_109

    :goto_103
    :try_start_103
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_fb

    if-eqz v4, :cond_109

    goto :goto_ff

    :catch_109
    :cond_109
    :goto_109
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_110

    return-void

    :cond_110
    iget-object v0, v1, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    new-instance v2, Lcom/android/server/wm/AppWarnings$1;

    invoke-direct {v2, v1}, Lcom/android/server/wm/AppWarnings$1;-><init>(Lcom/android/server/wm/AppWarnings;)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    return-void

    :goto_11b
    if-eqz v4, :cond_120

    :try_start_11d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_120

    :catch_120
    :cond_120
    throw v0
.end method

.method public final removePackageAndHideDialogs(ILjava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move p1, v1

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    :goto_f
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_34

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_36

    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_32

    throw p0
.end method

.method public final setPackageFlag(IILjava/lang/String;Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(ILjava/lang/String;)I

    move-result v1

    if-eqz p4, :cond_b

    or-int/2addr p2, v1

    goto :goto_d

    :cond_b
    not-int p2, p2

    and-int/2addr p2, v1

    :goto_d
    if-eq v1, p2, :cond_2f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p2, :cond_25

    iget-object p3, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :catchall_23
    move-exception p0

    goto :goto_31

    :cond_25
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2a
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V

    :cond_2f
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_23

    throw p0
.end method

.method public final showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :goto_11
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-eq v1, v2, :cond_2e

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-le v1, v0, :cond_2e

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2e
    return-void
.end method
