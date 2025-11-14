.class public final Lcom/android/server/policy/PhoneWindowManagerExt$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v7, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->$r8$classId:I

    packed-switch v7, :pswitch_data_33e

    const-string/jumbo v0, "com.sec.android.app.secsetupwizard.GLOBAL_ACTION"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string/jumbo v2, "secSetupwizard POWER_OFF_GLOBAL_ACTION received."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    :cond_35
    return-void

    :pswitch_36  #0x5
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "PhoneWindowManagerExt"

    if-eqz v2, :cond_57

    const-string v0, "Enabling listeners by proximity"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener;->enable$1()V

    goto :goto_84

    :cond_57
    const-string/jumbo v2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string v0, "Disabling listeners by proximity"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iput-boolean v5, v0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_84

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x406b09bf53253cd8L  # 216.3046050765322

    invoke-static {v0, v1, v2, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_84
    :goto_84
    return-void

    :pswitch_85  #0x4
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.motion.PALM_SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_99
    return-void

    :pswitch_9a  #0x3
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_235

    if-nez v4, :cond_235

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c6

    goto :goto_105

    :cond_c6
    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_d1

    goto :goto_105

    :cond_d1
    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v7, v5

    :cond_d8
    if-ge v7, v4, :cond_105

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/2addr v7, v6

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d8

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-static {v0, v2}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_f9

    goto :goto_11f

    :cond_f9
    const/high16 v7, 0x50000

    :try_start_fb
    invoke-virtual {v4, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_103
    .catch Ljava/lang/NullPointerException; {:try_start_fb .. :try_end_103} :catch_109

    if-lez v0, :cond_11f

    :cond_105
    :goto_105
    move/from16 v16, v6

    goto/16 :goto_1ce

    :catch_109
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isActivitiesAvailable : "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "PhoneWindowManagerExt"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11f
    :goto_11f
    const-string/jumbo v0, "PhoneWindowManagerExt"

    const-string/jumbo v4, "The package("

    const-string v7, ") has been removed. clearKeyCustomizationInfo."

    invoke-static {v4, v2, v7, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13a

    goto :goto_105

    :cond_13a
    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    iget-object v8, v4, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_13f
    sget-object v7, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_BASIC:[I

    array-length v9, v7

    move v10, v5

    move v11, v10

    :goto_144
    if-ge v10, v9, :cond_192

    aget v12, v7, v10

    sget-object v13, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    array-length v14, v13

    move v15, v5

    :goto_14c
    if-ge v15, v14, :cond_18c

    move/from16 v16, v6

    aget v6, v13, v15

    invoke-virtual {v4, v12}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_15f

    goto :goto_186

    :cond_15f
    const/16 v5, 0x7d3

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v5, :cond_16c

    goto :goto_186

    :cond_16c
    iget-object v5, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_186

    const/16 v5, 0x7d3

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    const/4 v3, 0x0

    invoke-virtual {v4, v12, v6, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    const/4 v3, -0x1

    invoke-virtual {v4, v12, v6, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    move/from16 v11, v16

    goto :goto_186

    :catchall_184
    move-exception v0

    goto :goto_1cc

    :cond_186
    :goto_186
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v16

    const/4 v5, 0x0

    goto :goto_14c

    :cond_18c
    move/from16 v16, v6

    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto :goto_144

    :cond_192
    move/from16 v16, v6

    if-eqz v11, :cond_19e

    invoke-virtual {v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    iget-object v3, v4, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_19e
    monitor-exit v8
    :try_end_19f
    .catchall {:try_start_13f .. :try_end_19f} :catchall_184

    if-nez v11, :cond_1aa

    const-string v0, "KeyCustomizationManager"

    const-string/jumbo v3, "clearKeyCustomizationInfoByPackage, Requested info is empty. packageName="

    invoke-static {v3, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ce

    :cond_1aa
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1ae
    if-ge v5, v4, :cond_1ce

    aget v6, v3, v5

    const/16 v7, 0x1a

    if-ne v6, v7, :cond_1c4

    sget-object v6, Lcom/android/server/policy/KeyCustomizationConstants;->EXTERNAL_SUPPORTED_BEHAVIOR_PRESS_TYPE:[I

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1ba
    if-ge v8, v7, :cond_1c9

    aget v9, v6, v8

    invoke-virtual {v0, v9}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1ba

    :cond_1c4
    iget-object v7, v0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v7, v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    :cond_1c9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1ae

    :goto_1cc
    :try_start_1cc
    monitor-exit v8
    :try_end_1cd
    .catchall {:try_start_1cc .. :try_end_1cd} :catchall_184

    throw v0

    :cond_1ce
    :goto_1ce
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1dc

    goto :goto_235

    :cond_1dc
    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    iget-object v1, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1e1
    sget-object v3, Lcom/android/server/policy/KeyCustomizationInfoManager;->ALL_HOT_KEYCODE:[I

    const/4 v5, 0x0

    const/16 v17, 0x0

    :goto_1e6
    const/4 v4, 0x3

    if-ge v5, v4, :cond_22c

    aget v4, v3, v5

    iget-object v6, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    if-eqz v6, :cond_229

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_200

    goto :goto_229

    :cond_200
    const-string v6, "KeyCustomizationInfoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeHotKey keyCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    move/from16 v17, v16

    goto :goto_229

    :catchall_227
    move-exception v0

    goto :goto_233

    :cond_229
    :goto_229
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e6

    :cond_22c
    if-eqz v17, :cond_231

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    :cond_231
    monitor-exit v1

    goto :goto_235

    :goto_233
    monitor-exit v1
    :try_end_234
    .catchall {:try_start_1e1 .. :try_end_234} :catchall_227

    throw v0

    :cond_235
    :goto_235
    return-void

    :pswitch_236  #0x2
    if-eqz v2, :cond_275

    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_275

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v2, :cond_25b

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    :cond_25b
    if-eqz v0, :cond_275

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_275

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;

    invoke-direct {v4, v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$3;Landroid/content/Context;Landroid/content/ComponentName;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_275
    return-void

    :pswitch_276  #0x1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b3

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const-string/jumbo v1, "android.intent.extra.user_handle"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/File;

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "key_customize_info.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2b3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2b3

    const-string v0, "Can not delete xml file when userRemove. userId="

    const-string v2, "KeyCustomizationInfoManager"

    invoke-static {v1, v0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2b3
    return-void

    :pswitch_2b4  #0x0
    move v3, v5

    move/from16 v16, v6

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c6

    goto/16 :goto_33d

    :cond_2c6
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    move/from16 v2, v16

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    if-eqz v2, :cond_322

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x2

    :try_start_2d5
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, v4, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;
    :try_end_2d9
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2d9} :catch_2fa

    const/16 v5, 0x13

    const/16 v6, -0x100

    const/4 v7, -0x1

    :try_start_2de
    invoke-interface {v4, v7, v6, v5}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result v4

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v5, 0x14

    invoke-interface {v0, v7, v6, v5}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result v0
    :try_end_2ec
    .catch Ljava/lang/Exception; {:try_start_2de .. :try_end_2ec} :catch_2fb

    if-nez v4, :cond_2f6

    if-nez v0, :cond_2f3

    move v7, v2

    :cond_2f1
    :goto_2f1
    const/4 v4, 0x1

    goto :goto_305

    :cond_2f3
    const/4 v4, 0x1

    const/4 v7, 0x1

    goto :goto_305

    :cond_2f6
    if-lez v4, :cond_2f1

    move v7, v3

    goto :goto_2f1

    :catch_2fa
    const/4 v7, -0x1

    :catch_2fb
    const-string/jumbo v0, "WindowManagerServiceExt"

    const-string/jumbo v4, "getPenState failed"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f1

    :goto_305
    if-eq v7, v4, :cond_30c

    if-ne v7, v2, :cond_30a

    goto :goto_30c

    :cond_30a
    move v0, v3

    goto :goto_30d

    :cond_30c
    :goto_30c
    const/4 v0, 0x1

    :goto_30d
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v5, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    if-eq v7, v5, :cond_322

    const/4 v5, 0x5

    iget v6, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    if-eq v6, v5, :cond_322

    if-ne v7, v2, :cond_31c

    const/4 v5, 0x1

    goto :goto_31d

    :cond_31c
    move v5, v3

    :goto_31d
    const-wide/16 v2, 0x0

    invoke-virtual {v4, v2, v3, v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->notifyPenSwitchChanged(JZZ)V

    :cond_322
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/OneHandOpPolicy;->mBootCompleted:Z

    iget-boolean v1, v0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    if-eqz v1, :cond_33d

    iget-object v1, v0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v2}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/OneHandOpPolicy;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_33d
    :goto_33d
    return-void

    :pswitch_data_33e
    .packed-switch 0x0
        :pswitch_2b4  #00000000
        :pswitch_276  #00000001
        :pswitch_236  #00000002
        :pswitch_9a  #00000003
        :pswitch_85  #00000004
        :pswitch_36  #00000005
    .end packed-switch
.end method
