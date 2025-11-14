.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;II)V
    .registers 4

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->$r8$classId:I

    packed-switch v1, :pswitch_data_21e

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->f$1:I

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootMsgDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_af

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v4, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_21
    if-ge v5, v4, :cond_af

    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    if-eqz v7, :cond_32

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v6

    goto :goto_34

    :cond_32
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    :goto_34
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootMsgDialogs:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/policy/PhoneWindowManagerExt$16;

    invoke-direct {v8, v6}, Landroid/app/BootProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/app/BootProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v8, v3}, Landroid/app/BootProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v8}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7e5

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v8}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x4102

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v8}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-virtual {v9, v10}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v8}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "BootProgressDialog_d"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/view/DisplayInfo;

    invoke-direct {v10}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v6

    if-eqz v6, :cond_90

    iget v6, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v6, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v6, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_90
    const/4 v6, 0x5

    iput v6, v9, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v6, 0x1

    iput v6, v9, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v8}, Landroid/app/BootProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v6, 0x64

    invoke-virtual {v8, v6}, Landroid/app/BootProgressDialog;->setMax(I)V

    invoke-virtual {v8, v3}, Landroid/app/BootProgressDialog;->setCancelable(Z)V

    invoke-virtual {v8}, Landroid/app/BootProgressDialog;->show()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_21

    :cond_af
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootMsgDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_b5
    if-ge v3, v2, :cond_d7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/app/ProgressDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_b5

    :cond_d7
    return-void

    :pswitch_d8  #0x0
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda12;->f$1:I

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget-object v2, v1, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    iget v3, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    if-ne v0, v3, :cond_e6

    goto/16 :goto_217

    :cond_e6
    const-string v3, "KeyCustomizationInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onUserSwitch oldId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " newId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    const/16 v3, 0x450

    const/4 v8, 0x0

    const/4 v4, 0x4

    const/16 v5, 0x1a

    invoke-virtual {v2, v3, v4, v5, v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v6

    if-eqz v6, :cond_124

    new-instance v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget v10, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    iget v11, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    iget v12, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    iget v13, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    iget-object v14, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    iput-object v9, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    goto :goto_126

    :cond_124
    iput-object v8, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    :goto_126
    const/16 v6, 0x8

    invoke-virtual {v2, v3, v6, v5, v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v7

    if-eqz v7, :cond_140

    new-instance v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget v10, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    iget v11, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    iget v12, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    iget v13, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    iget-object v14, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    iput-object v9, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    goto :goto_142

    :cond_140
    iput-object v8, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    :goto_142
    iget-object v7, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_145
    sget-object v9, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v10, v9

    const/4 v11, 0x0

    move v12, v11

    :goto_14a
    if-ge v12, v10, :cond_162

    aget v13, v9, v12

    invoke-virtual {v2, v13}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v2, v13}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_14a

    :catchall_15f
    move-exception v0

    goto/16 :goto_21b

    :cond_162
    iget-object v9, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    monitor-exit v7
    :try_end_16d
    .catchall {:try_start_145 .. :try_end_16d} :catchall_15f

    const/4 v7, 0x1

    invoke-virtual {v2, v0, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->init(IZ)V

    invoke-virtual {v2, v3, v4, v5, v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v9

    invoke-virtual {v2, v4, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    iget-object v10, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-eqz v10, :cond_1a0

    if-nez v9, :cond_181

    if-eqz v4, :cond_187

    :cond_181
    if-eqz v9, :cond_1b1

    iget v4, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-ne v4, v3, :cond_1b1

    :cond_187
    new-instance v12, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget-object v4, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget v13, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    iget v14, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    iget v15, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    iget v9, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    iget-object v4, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v4

    move/from16 v16, v9

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    invoke-virtual {v2, v12, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    goto :goto_1b1

    :cond_1a0
    if-nez v9, :cond_1a4

    if-eqz v4, :cond_1aa

    :cond_1a4
    if-eqz v9, :cond_1b1

    iget v4, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-ne v4, v3, :cond_1b1

    :cond_1aa
    invoke-virtual {v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyLongInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v2, v4, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    :cond_1b1
    :goto_1b1
    iput-object v8, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    invoke-virtual {v2, v3, v6, v5, v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v2, v6, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-eqz v6, :cond_1e2

    if-nez v4, :cond_1c3

    if-eqz v5, :cond_1c9

    :cond_1c3
    if-eqz v4, :cond_201

    iget v4, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-ne v4, v3, :cond_201

    :cond_1c9
    new-instance v12, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget-object v3, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget v13, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    iget v14, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    iget v15, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    iget v4, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    iget-object v3, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v3

    move/from16 v16, v4

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    invoke-virtual {v2, v12, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    goto :goto_201

    :cond_1e2
    if-nez v4, :cond_1e6

    if-eqz v5, :cond_1ec

    :cond_1e6
    if-eqz v4, :cond_201

    iget v4, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-ne v4, v3, :cond_201

    :cond_1ec
    invoke-virtual {v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyDoubleInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v3

    if-nez v3, :cond_1fe

    const/16 v6, 0x1a

    const/4 v7, 0x1

    const/16 v3, 0x450

    const/4 v5, 0x0

    const/16 v4, 0x8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(IILjava/lang/String;IZ)Z

    goto :goto_201

    :cond_1fe
    invoke-virtual {v2, v3, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    :cond_201
    :goto_201
    iput-object v8, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget-object v3, v2, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_206
    invoke-virtual {v2, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked(I)V

    monitor-exit v3
    :try_end_20a
    .catchall {:try_start_206 .. :try_end_20a} :catchall_218

    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    array-length v2, v0

    :goto_20d
    if-ge v11, v2, :cond_217

    aget v3, v0, v11

    invoke-virtual {v1, v3}, Lcom/android/server/policy/KeyCustomizationManager;->initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_20d

    :cond_217
    :goto_217
    return-void

    :catchall_218
    move-exception v0

    :try_start_219
    monitor-exit v3
    :try_end_21a
    .catchall {:try_start_219 .. :try_end_21a} :catchall_218

    throw v0

    :goto_21b
    :try_start_21b
    monitor-exit v7
    :try_end_21c
    .catchall {:try_start_21b .. :try_end_21c} :catchall_15f

    throw v0

    nop

    :pswitch_data_21e
    .packed-switch 0x0
        :pswitch_d8  #00000000
    .end packed-switch
.end method
