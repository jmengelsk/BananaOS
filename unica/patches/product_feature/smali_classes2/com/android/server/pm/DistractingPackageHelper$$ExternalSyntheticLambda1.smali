.class public final synthetic Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iput p1, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iget p0, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    if-eqz v3, :cond_0

    iput v1, v3, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
