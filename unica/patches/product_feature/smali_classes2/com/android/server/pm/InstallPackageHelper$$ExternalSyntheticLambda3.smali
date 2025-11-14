.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:Lcom/android/server/pm/PackageSetting;

.field public final synthetic f$2:Lcom/android/server/pm/PackageSetting;


# direct methods
.method public synthetic constructor <init>([ILcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$0:[I

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/pm/PackageSetting;

    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/pm/PackageSetting;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$0:[I

    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/pm/PackageSetting;

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/pm/PackageSetting;

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
