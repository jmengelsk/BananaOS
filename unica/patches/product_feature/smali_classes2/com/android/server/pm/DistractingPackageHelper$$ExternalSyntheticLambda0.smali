.class public final synthetic Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    iput p2, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    iget v1, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_29

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v4, :cond_26

    iput p0, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_29
    return-void
.end method
