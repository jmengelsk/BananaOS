.class public final synthetic Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/util/ArraySet;

.field public final synthetic f$5:Landroid/util/SparseArrayMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;IZZLandroid/util/ArraySet;Landroid/util/SparseArrayMap;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    iput p2, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$3:Z

    iput-object p5, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$4:Landroid/util/ArraySet;

    iput-object p6, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$5:Landroid/util/SparseArrayMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    iget v1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$3:Z

    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$4:Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda2;->f$5:Landroid/util/SparseArrayMap;

    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-eqz v5, :cond_6e

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_6e

    :cond_1b
    const/4 v5, 0x1

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_2a
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    if-nez v0, :cond_34

    move v0, v5

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v6

    if-eq v6, v0, :cond_6e

    if-eqz v0, :cond_4c

    invoke-interface {p1, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v2

    if-ne v2, v5, :cond_6e

    goto :goto_63

    :cond_4c
    if-eqz v2, :cond_55

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    if-nez v5, :cond_55

    goto :goto_6e

    :cond_55
    if-nez v2, :cond_63

    if-eqz v3, :cond_6e

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    :cond_63
    :goto_63
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    :goto_6e
    return-void
.end method
