.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$2:I

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda62;->f$3:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    monitor-enter v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    :try_start_0
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_3

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/InstallRequest;

    iget v8, v6, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-eq v8, v7, :cond_0

    goto :goto_2

    :cond_0
    iget-object v7, v6, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    iget-object v6, v6, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    :goto_1
    array-length v8, v7

    if-ge v6, v8, :cond_2

    aget v8, v7, v6

    if-ne v2, v8, :cond_1

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const/16 v5, 0x3e8

    invoke-interface {v3, v2, v5, v1}, Lcom/android/server/pm/Computer;->isInstantAppInternal(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v5, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_3

    :cond_4
    new-array v5, v7, [I

    aput v2, v5, v4

    :goto_3
    if-eqz v3, :cond_5

    new-array v3, v7, [I

    aput v2, v3, v4

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    :goto_4
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {v0, v1, p0, v5, v3}, Lcom/android/server/pm/BroadcastHelper;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V

    return-void

    :goto_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
