.class public final Lcom/android/server/wearable/WearableSensingShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sPipe:[Landroid/os/ParcelFileDescriptor;

.field public static final sTestableCallbackInternal:Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;


# instance fields
.field public final mService:Lcom/android/server/wearable/WearableSensingManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/wearable/WearableSensingShellCommand;

    new-instance v0, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wearable/WearableSensingShellCommand;->sTestableCallbackInternal:Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_9

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_9
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1fe

    goto/16 :goto_82

    :sswitch_14
    const-string/jumbo v4, "get-last-status-code"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto/16 :goto_82

    :cond_1f
    const/16 v3, 0x8

    goto/16 :goto_82

    :sswitch_23
    const-string/jumbo v4, "provide-data-stream"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_82

    :cond_2d
    const/4 v3, 0x7

    goto :goto_82

    :sswitch_2f
    const-string/jumbo v4, "set-temporary-service"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_82

    :cond_39
    const/4 v3, 0x6

    goto :goto_82

    :sswitch_3b
    const-string/jumbo v4, "create-data-stream"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    goto :goto_82

    :cond_45
    const/4 v3, 0x5

    goto :goto_82

    :sswitch_47
    const-string/jumbo v4, "provide-data"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    goto :goto_82

    :cond_51
    const/4 v3, 0x4

    goto :goto_82

    :sswitch_53
    const-string/jumbo v4, "set-data-request-rate-limit-window-size"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    goto :goto_82

    :cond_5d
    const/4 v3, 0x3

    goto :goto_82

    :sswitch_5f
    const-string/jumbo v4, "destroy-data-stream"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    goto :goto_82

    :cond_69
    const/4 v3, 0x2

    goto :goto_82

    :sswitch_6b
    const-string/jumbo v4, "write-to-data-stream"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    goto :goto_82

    :cond_75
    move v3, v1

    goto :goto_82

    :sswitch_77
    const-string/jumbo v4, "get-bound-package"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    goto :goto_82

    :cond_81
    move v3, v0

    :goto_82
    packed-switch v3, :pswitch_data_224

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_8a  #0x8
    const-string/jumbo p1, "WearableSensingShellCommand"

    const-string/jumbo v1, "getLastStatusCode"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    sget-object p1, Lcom/android/server/wearable/WearableSensingShellCommand;->sTestableCallbackInternal:Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;

    iget p1, p1, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;->mLastStatus:I

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    return v0

    :pswitch_9f  #0x7
    const-string/jumbo p1, "WearableSensingShellCommand"

    const-string/jumbo v1, "provideDataStream"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_1cb

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    sget-object v1, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v0

    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wearable/WearableSensingManagerService;->provideDataStream(ILandroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    return v0

    :pswitch_c8  #0x6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e6

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    const-string/jumbo p0, "WearableSensingManagerService temporary reset. "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_e6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WearableSensingService temporarily set to "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " for "

    const-string/jumbo v4, "ms"

    invoke-static {v3, v2, v1, v4, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :pswitch_108  #0x5
    const-string/jumbo p0, "createDataStream"

    const-string/jumbo p1, "WearableSensingShellCommand"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_111
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    sput-object p0, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_117} :catch_118

    return v0

    :catch_118
    move-exception p0

    const-string v1, "Failed to createDataStream."

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1cb

    :pswitch_120  #0x4
    const-string/jumbo p1, "WearableSensingShellCommand"

    const-string/jumbo v1, "provideData"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {v4, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {p0, p1, v4, v2, v1}, Lcom/android/server/wearable/WearableSensingManagerService;->provideData(ILandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    return v0

    :pswitch_155  #0x3
    const-string/jumbo p1, "WearableSensingShellCommand"

    const-string/jumbo v1, "setDataRequestRateLimitWindowSize"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_16e

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerService;->resetDataRequestRateLimitWindowSize()V

    return v0

    :cond_16e
    const/16 v1, 0x14

    if-ge p1, v1, :cond_173

    move p1, v1

    :cond_173
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerService;->setDataRequestRateLimitWindowSize(Ljava/time/Duration;)V

    return v0

    :pswitch_17e  #0x2
    const-string/jumbo p0, "destroyDataStream"

    const-string/jumbo p1, "WearableSensingShellCommand"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_187
    sget-object p0, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_1cb

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    sget-object p0, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_197
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_197} :catch_198

    return v0

    :catch_198
    move-exception p0

    const-string v1, "Failed to destroyDataStream."

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1cb

    :pswitch_19f  #0x1
    const-string/jumbo p1, "writeToDataStream"

    const-string/jumbo v2, "WearableSensingShellCommand"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_1cb

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    :try_start_1b0
    sget-object p1, Lcom/android/server/wearable/WearableSensingShellCommand;->sPipe:[Landroid/os/ParcelFileDescriptor;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1c4} :catch_1c5

    return v0

    :catch_1c5
    move-exception p0

    const-string p1, "Failed to writeToDataStream."

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1cb
    :goto_1cb
    return v0

    :pswitch_1cc  #0x0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand;->mService:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1dd
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    if-eqz p0, :cond_1ed

    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    monitor-exit v3

    goto :goto_1ee

    :catchall_1eb
    move-exception p0

    goto :goto_1fb

    :cond_1ed
    monitor-exit v3
    :try_end_1ee
    .catchall {:try_start_1dd .. :try_end_1ee} :catchall_1eb

    :goto_1ee
    if-nez v2, :cond_1f3

    const-string p0, ""

    goto :goto_1f7

    :cond_1f3
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_1f7
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :goto_1fb
    :try_start_1fb
    monitor-exit v3
    :try_end_1fc
    .catchall {:try_start_1fb .. :try_end_1fc} :catchall_1eb

    throw p0

    nop

    :sswitch_data_1fe
    .sparse-switch
        -0x7c399b40 -> :sswitch_77
        -0x4da44da1 -> :sswitch_6b
        -0x44a8be50 -> :sswitch_5f
        -0x4100bb6b -> :sswitch_53
        -0x1cbfc0aa -> :sswitch_47
        0x22f5cfb2 -> :sswitch_3b
        0x41db2e8e -> :sswitch_2f
        0x5bbdadd7 -> :sswitch_23
        0x784ce7c8 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_224
    .packed-switch 0x0
        :pswitch_1cc  #00000000
        :pswitch_19f  #00000001
        :pswitch_17e  #00000002
        :pswitch_155  #00000003
        :pswitch_120  #00000004
        :pswitch_108  #00000005
        :pswitch_c8  #00000006
        :pswitch_9f  #00000007
        :pswitch_8a  #00000008
    .end packed-switch
.end method

.method public final onHelp()V
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "WearableSensingCommands commands: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  create-data-stream: Creates a data stream to be provided."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  destroy-data-stream: Destroys a data stream if one was previously created."

    const-string v1, "  provide-data-stream USER_ID: Provides data stream to WearableSensingService."

    const-string v2, "  write-to-data-stream STRING: writes string to data stream."

    const-string v3, "  provide-data USER_ID KEY INTEGER: provide integer as data with key."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  get-last-status-code: Prints the latest request status code."

    const-string v1, "  get-bound-package USER_ID:     Print the bound package that implements the service."

    const-string v2, "  set-temporary-service USER_ID [PACKAGE_NAME] [COMPONENT_NAME DURATION]"

    const-string v3, "    Temporarily (for DURATION ms) changes the service implementation."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    To reset, call with just the USER_ID argument."

    const-string v1, "  set-data-request-rate-limit-window-size WINDOW_SIZE"

    const-string v2, "    Set the window size used in data request rate limiting to WINDOW_SIZE seconds."

    const-string v3, "    positive WINDOW_SIZE smaller than 20 will be automatically set to 20."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    To reset, call with 0 or a negative WINDOW_SIZE."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
