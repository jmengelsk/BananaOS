.class public final synthetic Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerServiceExt;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/om/ISamsungOverlayCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerServiceExt;ILandroid/content/om/ISamsungOverlayCallback;I)V
    .registers 5

    iput p4, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    iput p2, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;->f$2:Landroid/content/om/ISamsungOverlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_138

    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    iget v2, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;->f$1:I

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;->f$2:Landroid/content/om/ISamsungOverlayCallback;

    move-object/from16 v3, p1

    check-cast v3, Landroid/content/om/OverlayInfoExt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_68

    iget-object v4, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    if-nez v4, :cond_1b

    goto :goto_68

    :cond_1b
    iget v4, v3, Landroid/content/om/OverlayInfoExt;->configFlags:I

    invoke-virtual {v1, v4, v2}, Lcom/android/server/om/OverlayManagerServiceExt;->getUserIds(II)[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_24
    if-ltz v5, :cond_54

    aget v7, v4, v5

    iget-object v8, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    invoke-virtual {v8}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v9, v8, v7}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    iget v8, v3, Landroid/content/om/OverlayInfoExt;->configFlags:I

    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_3b

    move v8, v6

    goto :goto_3c

    :cond_3b
    const/4 v8, 0x0

    :goto_3c
    invoke-static {v7}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v7

    if-eqz v7, :cond_4e

    if-eqz v8, :cond_4e

    const-string/jumbo v7, "OverlayManagerExt"

    const-string/jumbo v8, "Skip deleting idmap for dual app"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    :cond_4e
    invoke-virtual {v1, v3}, Lcom/android/server/om/OverlayManagerServiceExt;->removeIdmap(Landroid/content/om/OverlayInfoExt;)V

    :goto_51
    add-int/lit8 v5, v5, -0x1

    goto :goto_24

    :cond_54
    if-nez v0, :cond_57

    goto :goto_63

    :cond_57
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;

    invoke-direct {v5, v1, v3, v2, v0}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/om/OverlayManagerServiceExt;Landroid/content/om/OverlayInfoExt;ILandroid/content/om/ISamsungOverlayCallback;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_63
    iget-object v0, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object v0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    goto :goto_69

    :cond_68
    :goto_68
    const/4 v0, 0x0

    :goto_69
    return-object v0

    :pswitch_6a  #0x0
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/om/OverlayManagerServiceExt;

    iget v2, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;->f$1:I

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda1;->f$2:Landroid/content/om/ISamsungOverlayCallback;

    move-object/from16 v3, p1

    check-cast v3, Landroid/content/om/OverlayInfoExt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_136

    iget-object v5, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    if-nez v5, :cond_7f

    goto/16 :goto_136

    :cond_7f
    iget v5, v3, Landroid/content/om/OverlayInfoExt;->configFlags:I

    invoke-virtual {v1, v5, v2}, Lcom/android/server/om/OverlayManagerServiceExt;->getUserIds(II)[I

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_88
    if-ltz v6, :cond_122

    aget v10, v5, v6

    iget-object v8, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object v8, v8, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/om/OverlayManagerServiceExt;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;

    iget-object v9, v9, Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;->packageManagerHelper:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v9, v10, v8}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v8

    if-nez v8, :cond_9c

    const/4 v8, 0x0

    goto :goto_a0

    :cond_9c
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    :goto_a0
    if-eq v10, v2, :cond_d1

    iget-object v9, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object v9, v9, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    const-string/jumbo v11, "com.android.systemui"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "skip to update overlay : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object v9, v9, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "OverlayManagerExt"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11e

    :cond_d1
    iget-object v9, v1, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3}, Landroid/content/om/OverlayInfoExt;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v11

    iget v12, v3, Landroid/content/om/OverlayInfoExt;->configFlags:I

    and-int/lit16 v12, v12, 0x800

    const/16 v19, 0x0

    if-eqz v12, :cond_eb

    :try_start_df
    invoke-virtual {v9, v11, v10}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v12
    :try_end_e3
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_df .. :try_end_e3} :catch_e4

    goto :goto_e6

    :catch_e4
    move/from16 v12, v19

    :goto_e6
    invoke-virtual {v9, v11, v10}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    move v15, v12

    goto :goto_ec

    :cond_eb
    move v15, v7

    :goto_ec
    iget-object v9, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    move-object v12, v11

    iget-object v11, v9, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object v13, v12

    iget-object v12, v9, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    move-object v14, v13

    iget-object v13, v9, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget v4, v9, Landroid/content/om/OverlayInfo;->priority:I

    iget-object v9, v9, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    move-object/from16 v17, v9

    move-object v9, v14

    const/4 v14, 0x1

    const/16 v18, 0x0

    move-object/from16 v16, v8

    iget-object v8, v1, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v20, v16

    move/from16 v16, v4

    move-object/from16 v4, v20

    invoke-virtual/range {v8 .. v18}, Lcom/android/server/om/OverlayManagerSettings;->init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)Landroid/content/om/OverlayInfo;

    if-nez v4, :cond_113

    :goto_110
    move/from16 v8, v19

    goto :goto_11b

    :cond_113
    if-eqz v15, :cond_119

    const/4 v8, 0x3

    :goto_116
    move/from16 v19, v8

    goto :goto_110

    :cond_119
    const/4 v8, 0x2

    goto :goto_116

    :goto_11b
    invoke-virtual {v1, v4, v3, v10, v8}, Lcom/android/server/om/OverlayManagerServiceExt;->updateOverlayState(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfoExt;II)V

    :goto_11e
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_88

    :cond_122
    if-nez v0, :cond_125

    goto :goto_131

    :cond_125
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;

    invoke-direct {v5, v1, v3, v2, v0}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/om/OverlayManagerServiceExt;Landroid/content/om/OverlayInfoExt;ILandroid/content/om/ISamsungOverlayCallback;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_131
    iget-object v0, v3, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    goto :goto_137

    :cond_136
    :goto_136
    const/4 v4, 0x0

    :goto_137
    return-object v4

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_6a  #00000000
    .end packed-switch
.end method
