.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/util/ArrayMap;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(ILandroid/util/ArrayMap;Ljava/util/Set;ILandroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;->f$0:I

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;->f$1:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;->f$2:Ljava/util/Set;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;->f$4:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;->f$0:I

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;->f$1:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;->f$2:Ljava/util/Set;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;->f$3:I

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda63;->f$4:Landroid/util/ArrayMap;

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_5

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/overlay/OverlayPaths;

    move-object v8, v2

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1, v6}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)V

    invoke-virtual {p0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    move v8, v4

    :goto_1
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    move v11, v4

    :goto_2
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {p1, v12}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v12, :cond_2

    invoke-virtual {v12, v9, v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
