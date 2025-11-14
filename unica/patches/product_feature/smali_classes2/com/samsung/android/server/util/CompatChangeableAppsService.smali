.class public final Lcom/samsung/android/server/util/CompatChangeableAppsService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static getCompatChangeablePackageInfoList(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 7

    sget-object v0, Lcom/samsung/android/server/util/CompatChangeableAppsService$LazyHolder;->sService:Lcom/samsung/android/server/util/CompatChangeableAppsService;

    iget-object v1, v0, Lcom/samsung/android/server/util/CompatChangeableAppsService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/server/util/SafetySystemService$LazyHolder;->sSingleton:Lcom/samsung/android/server/util/SafetySystemService$Manager;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mSystemContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-nez v2, :cond_0

    const-string/jumbo v1, "PackageManager"

    const-string v2, " should be called after system ready."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SafetySystemService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/samsung/android/server/util/CompatChangeableAppsService;->mPackageManager:Landroid/content/pm/PackageManager;

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_1
    iget-object v0, v0, Lcom/samsung/android/server/util/CompatChangeableAppsService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_2

    const-string p0, "CompatChangeableApps"

    const-string/jumbo p1, "PackageManager is null."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0xc0000

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_3

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_7

    if-eqz p0, :cond_6

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    const/4 v3, 0x1

    :cond_7
    new-instance v6, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6, v4, v0, v5}, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->build()Lcom/samsung/android/core/CompatChangeablePackageInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-nez v3, :cond_9

    if-eqz p0, :cond_9

    new-instance p1, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    invoke-direct {p1}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;-><init>()V

    invoke-virtual {p1, p0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->build()Lcom/samsung/android/core/CompatChangeablePackageInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method
