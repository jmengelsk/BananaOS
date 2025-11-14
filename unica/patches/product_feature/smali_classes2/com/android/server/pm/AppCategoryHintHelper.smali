.class public final Lcom/android/server/pm/AppCategoryHintHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final FILE_PATH:Ljava/lang/String;

.field public static final FILE_PATH_DEVELOPER:Ljava/lang/String;


# instance fields
.field public mAppCategoryFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

.field public mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mCategoryLock:Ljava/lang/Object;

.field public final mCategoryMap:Ljava/util/HashMap;

.field public final mCategoryMapDeveloper:Ljava/util/HashMap;

.field public final mChangedByDeveloperApp:Landroid/util/ArraySet;

.field public final mChangedByUserApp:Landroid/util/ArraySet;

.field public mHandler:Landroid/os/Handler;

.field public final mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "package-appcategory.dat"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH:Ljava/lang/String;

    const-string/jumbo v1, "package-appcategory_dev.dat"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH_DEVELOPER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByUserApp:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByDeveloperApp:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static isSystemServerOrDebuggableShell()Z
    .registers 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_20

    :cond_12
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_22

    :cond_20
    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final clearAppCategoryHintBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_52

    if-eqz p2, :cond_44

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1c

    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByUserApp:Landroid/util/ArraySet;

    goto :goto_20

    :cond_1c
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByDeveloperApp:Landroid/util/ArraySet;

    :goto_20
    iget-object v1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_23
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_41

    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_41
    move-exception p0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0

    :cond_44
    const-string p0, "AppCategoryHintHelper"

    const-string/jumbo p1, "packageName is null or empty!"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_52
    const-string p0, "AppCategoryHintHelper"

    const-string p1, "AppCategoryHintHelper is not initialized, can\'t set category"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "AppCategoryHintHelper is not initialized, can\'t set category"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAppCategoryHintDeveloper(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_11

    const-string p0, "AppCategoryHintHelper"

    const-string p1, "AppCategoryHintHelper is not initialized, can\'t get category"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14
    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_2d

    :cond_2b
    :goto_2b
    monitor-exit v0

    return v1

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_29

    throw p0
.end method

.method public final getAppCategoryHintUser(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_11

    const-string p0, "AppCategoryHintHelper"

    const-string p1, "AppCategoryHintHelper is not initialized, can\'t get category"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14
    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_2d

    :cond_2b
    :goto_2b
    monitor-exit v0

    return v1

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_29

    throw p0
.end method

.method public final onInit(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mService:Lcom/android/server/pm/PackageManagerService;

    new-instance p1, Lcom/android/server/pm/BroadcastHelper;

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-direct {p1, v0}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    iput-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iput-object p2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mAppCategoryFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    sget-object p1, Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;->User:Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppCategoryHintHelper;->readCategoryBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;)V

    sget-object p1, Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;->Developer:Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppCategoryHintHelper;->readCategoryBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;)V

    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "AppCategoryHintHelper"

    const-string p1, "AppCategoryHintHelper init!"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final readCategoryBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;)V
    .registers 8

    const-string/jumbo v0, "read AppCategoryHintUser "

    const-string/jumbo v1, "categoryMap read error! "

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_17

    new-instance p1, Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    goto :goto_20

    :cond_17
    new-instance p1, Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH_DEVELOPER:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    :goto_20
    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_23
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_40

    :try_start_26
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_57
    .catchall {:try_start_26 .. :try_end_2b} :catchall_40

    :try_start_2b
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_42

    :try_start_30
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_44

    :try_start_39
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_42

    :try_start_3c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_57
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_6c

    :catchall_40
    move-exception p1

    goto :goto_92

    :catchall_42
    move-exception v4

    goto :goto_4e

    :catchall_44
    move-exception v5

    :try_start_45
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v4

    :try_start_4a
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw v5
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_42

    :goto_4e
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception v3

    :try_start_53
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_56
    throw v4
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_40

    :catch_57
    :try_start_57
    const-string v3, "AppCategoryHintHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6c
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_90

    const-string v1, "AppCategoryHintHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda5;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_90
    monitor-exit p0

    return-void

    :goto_92
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_57 .. :try_end_93} :catchall_40

    throw p1
.end method

.method public final sendAppCategoryBroadcast(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    const-string p0, "AppCategoryHintHelper"

    const-string p1, "AppCategoryHintHelper is not initialized, sendAppCategoryBroadcast is not required."

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "app_category"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAppCategoryHintBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5d

    if-eqz p2, :cond_4f

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    const/4 v0, -0x1

    if-ne p3, v0, :cond_17

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppCategoryHintHelper;->clearAppCategoryHintBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;Ljava/lang/String;)V

    return-void

    :cond_17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByUserApp:Landroid/util/ArraySet;

    goto :goto_27

    :cond_23
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByDeveloperApp:Landroid/util/ArraySet;

    :goto_27
    iget-object v1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2a
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_4c

    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_4c
    move-exception p0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0

    :cond_4f
    const-string p0, "AppCategoryHintHelper"

    const-string/jumbo p1, "packageName is null or empty!"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    const-string p0, "AppCategoryHintHelper"

    const-string p1, "AppCategoryHintHelper is not initialized, can\'t set category"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "AppCategoryHintHelper is not initialized, can\'t set category"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeAppCategoryBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;)V
    .registers 10

    const-string/jumbo v0, "write AppCategoryHintUser "

    const-string/jumbo v1, "categoryMap write error! "

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_19

    new-instance p1, Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByUserApp:Landroid/util/ArraySet;

    goto :goto_24

    :cond_19
    new-instance p1, Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH_DEVELOPER:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByDeveloperApp:Landroid/util/ArraySet;

    :goto_24
    iget-object v4, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_27
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_52
    .catchall {:try_start_27 .. :try_end_2c} :catchall_3b

    :try_start_2c
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_3d

    :try_start_31
    invoke-virtual {v6, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3f

    :try_start_34
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3d

    :try_start_37
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_52
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_67

    :catchall_3b
    move-exception p0

    goto :goto_98

    :catchall_3d
    move-exception v6

    goto :goto_49

    :catchall_3f
    move-exception v7

    :try_start_40
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v6

    :try_start_45
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_48
    throw v7
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_3d

    :goto_49
    :try_start_49
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v5

    :try_start_4e
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_51
    throw v6
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_3b

    :catch_52
    :try_start_52
    const-string v5, "AppCategoryHintHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_67
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_8b

    const-string v1, "AppCategoryHintHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda5;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_8b
    new-instance p1, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, v2}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;Ljava/util/HashMap;)V

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    monitor-exit v4

    return-void

    :goto_98
    monitor-exit v4
    :try_end_99
    .catchall {:try_start_52 .. :try_end_99} :catchall_3b

    throw p0
.end method
