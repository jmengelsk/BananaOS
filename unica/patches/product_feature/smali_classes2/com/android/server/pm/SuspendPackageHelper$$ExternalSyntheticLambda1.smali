.class public final synthetic Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    iput p2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    iget p0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {p1, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    move-result-object v3

    move v5, v1

    :goto_23
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_40

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserPackage;

    iget-object v7, v3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v7, :cond_3d

    iget-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v8, :cond_3d

    invoke-virtual {v8, v6}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_43
    return-void
.end method
