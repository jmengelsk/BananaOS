.class public final Lcom/android/server/media/RemoteDisplayProviderWatcher;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCallback:Lcom/android/server/media/MediaRouterService$UserHandler;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mProviders:Ljava/util/ArrayList;

.field public mRunning:Z

.field public final mScanPackagesReceiver:Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

.field public final mScanPackagesRunnable:Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

.field public final mUserId:I


# direct methods
.method public static -$$Nest$mscanPackages(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V
    .locals 14

    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.media.remotedisplay.RemoteDisplayProvider"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/MediaRouterService$UserHandler;

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_1

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v9, "/"

    const-string/jumbo v10, "RemoteDisplayProvider"

    if-eqz v8, :cond_9

    const-string/jumbo v11, "android.permission.BIND_REMOTE_DISPLAY"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v8, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v11, "android.permission.REMOTE_DISPLAY_PROVIDER"

    iget-object v12, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring remote display provider service because it does not have the REMOTE_DISPLAY_PROVIDER permission: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v5, v4, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v2

    :goto_1
    if-ge v11, v10, :cond_5

    iget-object v12, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/media/RemoteDisplayProviderProxy;

    iget-object v13, v12, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v12, v12, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v5, v11

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-gez v5, :cond_6

    new-instance v5, Lcom/android/server/media/RemoteDisplayProviderProxy;

    iget-object v8, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v5, v8, v9, v3, v4}, Lcom/android/server/media/RemoteDisplayProviderProxy;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/os/Looper;)V

    invoke-virtual {v5}, Lcom/android/server/media/RemoteDisplayProviderProxy;->start()V

    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v5, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/MediaRouterService$UserHandler;

    iget v1, v7, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {v5, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    invoke-virtual {v5, v6}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-direct {v1, v5}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    iget-object v4, v7, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v5, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    invoke-virtual {v1, v4}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    invoke-virtual {v7}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    move v1, v8

    goto/16 :goto_0

    :cond_6
    if-lt v5, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v4}, Lcom/android/server/media/RemoteDisplayProviderProxy;->start()V

    iget-object v6, v4, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-nez v6, :cond_8

    iget-boolean v6, v4, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    if-eqz v6, :cond_8

    iget v6, v4, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    if-nez v6, :cond_7

    iget-object v6, v4, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    if-eqz v6, :cond_8

    :cond_7
    invoke-virtual {v4}, Lcom/android/server/media/RemoteDisplayProviderProxy;->unbind()V

    invoke-virtual {v4}, Lcom/android/server/media/RemoteDisplayProviderProxy;->bind()V

    :cond_8
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v4, v5, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v1, v6

    goto/16 :goto_0

    :cond_9
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring remote display provider service because it did not require the BIND_REMOTE_DISPLAY permission in its manifest: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v5, v4, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-lt v0, v1, :cond_e

    iget-object v3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/RemoteDisplayProviderProxy;

    iget-object v4, v7, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v8, v2

    :goto_5
    if-ge v8, v4, :cond_c

    iget-object v9, v7, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    iget-object v9, v9, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    if-ne v9, v3, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_c
    move v8, v5

    :goto_6
    if-ltz v8, :cond_d

    iget-object v4, v7, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v4, v6}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    iput-object v6, v3, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/MediaRouterService$UserHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    invoke-virtual {v7}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    invoke-virtual {v7}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    :cond_d
    iget-object v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->stop()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_e
    :goto_7
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "RemoteDisplayProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/MediaRouterService$UserHandler;Lcom/android/server/media/MediaRouterService$UserHandler;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;-><init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;-><init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/MediaRouterService$UserHandler;

    iput-object p3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    iput p4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method
