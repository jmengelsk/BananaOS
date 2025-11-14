.class public final synthetic Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/content/pm/UserPackage;

.field public final synthetic f$4:Lcom/android/server/pm/pkg/SuspendParams;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;IZLandroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    iput p2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$3:Landroid/content/pm/UserPackage;

    iput-object p5, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/pm/pkg/SuspendParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    iget v1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v3, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$3:Landroid/content/pm/UserPackage;

    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/pm/pkg/SuspendParams;

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    move-result-object v7

    if-eqz v2, :cond_2

    iget-object v7, v7, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v7, :cond_3

    iget-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez v8, :cond_0

    new-instance v8, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v8, v5}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    iput-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v9, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v8, v9}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    iget-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v8, v8, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v8, v8, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_1
    iget-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v8, v3, p0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    goto :goto_1

    :cond_2
    iget-object v7, v7, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v7, :cond_3

    iget-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v3}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
