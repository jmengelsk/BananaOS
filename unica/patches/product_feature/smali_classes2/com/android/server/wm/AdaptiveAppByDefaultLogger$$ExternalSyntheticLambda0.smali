.class public final synthetic Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/ApplicationInfo;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v3, 0x24

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService;

    sput-object v2, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    :cond_2
    sget-object v2, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAdaptiveAppByDefaultOverrides:Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;->getDevOverride(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0010"

    const-string/jumbo v1, "issue"

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sendSaBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
