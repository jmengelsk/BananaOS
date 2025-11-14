.class public final Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static disablePackageCaches()V
    .locals 0

    invoke-static {}, Landroid/content/pm/PackageManager;->disableApplicationInfoCache()V

    invoke-static {}, Landroid/content/pm/PackageManager;->disablePackageInfoCache()V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->disableGetPackagesForUidCache()V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateHasSystemFeatureCache()V

    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    return-void
.end method

.method public static enablePackageCaches()V
    .locals 0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    return-void
.end method
