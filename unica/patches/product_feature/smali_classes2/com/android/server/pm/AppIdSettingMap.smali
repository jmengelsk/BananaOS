.class public final Lcom/android/server/pm/AppIdSettingMap;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mFirstAvailableAppId:I

.field public final mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

.field public final mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

.field public final mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v2, "AppIdSettingMap.mNonSystemSettings"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v0, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v2, "AppIdSettingMap.mSystemSettings"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v0, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/AppIdSettingMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    iget-object v0, p1, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayList;

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    iget-object p1, p1, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/utils/WatchedSparseArray;

    iput-object p1, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public final acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    iget-object v1, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    add-int/lit16 p0, p0, -0x2710

    :goto_0
    if-ge p0, v1, :cond_1

    iget-object v2, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/utils/WatchedArrayList;->set(ILcom/android/server/pm/SettingBase;)V

    :goto_1
    add-int/lit16 p0, p0, 0x2710

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x270f

    if-le v1, p0, :cond_4

    const/4 p0, 0x0

    :goto_2
    if-ge p0, v1, :cond_3

    iget-object v2, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p0, p1}, Lcom/android/server/utils/WatchedArrayList;->set(ILcom/android/server/pm/SettingBase;)V

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    iget-object p0, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    add-int/lit16 v1, v1, 0x2710

    return v1
.end method

.method public final registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x2710

    const/4 v2, 0x0

    const-string v3, " name="

    const/4 v4, 0x5

    if-lt p1, v1, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    iget-object v5, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit16 v1, p1, -0x2710

    :goto_0
    if-lt v1, v5, :cond_0

    iget-object v6, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    add-int/2addr v5, v0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Adding duplicate app id: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v4, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/android/server/utils/WatchedArrayList;->set(ILcom/android/server/pm/SettingBase;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Adding duplicate shared id: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v4, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return v2

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    return v0
.end method

.method public final replaceSetting(ILcom/android/server/pm/SettingBase;)V
    .locals 2

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit16 v0, p1, -0x2710

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/utils/WatchedArrayList;->set(ILcom/android/server/pm/SettingBase;)V

    return-void

    :cond_0
    const-string p0, "Error in package manager settings: calling replaceAppIdLpw to replace SettingBase at appId="

    const-string p2, " but nothing is replaced."

    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 p1, 0x5

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
