.class public final Lcom/android/server/pm/DistractingPackageHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/SuspendPackageHelper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/DistractingPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iput-object p3, p0, Lcom/android/server/pm/DistractingPackageHelper;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    return-void
.end method


# virtual methods
.method public final removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V
    .registers 12

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6e

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/util/IntArray;

    array-length v2, p2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_14
    array-length v3, p2

    if-ge v2, v3, :cond_3e

    aget-object v3, p2, v2

    invoke-interface {p1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_3b

    invoke-interface {v3, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-static {p3, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_3e
    new-instance p1, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3, v0}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;)V

    iget-object p2, p0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Ljava/lang/String;

    new-instance v3, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/pm/DistractingPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v7, 0x0

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/BroadcastHelper;->sendDistractingPackagesChanged(Ljava/util/function/Supplier;[Ljava/lang/String;[III)V

    invoke-virtual {p2, v6}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    :cond_6e
    :goto_6e
    return-void
.end method
