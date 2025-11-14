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
    .locals 2

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
    .locals 2

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
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final clearAppCategoryHintBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByUserApp:Landroid/util/ArraySet;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByDeveloperApp:Landroid/util/ArraySet;

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const-string p0, "AppCategoryHintHelper"

    const-string/jumbo p1, "packageName is null or empty!"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "AppCategoryHintHelper"

    const-string p1, "AppCategoryHintHelper is not initialized, can\'t set category"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "AppCategoryHintHelper is not initialized, can\'t set category"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAppCategoryHintDeveloper(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "AppCategoryHintHelper"

    const-string p1, "AppCategoryHintHelper is not initialized, can\'t get category"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAppCategoryHintUser(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "AppCategoryHintHelper"

    const-string p1, "AppCategoryHintHelper is not initialized, can\'t get category"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onInit(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
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
    .locals 6

    const-string/jumbo v0, "read AppCategoryHintUser "

    const-string/jumbo v1, "categoryMap read error! "

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    new-instance p1, Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH_DEVELOPER:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception v4

    goto :goto_2

    :catchall_2
    move-exception v5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v4

    :try_start_7
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_2
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v3

    :try_start_9
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_0
    :try_start_a
    const-string v3, "AppCategoryHintHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1

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

    :cond_1
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p1
.end method

.method public final sendAppCategoryBroadcast(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AppCategoryHintHelper"

    const-string p1, "AppCategoryHintHelper is not initialized, sendAppCategoryBroadcast is not required."

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
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
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppCategoryHintHelper;->clearAppCategoryHintBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByUserApp:Landroid/util/ArraySet;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByDeveloperApp:Landroid/util/ArraySet;

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    const-string p0, "AppCategoryHintHelper"

    const-string/jumbo p1, "packageName is null or empty!"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "AppCategoryHintHelper"

    const-string p1, "AppCategoryHintHelper is not initialized, can\'t set category"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "AppCategoryHintHelper is not initialized, can\'t set category"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writeAppCategoryBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;)V
    .locals 8

    const-string/jumbo v0, "write AppCategoryHintUser "

    const-string/jumbo v1, "categoryMap write error! "

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    new-instance p1, Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByUserApp:Landroid/util/ArraySet;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    sget-object v2, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH_DEVELOPER:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByDeveloperApp:Landroid/util/ArraySet;

    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v6, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception v6

    goto :goto_2

    :catchall_2
    move-exception v7

    :try_start_5
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v6

    :try_start_6
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v5

    :try_start_8
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_0
    :try_start_9
    const-string v5, "AppCategoryHintHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1

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

    :cond_1
    new-instance p1, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, v2}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;Ljava/util/HashMap;)V

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    monitor-exit v4

    return-void

    :goto_5
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method
