.class public final Lcom/android/server/tv/TvRemoteProviderWatcher$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$2;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    iget-object p0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$2;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    if-nez v0, :cond_8

    goto/16 :goto_f4

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.media.tv.remoteprovider.TvRemoteProvider"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_1e

    invoke-virtual {p0, v4}, Lcom/android/server/tv/TvRemoteProviderWatcher;->verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v2

    :goto_40
    if-ge v9, v8, :cond_66

    iget-object v10, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/tv/TvRemoteProviderProxy;

    iget-object v11, v10, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_63

    iget-object v10, v10, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_63

    goto :goto_67

    :cond_63
    add-int/lit8 v9, v9, 0x1

    goto :goto_40

    :cond_66
    const/4 v9, -0x1

    :goto_67
    if-gez v9, :cond_91

    new-instance v6, Lcom/android/server/tv/TvRemoteProviderProxy;

    iget-object v7, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mLock:Ljava/lang/Object;

    invoke-direct {v6, v7, v4, v8, v3}, Lcom/android/server/tv/TvRemoteProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/content/ComponentName;I)V

    iget-boolean v4, v6, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    if-nez v4, :cond_88

    iput-boolean v5, v6, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    invoke-virtual {v6}, Lcom/android/server/tv/TvRemoteProviderProxy;->bind()V

    :cond_88
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_8f
    move v1, v5

    goto :goto_1e

    :cond_91
    if-lt v9, v1, :cond_1e

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvRemoteProviderProxy;

    iget-boolean v6, v4, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    if-nez v6, :cond_a4

    iput-boolean v5, v4, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    invoke-virtual {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->bind()V

    :cond_a4
    iget-boolean v5, v4, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    if-eqz v5, :cond_ba

    iget-boolean v5, v4, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnected:Z

    if-nez v5, :cond_ba

    iget-boolean v5, v4, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-eqz v5, :cond_b7

    iput-boolean v2, v4, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    iget-object v5, v4, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_b7
    invoke-virtual {v4}, Lcom/android/server/tv/TvRemoteProviderProxy;->bind()V

    :cond_ba
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v9, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_8f

    :cond_c2
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_f4

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :goto_d1
    if-lt v0, v1, :cond_f4

    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvRemoteProviderProxy;

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mProviderProxies:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v4, v3, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    if-eqz v4, :cond_f1

    iput-boolean v2, v3, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    iget-boolean v4, v3, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-eqz v4, :cond_f1

    iput-boolean v2, v3, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    iget-object v4, v3, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_f1
    add-int/lit8 v0, v0, -0x1

    goto :goto_d1

    :cond_f4
    :goto_f4
    return-void
.end method
