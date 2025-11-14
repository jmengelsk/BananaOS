.class public final Lcom/android/server/pm/PackageManagerService$3;
.super Lcom/android/internal/pm/parsing/PackageParser2$Callback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic val$platformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/compat/PlatformCompat;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$3;->val$platformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-direct {p0}, Lcom/android/internal/pm/parsing/PackageParser2$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHiddenApiWhitelistedApps()Ljava/util/Set;
    .registers 1

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/SystemConfig;->mHiddenApiPackageWhitelist:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final getInstallConstraintsAllowlist()Ljava/util/Set;
    .registers 1

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/SystemConfig;->mInstallConstraintsAllowlist:Ljava/util/Set;

    return-object p0
.end method

.method public final hasFeature(Ljava/lang/String;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .registers 4

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$3;->val$platformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method
