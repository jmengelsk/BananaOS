.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const-string p1, "KNOX_CUSTOM"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_122

    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getMultiWindowState()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1f

    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p2, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setMultiWindowState(Z)I

    :cond_1f
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getDeviceSpeakerEnabledStateInternal()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2d

    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setDeviceSpeakerEnabledState(Z)I

    :cond_2d
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getProKioskState()Z

    move-result p2

    if-eqz p2, :cond_42

    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    move-result p2

    if-eqz p2, :cond_42

    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    :cond_42
    const/16 p2, 0x3e8

    :try_start_44
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v2, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "sealedStatusBarMode"

    invoke-virtual {v2, p2, v0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_72

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v3, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarMode"

    const/4 v5, 0x0

    const/16 v4, 0x3e8

    const/4 v6, 0x4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v3, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarMode"

    const/4 v5, 0x0

    const/16 v4, 0x3e8

    const/4 v6, -0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_72} :catch_72

    :catch_72
    :cond_72
    :try_start_72
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v2, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "sealedStatusBarClockState"

    invoke-virtual {v2, p2, v0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9f

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v3, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarClockState"

    const/4 v5, 0x0

    const/16 v4, 0x3e8

    const/4 v6, 0x4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v3, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarClockState"

    const/4 v5, 0x0

    const/16 v4, 0x3e8

    const/4 v6, -0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_9f} :catch_9f

    :catch_9f
    :cond_9f
    :try_start_9f
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v2, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "sealedStatusBarIconsState"

    invoke-virtual {v2, p2, v0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_cc

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v3, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarIconsState"

    const/4 v5, 0x0

    const/16 v4, 0x3e8

    const/4 v6, 0x4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v3, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedStatusBarIconsState"

    const/4 v5, 0x0

    const/16 v4, 0x3e8

    const/4 v6, -0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_cc} :catch_cc

    :catch_cc
    :cond_cc
    :try_start_cc
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v2, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "sealedHardKeyIntentState"

    invoke-virtual {v2, p2, v0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_f9

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v2, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "hardKeyIntentMode"

    const/4 v4, 0x0

    const/16 v3, 0x3e8

    const/4 v5, 0x4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v2, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedHardKeyIntentState"

    const/4 v4, 0x0

    const/16 v3, 0x3e8

    const/4 v5, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_f9} :catch_f9

    :catch_f9
    :cond_f9
    :try_start_f9
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "adminUid"

    invoke-virtual {v1, p2, v0, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_f9 .. :try_end_103} :catch_104

    goto :goto_11d

    :catch_104
    const-string p1, "KnoxCustomManagerService"

    const-string/jumbo v0, "initializing KNOX_CUSTOM with default values"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v0, p1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v2, 0x0

    const/16 v1, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "adminUid"

    const/16 v3, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    :goto_11d
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->loadHardKeyReportList(I)V

    :cond_122
    return-void
.end method
