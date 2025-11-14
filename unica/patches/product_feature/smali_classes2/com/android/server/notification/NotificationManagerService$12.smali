.class public final Lcom/android/server/notification/NotificationManagerService$12;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->$r8$classId:I

    packed-switch v0, :pswitch_data_21e

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$17;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$17;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_20
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$17;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_40

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string/jumbo v3, "Prevent Sleep by AssistantDelay"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    :cond_40
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService$17;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void

    :pswitch_4e  #0x5
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_5b

    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "handleSaveScpmNotificationPoliciesFile runnable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_62
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6c} :catch_93
    .catchall {:try_start_62 .. :try_end_6c} :catchall_7d

    :try_start_6c
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mwriteScpmNotificationPoliciesJson(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileOutputStream;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7c} :catch_7f
    .catchall {:try_start_6c .. :try_end_7c} :catchall_7d

    goto :goto_91

    :catchall_7d
    move-exception p0

    goto :goto_9e

    :catch_7f
    move-exception v2

    :try_start_80
    const-string/jumbo v3, "NotificationService"

    const-string v4, "Failed to save SCPM notification policies file, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mScpmNotificationPoliciesFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_91
    monitor-exit v0

    goto :goto_9d

    :catch_93
    move-exception p0

    const-string/jumbo v1, "NotificationService"

    const-string v2, "Failed to save SCPM notification policies file"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    :goto_9d
    return-void

    :goto_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_80 .. :try_end_9f} :catchall_7d

    throw p0

    :pswitch_a0  #0x4
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_ad

    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "handleSavePolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_b4
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_be} :catch_f7
    .catchall {:try_start_b4 .. :try_end_be} :catchall_d2

    :try_start_be
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;ZILandroid/app/backup/BackupRestoreEventLogger;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_d1} :catch_d4
    .catchall {:try_start_be .. :try_end_d1} :catchall_d2

    goto :goto_e6

    :catchall_d2
    move-exception p0

    goto :goto_102

    :catch_d4
    move-exception v2

    :try_start_d5
    const-string/jumbo v3, "NotificationService"

    const-string v4, "Failed to save policy file, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_e6
    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_d5 .. :try_end_e7} :catchall_d2

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    goto :goto_101

    :catch_f7
    move-exception p0

    :try_start_f8
    const-string/jumbo v1, "NotificationService"

    const-string v2, "Failed to save policy file"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    :goto_101
    return-void

    :goto_102
    monitor-exit v0
    :try_end_103
    .catchall {:try_start_f8 .. :try_end_103} :catchall_d2

    throw p0

    :pswitch_104  #0x3
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_111

    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "handleSaveOngoingDismissExceptionPolicyFile runnable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_111
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOngoingDismissExceptionPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_118
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mOngoingDismissExceptionPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_122} :catch_149
    .catchall {:try_start_118 .. :try_end_122} :catchall_133

    :try_start_122
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mwriteOngoingDismissExceptionPolicyJson(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileOutputStream;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mOngoingDismissExceptionPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_132} :catch_135
    .catchall {:try_start_122 .. :try_end_132} :catchall_133

    goto :goto_147

    :catchall_133
    move-exception p0

    goto :goto_154

    :catch_135
    move-exception v2

    :try_start_136
    const-string/jumbo v3, "NotificationService"

    const-string v4, "Failed to save ongoing dismiss exception policy file, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mOngoingDismissExceptionPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_147
    monitor-exit v0

    goto :goto_153

    :catch_149
    move-exception p0

    const-string/jumbo v1, "NotificationService"

    const-string v2, "Failed to save ongoing dismiss exception policy file"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    :goto_153
    return-void

    :goto_154
    monitor-exit v0
    :try_end_155
    .catchall {:try_start_136 .. :try_end_155} :catchall_133

    throw p0

    :pswitch_156  #0x2
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_163

    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "handleSaveConversationPackagePolicyFile runnable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_163
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mConversationAppPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_16a
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mConversationAppPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_174} :catch_19b
    .catchall {:try_start_16a .. :try_end_174} :catchall_185

    :try_start_174
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mwriteConversationAppPolicyJson(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileOutputStream;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mConversationAppPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_184} :catch_187
    .catchall {:try_start_174 .. :try_end_184} :catchall_185

    goto :goto_199

    :catchall_185
    move-exception p0

    goto :goto_1a6

    :catch_187
    move-exception v2

    :try_start_188
    const-string/jumbo v3, "NotificationService"

    const-string v4, "Failed to save conversation package policy file, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mConversationAppPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_199
    monitor-exit v0

    goto :goto_1a5

    :catch_19b
    move-exception p0

    const-string/jumbo v1, "NotificationService"

    const-string v2, "Failed to save conversation package policy file"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    :goto_1a5
    return-void

    :goto_1a6
    monitor-exit v0
    :try_end_1a7
    .catchall {:try_start_188 .. :try_end_1a7} :catchall_185

    throw p0

    :pswitch_1a8  #0x1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1bf

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1bf

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1bf
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1dd

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string/jumbo v3, "Prevent Sleep by AssistantDelay"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    :cond_1dd
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mWakeLockForAssistantDelay:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void

    :pswitch_1e9  #0x0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v1, :cond_208

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    if-eqz v0, :cond_208

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    goto :goto_209

    :cond_208
    const/4 v0, 0x0

    :goto_209
    const-string/jumbo v1, "notifyZenPolicy : suppressed = "

    const-string/jumbo v2, "NotificationService"

    invoke-static {v0, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    iput v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    return-void

    nop

    :pswitch_data_21e
    .packed-switch 0x0
        :pswitch_1e9  #00000000
        :pswitch_1a8  #00000001
        :pswitch_156  #00000002
        :pswitch_104  #00000003
        :pswitch_a0  #00000004
        :pswitch_4e  #00000005
    .end packed-switch
.end method
