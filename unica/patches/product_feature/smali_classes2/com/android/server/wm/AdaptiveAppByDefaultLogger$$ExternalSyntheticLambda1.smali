.class public final synthetic Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultLogger$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to log: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdaptiveAppByDefaultLogger"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_ADAPTIVE_APP_BY_DEFAULT:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object v0, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService;

    sput-object v0, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    :cond_1
    sget-object v0, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAdaptiveAppByDefaultPolicy:Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->isPolicyEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_5

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v2}, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->getUniversalResizeableOverride(Landroid/content/pm/ApplicationInfo;ZZ)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_5

    :cond_4
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    invoke-virtual {v4, p0, v2}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->getUserOverride(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "On"

    goto :goto_2

    :cond_6
    const-string/jumbo v4, "Off"

    goto :goto_2

    :cond_7
    const-string/jumbo v4, "Unset"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    if-eqz v4, :cond_8

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode(ILjava/lang/String;)I

    move-result p0

    goto :goto_3

    :cond_8
    const/4 p0, 0x0

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatController;->userMinAspectRatioOverrideToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "AAD_ON"

    goto :goto_4

    :cond_9
    const-string p0, "AAD_OFF"

    :goto_4
    const-string v0, "0012"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sendSaBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    :pswitch_1
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_23

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x23

    if-lt v1, v2, :cond_23

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-nez v3, :cond_b

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerService;

    sput-object v3, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    :cond_b
    sget-object v3, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v3, :cond_c

    invoke-virtual {v3, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageFeatureInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    sget-object v4, Lcom/samsung/android/server/packagefeature/PackageFeature;->FORCE_OPT_OUT_ADAPTIVE_APP_BY_DEFAULT_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    iget-object v4, v4, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to check package feature: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdaptiveAppByDefaultLogger"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move v3, v2

    :goto_7
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "android.window.PROPERTY_COMPAT_ALLOW_RESTRICTED_RESIZABILITY"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v6, v2

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    :cond_d
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    sget-object v13, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    goto :goto_8

    :cond_e
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result v13

    if-nez v6, :cond_f

    invoke-static {v13}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v6

    :cond_f
    if-nez v6, :cond_10

    if-nez v7, :cond_10

    invoke-static {v13}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v7

    :cond_10
    const/4 v14, 0x1

    if-nez v8, :cond_12

    const/16 v8, 0xe

    if-ne v13, v8, :cond_11

    move v8, v14

    goto :goto_9

    :cond_11
    move v8, v2

    :cond_12
    :goto_9
    if-nez v9, :cond_14

    const/4 v9, 0x3

    if-ne v13, v9, :cond_13

    move v9, v14

    goto :goto_a

    :cond_13
    move v9, v2

    :cond_14
    :goto_a
    if-nez v10, :cond_16

    const/4 v10, 0x5

    if-ne v13, v10, :cond_15

    move v10, v14

    goto :goto_b

    :cond_15
    move v10, v2

    :cond_16
    :goto_b
    if-nez v11, :cond_18

    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v11

    invoke-static {v11}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {v11}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v11

    if-nez v11, :cond_17

    move v11, v14

    goto :goto_c

    :cond_17
    move v11, v2

    :goto_c
    xor-int/2addr v11, v14

    :cond_18
    if-nez v4, :cond_d

    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getProperties()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    move v4, v14

    goto :goto_8

    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_1a

    const-string/jumbo v2, "Portrait"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1a
    if-eqz v7, :cond_1b

    const-string v2, "Landscape"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_d
    if-eqz v8, :cond_1c

    const-string/jumbo v2, "Locked"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    if-eqz v9, :cond_1d

    const-string v2, "Behind"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    if-eqz v10, :cond_1e

    const-string/jumbo v2, "Nosensor"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string/jumbo v2, "Unspecified"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "True"

    const-string v5, "False"

    if-eqz v11, :cond_20

    move-object v6, v5

    goto :goto_e

    :cond_20
    move-object v6, v2

    :goto_e
    if-eqz v4, :cond_21

    move-object v4, v2

    goto :goto_f

    :cond_21
    move-object v4, v5

    :goto_f
    if-eqz v3, :cond_22

    goto :goto_10

    :cond_22
    move-object v2, v5

    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, p0, v6, p0, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0011"

    const-string/jumbo v1, "update"

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sendSaBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
