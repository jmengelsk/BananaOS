.class public final Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mInstalledUsers:Ljava/util/Set;

.field public mPackageState:Lcom/android/server/pm/pkg/PackageStateInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mInstalledUsers:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mPackageState:Lcom/android/server/pm/pkg/PackageStateInternal;

    return-void
.end method
