.class public final synthetic Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserSystemPackageInstaller;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserSystemPackageInstaller;Ljava/util/Set;ZLjava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/UserSystemPackageInstaller;

    iput-object p2, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$3:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/UserSystemPackageInstaller;

    iget-object v1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    iget-boolean v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$2:Z

    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$3:Ljava/util/Set;

    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    invoke-static {v3, p1, v1, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldInstallPackage(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArrayMap;Ljava/util/Set;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
