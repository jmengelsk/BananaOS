.class public final Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    return-void
.end method

.method public static writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    iget v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unknown stateEnum="

    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x0

    :goto_1
    const-string/jumbo v3, "state"

    const-wide v4, 0x10e00000001L

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v8, "manage time and time zone detection"

    const-string/jumbo v9, "android.permission.MANAGE_TIME_AND_ZONE_DETECTION"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_0
    move v10, v4

    goto :goto_1

    :sswitch_0
    const-string/jumbo v10, "dump_state"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    const/4 v10, 0x4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v10, "clear_recorded_provider_states"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    move v10, v3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v10, "start"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_0

    :cond_3
    move v10, v5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v10, "stop"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_0

    :cond_4
    move v10, v7

    goto :goto_1

    :sswitch_4
    const-string/jumbo v10, "start_with_test_providers"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_0

    :cond_5
    move v10, v6

    :goto_1
    packed-switch v10, :pswitch_data_0

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v10, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v8, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    new-instance v9, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    sget-wide v10, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_6

    return v6

    :cond_6
    const-string v8, "--proto"

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    new-instance v8, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v9, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v9, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_2

    :cond_7
    new-instance v8, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v9, Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v10, "  "

    invoke-direct {v9, v1, v10}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    :goto_2
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    if-eqz v1, :cond_10

    const-string/jumbo v9, "last_event"

    const-wide v10, 0x10b00000001L

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v9, v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    const-string/jumbo v14, "algorithm_status"

    const-wide v10, 0x10b00000003L

    invoke-virtual {v8, v14, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v9}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->getStatus()I

    move-result v9

    if-eqz v9, :cond_b

    if-eq v9, v7, :cond_a

    if-eq v9, v5, :cond_9

    if-ne v9, v3, :cond_8

    move v9, v3

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown statusEnum="

    invoke-static {v9, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v9, v5

    goto :goto_3

    :cond_a
    move v9, v7

    goto :goto_3

    :cond_b
    move v9, v6

    :goto_3
    const-string/jumbo v14, "status"

    const-wide v2, 0x10e00000001L

    invoke-virtual {v8, v14, v2, v3, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    iget-object v2, v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    if-eqz v2, :cond_d

    const-string/jumbo v3, "suggestion"

    const-wide v9, 0x10b00000001L

    invoke-virtual {v8, v3, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v9

    iget-object v2, v2, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v11, "zone_ids"

    move v14, v6

    move v15, v7

    const-wide v6, 0x20900000001L

    invoke-virtual {v8, v11, v6, v7, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    move v6, v14

    move v7, v15

    goto :goto_4

    :cond_c
    move v14, v6

    move v15, v7

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    goto :goto_5

    :cond_d
    move v14, v6

    move v15, v7

    :goto_5
    iget-object v1, v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_6

    :cond_e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "debug_info"

    const-wide v6, 0x20900000002L

    invoke-virtual {v8, v3, v6, v7, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_7

    :cond_f
    invoke-virtual {v8, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    goto :goto_8

    :cond_10
    move v14, v6

    move v15, v7

    :goto_8
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mControllerStates:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v14

    :goto_9
    if-ge v3, v2, :cond_12

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/2addr v3, v15

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    sparse-switch v7, :sswitch_data_1

    goto :goto_a

    :sswitch_5
    const-string v7, "FAILED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v6, v11

    goto :goto_b

    :sswitch_6
    const-string v7, "INITIALIZING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v6, v5

    goto :goto_b

    :sswitch_7
    const-string v7, "CERTAIN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, 0x4

    goto :goto_b

    :sswitch_8
    const-string/jumbo v7, "UNCERTAIN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, 0x3

    goto :goto_b

    :sswitch_9
    const-string v7, "DESTROYED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v6, v10

    goto :goto_b

    :sswitch_a
    const-string/jumbo v7, "UNKNOWN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v6, v9

    goto :goto_b

    :sswitch_b
    const-string/jumbo v7, "PROVIDERS_INITIALIZING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v6, v14

    goto :goto_b

    :sswitch_c
    const-string/jumbo v7, "STOPPED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v6, v15

    goto :goto_b

    :cond_11
    :goto_a
    move v6, v4

    :goto_b
    packed-switch v6, :pswitch_data_1

    move v9, v14

    goto :goto_c

    :pswitch_1
    move v9, v10

    goto :goto_c

    :pswitch_2
    move v9, v11

    goto :goto_c

    :pswitch_3
    const/4 v9, 0x4

    goto :goto_c

    :pswitch_4
    const/4 v9, 0x3

    goto :goto_c

    :pswitch_5
    move v9, v5

    goto :goto_c

    :pswitch_6
    move v9, v15

    :goto_c
    :pswitch_7
    const-string/jumbo v6, "controller_states"

    const-wide v10, 0x20e00000004L

    invoke-virtual {v8, v6, v10, v11, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto/16 :goto_9

    :cond_12
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mPrimaryProviderStates:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "primary_provider_states"

    const-wide v3, 0x20b00000002L

    invoke-static {v8, v1, v2, v3, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V

    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mSecondaryProviderStates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "secondary_provider_states"

    const-wide v2, 0x20b00000003L

    invoke-static {v8, v0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V

    invoke-virtual {v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    return v14

    :catch_0
    move-exception v0

    move v15, v7

    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    move v15, v7

    :goto_d
    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_11

    :pswitch_8
    move v14, v6

    :try_start_3
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    new-instance v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;I)V

    sget-wide v6, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    return v14

    :catch_3
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    return v5

    :pswitch_9
    move v14, v6

    move v15, v7

    :try_start_4
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    move v3, v15

    invoke-direct {v2, v0, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;I)V

    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    sget-wide v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "Service started"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v14

    :catch_4
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    :goto_e
    const/4 v15, 0x1

    goto/16 :goto_11

    :pswitch_a
    move v14, v6

    :try_start_5
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    new-instance v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v14}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;I)V

    sget-wide v4, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "Service stopped"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v14

    :catch_5
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    goto :goto_e

    :pswitch_b
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_13

    move-object v0, v4

    :cond_13
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_f

    :cond_14
    move-object v4, v3

    :goto_f
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    :try_start_6
    iget-object v3, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v5, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_16

    if-eqz v4, :cond_15

    goto :goto_10

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "One or both test package names must be provided."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_10
    iget-object v5, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    new-instance v6, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v6, v3, v0, v4, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "Service started (test mode)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v14, 0x0

    return v14

    :catch_6
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    goto :goto_e

    :goto_11
    return v15

    :sswitch_data_0
    .sparse-switch
        -0x16f5718f -> :sswitch_4
        0x360802 -> :sswitch_3
        0x68ac462 -> :sswitch_2
        0xec9a033 -> :sswitch_1
        0x38381a86 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4584e253 -> :sswitch_c
        -0x1be9cf16 -> :sswitch_b
        0x19d1382a -> :sswitch_a
        0x1c83a5f9 -> :sswitch_9
        0x33ff1fc9 -> :sswitch_8
        0x52aa9882 -> :sswitch_7
        0x72462c4d -> :sswitch_6
        0x7b29883d -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 9

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "location_time_zone_manager"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Location Time Zone Manager (%s) commands for tests:\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "  help\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Print this help text.\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "start"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  %s\n"

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "    Starts the service, creating location time zone providers.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "@null"

    const-string/jumbo v4, "start_with_test_providers"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "  %s <primary package name|%2$s> <secondary package name|%2$s> <record states>\n"

    invoke-virtual {p0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "    Starts the service with test provider packages configured / provider permission checks disabled.\n"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "    <record states> - true|false, determines whether state recording is enabled.\n"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v2, "dump_state"

    const-string/jumbo v5, "clear_recorded_provider_states"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "    See %s and %s.\n"

    invoke-virtual {p0, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v6, "stop"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v7, "    Stops the service, destroying location time zone providers.\n"

    new-array v8, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v5, "    Clears recorded provider state. See also %s and %s.\n"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v4, "    Note: This is only intended for use during testing.\n"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v4, "--proto"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "  %s [%s]\n"

    invoke-virtual {p0, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "    Dumps service state for tests as text or binary proto form.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "    See the LocationTimeZoneManagerServiceStateProto definition for details.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v2, "system_time"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v4, "This service is also affected by the following device_config flags in the %s namespace:\n"

    invoke-virtual {p0, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v2, "primary_location_time_zone_provider_mode_override"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v2, "disabled"

    const-string/jumbo v4, "enabled"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "    Overrides the mode of the primary provider. Values=%s|%s\n"

    invoke-virtual {p0, v7, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v5, "secondary_location_time_zone_provider_mode_override"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v5, "    Overrides the mode of the secondary provider. Values=%s|%s\n"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v2, "location_time_zone_detection_uncertainty_delay_millis"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "    Sets the amount of time the service waits when uncertain before making an \'uncertain\' suggestion to the time zone detector.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v2, "ltzp_init_timeout_millis"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "    Sets the initialization time passed to the providers.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v2, "ltzp_init_timeout_fuzz_millis"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "    Sets the amount of extra time added to the providers\' initialization time.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v2, "ltzp_event_filtering_age_threshold_millis"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "    Sets the amount of time that must pass between equivalent LTZP events before they will be reported to the system server.\n"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v2, "Typically, use \'%s\' to stop the service before setting individual flags and \'%s\' after to restart it.\n"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "time_zone_detector"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Also see \"adb shell cmd %s help\" for higher-level location time zone commands / settings.\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final reportError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
