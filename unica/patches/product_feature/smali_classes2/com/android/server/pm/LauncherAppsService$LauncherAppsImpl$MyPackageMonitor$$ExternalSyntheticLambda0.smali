.class public final synthetic Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    iput-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v12, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;->f$2:I

    const-string v15, "LauncherAppsService"

    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    :try_start_12
    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_16} :catch_c2
    .catchall {:try_start_12 .. :try_end_16} :catchall_c0

    const/4 v0, 0x0

    move v4, v0

    :goto_18
    if-ge v4, v2, :cond_b8

    :try_start_1a
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1c} :catch_ac
    .catchall {:try_start_1a .. :try_end_1c} :catchall_a8

    :try_start_1c
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1e} :catch_b4
    .catchall {:try_start_1c .. :try_end_1e} :catchall_b0

    :try_start_1e
    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IOnAppsChangedListener;

    iget-object v5, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_26} :catch_ac
    .catchall {:try_start_1e .. :try_end_26} :catchall_a8

    :try_start_26
    iget-object v5, v5, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_28} :catch_b4
    .catchall {:try_start_26 .. :try_end_28} :catchall_b0

    :try_start_28
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    iget-object v6, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    const-string/jumbo v8, "onShortcutChanged"
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_33} :catch_ac
    .catchall {:try_start_28 .. :try_end_33} :catchall_a8

    :try_start_33
    invoke-virtual {v6, v3, v5, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    move-result v6
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_37} :catch_b4
    .catchall {:try_start_33 .. :try_end_37} :catchall_b0

    if-nez v6, :cond_41

    :goto_39
    move-object/from16 v17, v1

    move/from16 v16, v2

    move-object v1, v3

    move/from16 v18, v4

    goto :goto_9f

    :cond_41
    :try_start_41
    iget-object v6, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_43} :catch_ac
    .catchall {:try_start_41 .. :try_end_43} :catchall_a8

    :try_start_43
    invoke-virtual {v6, v3, v5, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isPackageVisibleToListener(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    move-result v6
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_47} :catch_b4
    .catchall {:try_start_43 .. :try_end_47} :catchall_b0

    if-nez v6, :cond_4a

    goto :goto_39

    :cond_4a
    :try_start_4a
    iget-object v6, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    iget-object v8, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_52} :catch_ac
    .catchall {:try_start_4a .. :try_end_52} :catchall_a8

    :try_start_52
    iget-object v8, v8, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_54} :catch_b4
    .catchall {:try_start_52 .. :try_end_54} :catchall_b0

    :try_start_54
    iget-object v9, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    iget v10, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    iget v11, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    invoke-virtual {v8, v6, v9, v10, v11}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_61

    goto :goto_39

    :cond_61
    iget-object v8, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_63} :catch_ac
    .catchall {:try_start_54 .. :try_end_63} :catchall_a8

    :try_start_63
    iget-object v8, v8, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_65} :catch_b4
    .catchall {:try_start_63 .. :try_end_65} :catchall_b0

    move v9, v4

    :try_start_66
    iget-object v4, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    iget v13, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    iget v14, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_6c} :catch_ac
    .catchall {:try_start_66 .. :try_end_6c} :catchall_a8

    const/16 v11, 0x41f

    move-object v10, v3

    move v3, v6

    const-wide/16 v5, 0x0

    move/from16 v16, v2

    move-object v2, v8

    const/4 v8, 0x0

    move/from16 v17, v9

    const/4 v9, 0x0

    move-object/from16 v18, v10

    const/4 v10, 0x0

    move/from16 v19, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v18

    move/from16 v18, v19

    :try_start_84
    invoke-virtual/range {v2 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v2
    :try_end_88
    .catch Ljava/lang/RuntimeException; {:try_start_84 .. :try_end_88} :catch_95
    .catchall {:try_start_84 .. :try_end_88} :catchall_91

    :try_start_88
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v7, v3}, Landroid/content/pm/IOnAppsChangedListener;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_90} :catch_99
    .catch Ljava/lang/RuntimeException; {:try_start_88 .. :try_end_90} :catch_95
    .catchall {:try_start_88 .. :try_end_90} :catchall_91

    goto :goto_9f

    :catchall_91
    move-exception v0

    :goto_92
    move-object/from16 v1, v17

    goto :goto_ce

    :catch_95
    move-exception v0

    :goto_96
    move-object/from16 v1, v17

    goto :goto_c3

    :catch_99
    move-exception v0

    :try_start_9a
    const-string v2, "Callback failed "

    invoke-static {v15, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9f
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_9f} :catch_95
    .catchall {:try_start_9a .. :try_end_9f} :catchall_91

    :goto_9f
    add-int/lit8 v4, v18, 0x1

    move-object v3, v1

    move/from16 v2, v16

    move-object/from16 v1, v17

    goto/16 :goto_18

    :catchall_a8
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_ce

    :catch_ac
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_c3

    :catchall_b0
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_92

    :catch_b4
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_96

    :cond_b8
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    :goto_ba
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_cd

    :catchall_c0
    move-exception v0

    goto :goto_ce

    :catch_c2
    move-exception v0

    :goto_c3
    :try_start_c3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ca
    .catchall {:try_start_c3 .. :try_end_ca} :catchall_c0

    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    goto :goto_ba

    :goto_cd
    return-void

    :goto_ce
    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method
