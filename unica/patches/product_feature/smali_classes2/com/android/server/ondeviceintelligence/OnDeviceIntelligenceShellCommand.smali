.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;->mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_9
    const-string v2, " \n and \n OnDeviceTrustedInferenceService set to "

    const-string/jumbo v3, "ms"

    const-string v4, " for "

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_12e

    goto :goto_48

    :sswitch_19
    const-string/jumbo v6, "set-deviceconfig-namespace"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    goto :goto_48

    :cond_23
    const/4 v5, 0x3

    goto :goto_48

    :sswitch_25
    const-string/jumbo v6, "set-temporary-services"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    goto :goto_48

    :cond_2f
    const/4 v5, 0x2

    goto :goto_48

    :sswitch_31
    const-string/jumbo v6, "get-services"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    goto :goto_48

    :cond_3b
    move v5, v0

    goto :goto_48

    :sswitch_3d
    const-string/jumbo v6, "set-model-broadcasts"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    goto :goto_48

    :cond_47
    move v5, v1

    :goto_48
    packed-switch v5, :pswitch_data_140

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_50  #0x3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;->mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->setTemporaryDeviceConfigNamespace(Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "OnDeviceIntelligence DeviceConfig Namespace temporarily set to "

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_81  #0x2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v6

    if-nez v6, :cond_ad

    if-nez v0, :cond_ad

    if-nez v5, :cond_ad

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v2, "resetTemporaryServices"

    invoke-static {v0, v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->enforceShellOnly(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;->mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resetTemporaryServices()V

    const-string/jumbo p0, "OnDeviceIntelligenceManagerService temporary reset. "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d8

    :cond_ad
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;->mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->setTemporaryServices([Ljava/lang/String;I)V

    const-string/jumbo p0, "OnDeviceIntelligenceService temporarily set to "

    invoke-static {p0, v0, v2, v5, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_d8
    return v1

    :pswitch_d9  #0x1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;->mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getServiceNames()[Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "OnDeviceIntelligenceService set to :  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \n and \n OnDeviceTrustedInferenceService set to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v0

    invoke-static {v2, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return v1

    :pswitch_fb  #0x0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;->mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v6, v7}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->setModelBroadcastKeys([Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo p0, "OnDeviceIntelligence Model Loading broadcast keys temporarily set to "

    const-string v8, "\n and Package name set to : "

    invoke-static {p0, v0, v2, v5, v8}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v7, v6, v4, v3, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_12e
    .sparse-switch
        -0x7caa68ff -> :sswitch_3d
        -0x15c81b0b -> :sswitch_31
        -0x6755c5b -> :sswitch_25
        0x451528b1 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_fb  #00000000
        :pswitch_d9  #00000001
        :pswitch_81  #00000002
        :pswitch_50  #00000003
    .end packed-switch
.end method

.method public final onHelp()V
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "OnDeviceIntelligenceShellCommand commands: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  set-temporary-services [IntelligenceServiceComponentName] [InferenceServiceComponentName] [DURATION]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Temporarily (for DURATION ms) changes the service implementations."

    const-string v1, "    To reset, call without any arguments."

    const-string v2, "  get-services To get the names of services that are currently being used."

    const-string v3, "  set-model-broadcasts [ModelLoadedBroadcastKey] [ModelUnloadedBroadcastKey] [ReceiverPackageName] [DURATION] To set the names of broadcast intent keys that are to be emitted for cts tests."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  set-deviceconfig-namespace [DeviceConfigNamespace] [DURATION] To set the device config namespace to use for cts tests."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
