.class public final Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    return-void
.end method

.method public static writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V
    .registers 11

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    iget v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    packed-switch v0, :pswitch_data_44

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unknown stateEnum="

    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_26  #0x6
    const/4 v0, 0x6

    goto :goto_33

    :pswitch_28  #0x5
    const/4 v0, 0x5

    goto :goto_33

    :pswitch_2a  #0x4
    const/4 v0, 0x4

    goto :goto_33

    :pswitch_2c  #0x3
    const/4 v0, 0x3

    goto :goto_33

    :pswitch_2e  #0x2
    const/4 v0, 0x2

    goto :goto_33

    :pswitch_30  #0x1
    const/4 v0, 0x1

    goto :goto_33

    :pswitch_32  #0x0
    const/4 v0, 0x0

    :goto_33
    const-string/jumbo v3, "state"

    const-wide v4, 0x10e00000001L

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    goto :goto_4

    :cond_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_32  #00000000
        :pswitch_30  #00000001
        :pswitch_2e  #00000002
        :pswitch_2c  #00000003
        :pswitch_2a  #00000004
        :pswitch_28  #00000005
        :pswitch_26  #00000006
    .end packed-switch
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_10
    const-string/jumbo v8, "manage time and time zone detection"

    const-string/jumbo v9, "android.permission.MANAGE_TIME_AND_ZONE_DETECTION"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2da

    :goto_1d
    move v10, v4

    goto :goto_5a

    :sswitch_1f
    const-string/jumbo v10, "dump_state"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_29

    goto :goto_1d

    :cond_29
    const/4 v10, 0x4

    goto :goto_5a

    :sswitch_2b
    const-string/jumbo v10, "clear_recorded_provider_states"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_35

    goto :goto_1d

    :cond_35
    move v10, v3

    goto :goto_5a

    :sswitch_37
    const-string/jumbo v10, "start"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_41

    goto :goto_1d

    :cond_41
    move v10, v5

    goto :goto_5a

    :sswitch_43
    const-string/jumbo v10, "stop"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4d

    goto :goto_1d

    :cond_4d
    move v10, v7

    goto :goto_5a

    :sswitch_4f
    const-string/jumbo v10, "start_with_test_providers"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_59

    goto :goto_1d

    :cond_59
    move v10, v6

    :goto_5a
    packed-switch v10, :pswitch_data_2f0

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_62  #0x4
    :try_start_62
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v10, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_69} :catch_218

    :try_start_69
    iget-object v8, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    new-instance v9, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    sget-wide v10, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_78} :catch_20e

    if-nez v0, :cond_7b

    return v6

    :cond_7b
    const-string v8, "--proto"

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_96

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    new-instance v8, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v9, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v9, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_a6

    :cond_96
    new-instance v8, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v9, Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v10, "  "

    invoke-direct {v9, v1, v10}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    :goto_a6
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    if-eqz v1, :cond_157

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

    if-eqz v9, :cond_e3

    if-eq v9, v7, :cond_e1

    if-eq v9, v5, :cond_df

    if-ne v9, v3, :cond_d2

    move v9, v3

    goto :goto_e4

    :cond_d2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown statusEnum="

    invoke-static {v9, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_df
    move v9, v5

    goto :goto_e4

    :cond_e1
    move v9, v7

    goto :goto_e4

    :cond_e3
    move v9, v6

    :goto_e4
    const-string/jumbo v14, "status"

    const-wide v2, 0x10e00000001L

    invoke-virtual {v8, v14, v2, v3, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    iget-object v2, v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    if-eqz v2, :cond_12a

    const-string/jumbo v3, "suggestion"

    const-wide v9, 0x10b00000001L

    invoke-virtual {v8, v3, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v9

    iget-object v2, v2, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_108
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_124

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

    goto :goto_108

    :cond_124
    move v14, v6

    move v15, v7

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    goto :goto_12c

    :cond_12a
    move v14, v6

    move v15, v7

    :goto_12c
    iget-object v1, v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v1, :cond_133

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_137

    :cond_133
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_153

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "debug_info"

    const-wide v6, 0x20900000002L

    invoke-virtual {v8, v3, v6, v7, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_13b

    :cond_153
    invoke-virtual {v8, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    goto :goto_159

    :cond_157
    move v14, v6

    move v15, v7

    :goto_159
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mControllerStates:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v14

    :goto_162
    if-ge v3, v2, :cond_1e8

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/2addr v3, v15

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    sparse-switch v7, :sswitch_data_2fe

    goto :goto_1ca

    :sswitch_176
    const-string v7, "FAILED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca

    move v6, v11

    goto :goto_1cb

    :sswitch_180
    const-string v7, "INITIALIZING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca

    move v6, v5

    goto :goto_1cb

    :sswitch_18a
    const-string v7, "CERTAIN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca

    const/4 v6, 0x4

    goto :goto_1cb

    :sswitch_194
    const-string/jumbo v7, "UNCERTAIN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca

    const/4 v6, 0x3

    goto :goto_1cb

    :sswitch_19f
    const-string v7, "DESTROYED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca

    move v6, v10

    goto :goto_1cb

    :sswitch_1a9
    const-string/jumbo v7, "UNKNOWN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca

    move v6, v9

    goto :goto_1cb

    :sswitch_1b4
    const-string/jumbo v7, "PROVIDERS_INITIALIZING"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca

    move v6, v14

    goto :goto_1cb

    :sswitch_1bf
    const-string/jumbo v7, "STOPPED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca

    move v6, v15

    goto :goto_1cb

    :cond_1ca
    :goto_1ca
    move v6, v4

    :goto_1cb
    packed-switch v6, :pswitch_data_320

    move v9, v14

    goto :goto_1db

    :pswitch_1d0  #0x5
    move v9, v10

    goto :goto_1db

    :pswitch_1d2  #0x4
    move v9, v11

    goto :goto_1db

    :pswitch_1d4  #0x3
    const/4 v9, 0x4

    goto :goto_1db

    :pswitch_1d6  #0x2
    const/4 v9, 0x3

    goto :goto_1db

    :pswitch_1d8  #0x1
    move v9, v5

    goto :goto_1db

    :pswitch_1da  #0x0
    move v9, v15

    :goto_1db
    :pswitch_1db  #0x6
    const-string/jumbo v6, "controller_states"

    const-wide v10, 0x20e00000004L

    invoke-virtual {v8, v6, v10, v11, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto/16 :goto_162

    :cond_1e8
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

    :catch_20e
    move-exception v0

    move v15, v7

    :try_start_210
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_216
    .catch Ljava/lang/RuntimeException; {:try_start_210 .. :try_end_216} :catch_216

    :catch_216
    move-exception v0

    goto :goto_21a

    :catch_218
    move-exception v0

    move v15, v7

    :goto_21a
    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_2d9

    :pswitch_21f  #0x3
    move v14, v6

    :try_start_220
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    new-instance v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;I)V

    sget-wide v6, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V
    :try_end_233
    .catch Ljava/lang/IllegalStateException; {:try_start_220 .. :try_end_233} :catch_234

    return v14

    :catch_234
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    return v5

    :pswitch_239  #0x2
    move v14, v6

    move v15, v7

    :try_start_23b
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    move v3, v15

    invoke-direct {v2, v0, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;I)V

    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    sget-wide v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V
    :try_end_24f
    .catch Ljava/lang/RuntimeException; {:try_start_23b .. :try_end_24f} :catch_25a

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "Service started"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v14

    :catch_25a
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    :goto_25e
    const/4 v15, 0x1

    goto/16 :goto_2d9

    :pswitch_261  #0x1
    move v14, v6

    :try_start_262
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    new-instance v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v14}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;I)V

    sget-wide v4, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V
    :try_end_275
    .catch Ljava/lang/RuntimeException; {:try_start_262 .. :try_end_275} :catch_280

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "Service stopped"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v14

    :catch_280
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    goto :goto_25e

    :pswitch_285  #0x0
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_293

    move-object v0, v4

    :cond_293
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29e

    goto :goto_29f

    :cond_29e
    move-object v4, v3

    :goto_29f
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    :try_start_2a7
    iget-object v3, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v5, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2bc

    if-eqz v4, :cond_2b3

    goto :goto_2bc

    :cond_2b3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "One or both test package names must be provided."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2bc
    :goto_2bc
    iget-object v5, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    new-instance v6, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v6, v3, v0, v4, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V
    :try_end_2c8
    .catch Ljava/lang/RuntimeException; {:try_start_2a7 .. :try_end_2c8} :catch_2d4

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "Service started (test mode)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v14, 0x0

    return v14

    :catch_2d4
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    goto :goto_25e

    :goto_2d9
    return v15

    :sswitch_data_2da
    .sparse-switch
        -0x16f5718f -> :sswitch_4f
        0x360802 -> :sswitch_43
        0x68ac462 -> :sswitch_37
        0xec9a033 -> :sswitch_2b
        0x38381a86 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_2f0
    .packed-switch 0x0
        :pswitch_285  #00000000
        :pswitch_261  #00000001
        :pswitch_239  #00000002
        :pswitch_21f  #00000003
        :pswitch_62  #00000004
    .end packed-switch

    :sswitch_data_2fe
    .sparse-switch
        -0x4584e253 -> :sswitch_1bf
        -0x1be9cf16 -> :sswitch_1b4
        0x19d1382a -> :sswitch_1a9
        0x1c83a5f9 -> :sswitch_19f
        0x33ff1fc9 -> :sswitch_194
        0x52aa9882 -> :sswitch_18a
        0x72462c4d -> :sswitch_180
        0x7b29883d -> :sswitch_176
    .end sparse-switch

    :pswitch_data_320
    .packed-switch 0x0
        :pswitch_1da  #00000000
        :pswitch_1d8  #00000001
        :pswitch_1d6  #00000002
        :pswitch_1d4  #00000003
        :pswitch_1d2  #00000004
        :pswitch_1d0  #00000005
        :pswitch_1db  #00000006
    .end packed-switch
.end method

.method public final onHelp()V
    .registers 10

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
    .registers 3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
