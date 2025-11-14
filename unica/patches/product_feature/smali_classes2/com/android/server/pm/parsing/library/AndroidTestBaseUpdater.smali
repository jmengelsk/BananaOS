.class public Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public final updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .registers 6

    if-nez p2, :cond_24

    const-string/jumbo p0, "platform_compat"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p0

    :try_start_d
    move-object p2, p1

    check-cast p2, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    const-wide/32 v0, 0x7f379d2

    invoke-interface {p0, v0, v1, p2}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1b} :catch_1c

    goto :goto_2f

    :catch_1c
    move-exception p0

    const-string p2, "AndroidTestBaseUpdater"

    const-string p3, "Failed to get a response from PLATFORM_COMPAT_SERVICE"

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    const/16 p2, 0x1d

    if-le p0, p2, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    const-string/jumbo p2, "android.test.base"

    if-nez p0, :cond_38

    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixRequiredLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    goto :goto_3b

    :cond_38
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixImplicitDependency(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    :goto_3b
    return-void
.end method
