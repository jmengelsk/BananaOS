.class public final Lcom/android/server/pm/PackageInstallerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$Lifecycle;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$Lifecycle;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method
