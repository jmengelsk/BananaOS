.class public final Lcom/android/server/search/SearchManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mChangedPackages:Ljava/util/ArrayList;

.field public mSearchablePackageAppeared:Z

.field public final synthetic this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    return-void
.end method


# virtual methods
.method public final onBeginPackageChanges()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    return-void
.end method

.method public final onFinishPackageChanges()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    goto :goto_40

    :cond_a
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    iget-object v3, v3, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_14
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    iget-object v4, v4, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/search/Searchables;

    if-eqz v4, :cond_28

    monitor-enter v4
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_95

    :try_start_21
    iget-object v1, v4, Lcom/android/server/search/Searchables;->mKnownSearchablePackageNames:Landroid/util/ArraySet;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_25

    :try_start_23
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_95

    goto :goto_28

    :catchall_25
    move-exception p0

    :try_start_26
    monitor-exit v4
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw p0

    :cond_28
    :goto_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_95

    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_30
    if-ge v4, v3, :cond_8d

    iget-object v5, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    :goto_40
    const-string/jumbo v1, "SearchManagerService"

    const-string/jumbo v3, "_updateSearchables"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    iget-object v5, v1, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_4e
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    iget-object v1, v1, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/search/Searchables;

    if-eqz v1, :cond_63

    monitor-enter v1
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_87

    const/4 v3, 0x1

    :try_start_5c
    iput-boolean v3, v1, Lcom/android/server/search/Searchables;->mRebuildSearchables:Z
    :try_end_5e
    .catchall {:try_start_5c .. :try_end_5e} :catchall_60

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_87

    goto :goto_63

    :catchall_60
    move-exception p0

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    :try_start_62
    throw p0

    :cond_63
    :goto_63
    monitor-exit v5
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_87

    const-string/jumbo v1, "SearchManagerService"

    const-string/jumbo v3, "_updateSearchables completed."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.search.action.SEARCHABLES_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x24000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    iget-object v3, v3, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_8d

    :catchall_87
    move-exception p0

    :try_start_88
    monitor-exit v5
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p0

    :cond_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_8d
    :goto_8d
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    return-void

    :catchall_95
    move-exception p0

    :try_start_96
    monitor-exit v3
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw p0
.end method

.method public final onPackageAppeared(Ljava/lang/String;I)V
    .registers 8

    iget-boolean p2, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    if-nez p2, :cond_69

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    iget-object v0, v0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v2, 0x10800080

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    goto :goto_67

    :cond_2b
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    iget-object v0, v0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_67

    :cond_4a
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->this$0:Lcom/android/server/search/SearchManagerService;

    iget-object v0, v0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    xor-int/2addr v1, p2

    :goto_67
    iput-boolean v1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mSearchablePackageAppeared:Z

    :cond_69
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
