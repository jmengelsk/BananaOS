.class public final Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;
.super Landroid/content/pm/CrossProfileAppsInternal;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-direct {p0}, Landroid/content/pm/CrossProfileAppsInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTargetUserProfiles(Ljava/lang/String;I)Ljava/util/List;
    .registers 4

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    sget v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->$r8$clinit:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    sget v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->$r8$clinit:I

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpUnchecked(IILjava/lang/String;)V

    return-void
.end method

.method public final verifyPackageHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iget-object v0, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    sget v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->$r8$clinit:I

    const/4 v0, -0x1

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method
