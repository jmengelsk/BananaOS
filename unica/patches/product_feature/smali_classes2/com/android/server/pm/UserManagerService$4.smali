.class public final Lcom/android/server/pm/UserManagerService$4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic val$newRestrictionsFinal:Landroid/os/Bundle;

.field public final synthetic val$prevRestrictionsFinal:Landroid/os/Bundle;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$4;->val$userId:I

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService$4;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/pm/UserManagerService$4;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/android/server/pm/UserManagerService$4;->val$userId:I

    iget-object v4, v0, Lcom/android/server/pm/UserManagerService$4;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService$4;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    sget-object v6, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_14
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_224

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eq v10, v11, :cond_14

    const-string/jumbo v11, "airplane_mode_on"

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_36
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v15
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_51

    const-string/jumbo v9, "no_install_unknown_sources_globally"

    const-string/jumbo v1, "no_install_unknown_sources"

    sparse-switch v15, :sswitch_data_278

    goto/16 :goto_cc

    :sswitch_45
    :try_start_45
    const-string/jumbo v15, "no_debugging_features"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    const/4 v7, 0x2

    goto/16 :goto_cd

    :catchall_51
    move-exception v0

    goto/16 :goto_220

    :sswitch_54
    const-string/jumbo v15, "no_safe_boot"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    const/4 v7, 0x7

    goto/16 :goto_cd

    :sswitch_60
    const-string/jumbo v15, "no_share_location"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    const/4 v7, 0x1

    goto :goto_cd

    :sswitch_6b
    const-string/jumbo v15, "no_data_roaming"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    move v7, v8

    goto :goto_cd

    :sswitch_76
    const-string/jumbo v15, "no_run_in_background"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    const/4 v7, 0x6

    goto :goto_cd

    :sswitch_81
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    const/4 v7, 0x5

    goto :goto_cd

    :sswitch_89
    const-string/jumbo v15, "no_uninstall_apps"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    const/16 v7, 0xb

    goto :goto_cd

    :sswitch_95
    const-string/jumbo v15, "no_airplane_mode"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    const/16 v7, 0x8

    goto :goto_cd

    :sswitch_a1
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    const/4 v7, 0x4

    goto :goto_cd

    :sswitch_a9
    const-string/jumbo v15, "ensure_verify_apps"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    const/4 v7, 0x3

    goto :goto_cd

    :sswitch_b4
    const-string/jumbo v15, "no_control_apps"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    const/16 v7, 0xa

    goto :goto_cd

    :sswitch_c0
    const-string/jumbo v15, "no_ambient_display"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_c7
    .catchall {:try_start_45 .. :try_end_c7} :catchall_51

    if-eqz v7, :cond_cc

    const/16 v7, 0x9

    goto :goto_cd

    :cond_cc
    :goto_cc
    const/4 v7, -0x1

    :goto_cd
    const-string v15, "0"

    packed-switch v7, :pswitch_data_2aa

    goto/16 :goto_21b

    :pswitch_d4  #0xa, 0xb
    :try_start_d4
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    move-object v7, v1

    check-cast v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    move-result-object v9

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    new-instance v10, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7, v8, v9, v10, v3}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    move-object v7, v1

    check-cast v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    move-result-object v9

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    invoke-virtual {v7, v8, v9, v3}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v7
    :try_end_10e
    .catchall {:try_start_d4 .. :try_end_10e} :catchall_51

    :try_start_10e
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    monitor-exit v7

    goto/16 :goto_21b

    :catchall_116
    move-exception v0

    monitor-exit v7
    :try_end_118
    .catchall {:try_start_10e .. :try_end_118} :catchall_116

    :try_start_118
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :pswitch_11b  #0x9
    if-eqz v10, :cond_21b

    new-instance v1, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v1, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/hardware/display/AmbientDisplayConfiguration;->disableDozeSettings(I)V

    goto/16 :goto_21b

    :pswitch_127  #0x8
    if-eqz v10, :cond_21b

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v11, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_21b

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v11, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "state"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_21b

    :pswitch_150  #0x7
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v7, "safe_boot_disallowed"

    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_21b

    :pswitch_15c  #0x6
    if-eqz v10, :cond_21b

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->isProfileForeground(Landroid/os/UserHandle;)Z

    move-result v1
    :try_end_16e
    .catchall {:try_start_118 .. :try_end_16e} :catchall_51

    if-nez v1, :cond_21b

    if-eqz v3, :cond_21b

    :try_start_172
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v7, 0x0

    invoke-interface {v1, v3, v8, v7}, Landroid/app/IActivityManager;->stopUserExceptCertainProfiles(IZLandroid/app/IStopUserCallback;)I
    :try_end_17a
    .catch Landroid/os/RemoteException; {:try_start_172 .. :try_end_17a} :catch_17c
    .catchall {:try_start_172 .. :try_end_17a} :catchall_51

    goto/16 :goto_21b

    :catch_17c
    move-exception v0

    :try_start_17d
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_182  #0x5
    if-nez v10, :cond_194

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v1, v9, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_193

    goto :goto_194

    :cond_193
    const/4 v8, 0x1

    :cond_194
    :goto_194
    const-string/jumbo v1, "install_non_market_apps"

    invoke-static {v12, v1, v8, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_21b

    :pswitch_19c  #0x4
    if-nez v10, :cond_1ae

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v7, v1, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    goto :goto_1ae

    :cond_1ad
    const/4 v8, 0x1

    :cond_1ae
    :goto_1ae
    const-string/jumbo v1, "install_non_market_apps"

    invoke-static {v12, v1, v8, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_21b

    :pswitch_1b5  #0x3
    if-eqz v10, :cond_21b

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v7, "verifier_verify_adb_installs"

    const-string v8, "1"

    invoke-static {v1, v7, v8, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_21b

    :pswitch_1c4  #0x2
    if-eqz v10, :cond_21b

    if-nez v3, :cond_21b

    const-string/jumbo v1, "adb_enabled"

    invoke-static {v12, v1, v15, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string/jumbo v1, "adb_wifi_enabled"

    invoke-static {v12, v1, v15, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_21b

    :pswitch_1d5  #0x1
    if-eqz v10, :cond_21b

    const-string/jumbo v1, "location_mode"

    invoke-static {v12, v1, v8, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_21b

    :pswitch_1de  #0x0
    if-eqz v10, :cond_21b

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1
    :try_end_1ec
    .catchall {:try_start_17d .. :try_end_1ec} :catchall_51

    const-string/jumbo v7, "data_roaming"

    if-eqz v1, :cond_218

    :try_start_1f1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_218

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8, v15, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1f5

    :cond_218
    invoke-static {v12, v7, v15, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_21b
    .catchall {:try_start_1f1 .. :try_end_21b} :catchall_51

    :cond_21b
    :goto_21b
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_14

    :goto_220
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_224
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_229
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;

    iget-object v4, v0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v1
    :try_end_23b
    .catchall {:try_start_229 .. :try_end_23b} :catchall_275

    :goto_23b
    if-ge v8, v2, :cond_24b

    aget-object v1, v3, v8

    iget v4, v0, Lcom/android/server/pm/UserManagerService$4;->val$userId:I

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService$4;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iget-object v6, v0, Lcom/android/server/pm/UserManagerService$4;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    invoke-interface {v1, v4, v5, v6}, Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    const/4 v7, 0x1

    add-int/2addr v8, v7

    goto :goto_23b

    :cond_24b
    const/4 v7, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/android/server/pm/UserManagerService$4;->val$userId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v0, v7, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :catchall_275
    move-exception v0

    :try_start_276
    monitor-exit v1
    :try_end_277
    .catchall {:try_start_276 .. :try_end_277} :catchall_275

    throw v0

    :sswitch_data_278
    .sparse-switch
        -0x57f0a463 -> :sswitch_c0
        -0x52b3922e -> :sswitch_b4
        -0x4e6d1409 -> :sswitch_a9
        -0x444ddeb2 -> :sswitch_a1
        -0x4080af8e -> :sswitch_95
        -0x646213 -> :sswitch_89
        0x171409a1 -> :sswitch_81
        0x2afb8ad6 -> :sswitch_76
        0x375d2642 -> :sswitch_6b
        0x3b5af253 -> :sswitch_60
        0x414d6f66 -> :sswitch_54
        0x68f319ac -> :sswitch_45
    .end sparse-switch

    :pswitch_data_2aa
    .packed-switch 0x0
        :pswitch_1de  #00000000
        :pswitch_1d5  #00000001
        :pswitch_1c4  #00000002
        :pswitch_1b5  #00000003
        :pswitch_19c  #00000004
        :pswitch_182  #00000005
        :pswitch_15c  #00000006
        :pswitch_150  #00000007
        :pswitch_127  #00000008
        :pswitch_11b  #00000009
        :pswitch_d4  #0000000a
        :pswitch_d4  #0000000b
    .end packed-switch
.end method
