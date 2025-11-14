.class public final Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDevOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

.field public final mForceOptInAadList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mForceOptOutAadList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    const-string v2, "AdaptiveAppByDefaultOverrides"

    const/16 v3, 0x4000

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;->mDevOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    new-instance v0, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->FORCE_OPT_OUT_ADAPTIVE_APP_BY_DEFAULT_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object v0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;->mForceOptOutAadList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    new-instance v0, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->FORCE_OPT_IN_ADAPTIVE_APP_BY_DEFAULT_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object v0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;->mForceOptInAadList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    new-instance v0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides$1;-><init>(Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;)V

    sget-object p0, Lcom/android/server/wm/PackagesChange;->sUserChangeCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getDevOverride(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;->mDevOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception p1

    goto :goto_2b

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;->mForceOptOutAadList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit p0

    return-object p1

    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;->mForceOptInAadList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    monitor-exit p0

    return-object p1

    :cond_28
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_e

    throw p1
.end method

.method public final setDevOverride(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    move v1, v0

    :goto_7
    if-eqz v1, :cond_e

    :try_start_9
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_e

    :catchall_c
    move-exception p1

    goto :goto_15

    :cond_e
    :goto_e
    iget-object v2, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;->mDevOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v2, v0, p1, p2, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(ILjava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_c

    throw p1
.end method
