.class public final Lcom/android/server/pm/CrossProfileIntentFilterHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mSettings:Lcom/android/server/pm/Settings;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

.field public final mUserManagerService:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/UserManagerService$LocalService;Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mSettings:Lcom/android/server/pm/Settings;

    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerService:Lcom/android/server/pm/UserManagerService;

    iput-object p3, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iput-object p5, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    return-void
.end method


# virtual methods
.method public final clearCrossProfileIntentFilters(ILjava/lang/String;Ljava/lang/Integer;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, v1, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget-object v4, v3, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz p3, :cond_3b

    iget v4, v3, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_1a

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_4e

    :cond_3b
    :goto_3b
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerService:Lcom/android/server/pm/UserManagerService;

    iget v5, v3, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/pm/UserManagerService;->isCrossProfileIntentFilterAccessible(IIZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v1, v3}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_1a

    :cond_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_39

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    return-void

    :goto_4e
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_39

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final updateDefaultCrossProfileIntentFilter()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService$LocalService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_d
    :goto_d
    if-ge v1, v3, :cond_51

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/content/pm/UserProperties;->getUpdateCrossProfileIntentFiltersOnOTA()Z

    move-result v5

    if-eqz v5, :cond_d

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result v5

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, v6, :cond_d

    iget-object v7, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->clearCrossProfileIntentFilters(ILjava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->clearCrossProfileIntentFilters(ILjava/lang/String;Ljava/lang/Integer;)V

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/UserManagerService$LocalService;->setDefaultCrossProfileIntentFilters(II)V

    goto :goto_d

    :cond_51
    return-void
.end method
