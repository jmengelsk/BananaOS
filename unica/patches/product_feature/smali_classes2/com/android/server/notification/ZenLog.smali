.class public abstract Lcom/android/server/notification/ZenLog;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final INTERCEPTION_EVENTS:Landroid/util/LocalLog;

.field public static final STATE_CHANGES:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xc8

    goto :goto_9

    :cond_7
    const/16 v0, 0x64

    :goto_9
    new-instance v1, Landroid/util/LocalLog;

    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v1, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    new-instance v1, Landroid/util/LocalLog;

    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v1, Lcom/android/server/notification/ZenLog;->INTERCEPTION_EVENTS:Landroid/util/LocalLog;

    return-void
.end method

.method public static append(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3b

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x13

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x12

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x15

    if-ne p0, v0, :cond_18

    goto :goto_3b

    :cond_18
    sget-object v0, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    monitor-enter v0

    :try_start_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->typeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_38

    throw p0

    :cond_3b
    :goto_3b
    sget-object v0, Lcom/android/server/notification/ZenLog;->INTERCEPTION_EVENTS:Landroid/util/LocalLog;

    monitor-enter v0

    :try_start_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->typeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3e .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public static clear()V
    .registers 2

    sget-object v0, Lcom/android/server/notification/ZenLog;->INTERCEPTION_EVENTS:Landroid/util/LocalLog;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0}, Landroid/util/LocalLog;->clear()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_12

    sget-object v1, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    monitor-enter v1

    :try_start_a
    invoke-virtual {v1}, Landroid/util/LocalLog;->clear()V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v0

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static componentListToString(Ljava/util/List;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    if-lez v1, :cond_13

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "    "

    sget-object v1, Lcom/android/server/notification/ZenLog;->INTERCEPTION_EVENTS:Landroid/util/LocalLog;

    monitor-enter v1

    :try_start_5
    const-string v2, "    Interception Events:\n"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v0, p0}, Landroid/util/LocalLog;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_23

    sget-object v2, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    monitor-enter v2

    :try_start_14
    const-string v1, "    State Changes:\n"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v0, p0}, Landroid/util/LocalLog;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    monitor-exit v2

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    throw p0

    :catchall_23
    move-exception p0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public static originToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2a

    const-string v0, "??"

    invoke-static {p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a  #0x7
    const-string/jumbo p0, "ORIGIN_USER_IN_APP"

    return-object p0

    :pswitch_e  #0x6
    const-string/jumbo p0, "ORIGIN_RESTORE_BACKUP"

    return-object p0

    :pswitch_12  #0x5
    const-string/jumbo p0, "ORIGIN_SYSTEM"

    return-object p0

    :pswitch_16  #0x4
    const-string/jumbo p0, "ORIGIN_APP"

    return-object p0

    :pswitch_1a  #0x3
    const-string/jumbo p0, "ORIGIN_USER_IN_SYSTEMUI"

    return-object p0

    :pswitch_1e  #0x2
    const-string/jumbo p0, "ORIGIN_INIT_USER"

    return-object p0

    :pswitch_22  #0x1
    const-string/jumbo p0, "ORIGIN_INIT"

    return-object p0

    :pswitch_26  #0x0
    const-string/jumbo p0, "ORIGIN_UNKNOWN"

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_22  #00000001
        :pswitch_1e  #00000002
        :pswitch_1a  #00000003
        :pswitch_16  #00000004
        :pswitch_12  #00000005
        :pswitch_e  #00000006
        :pswitch_a  #00000007
    .end packed-switch
.end method

.method public static ringerModeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_c
    const-string/jumbo p0, "normal"

    return-object p0

    :cond_10
    const-string/jumbo p0, "vibrate"

    return-object p0

    :cond_14
    const-string/jumbo p0, "silent"

    return-object p0
.end method

.method public static traceApplyDeviceEffect(Ljava/lang/String;Z)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x16

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceConfig(ILjava/lang/String;Landroid/content/ComponentName;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;I)V
    .registers 9

    new-instance v0, Landroid/service/notification/ZenModeDiff$ConfigDiff;

    invoke-direct {v0, p3, p4}, Landroid/service/notification/ZenModeDiff$ConfigDiff;-><init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    move-result p3

    const-string v1, " ("

    const/16 v2, 0xb

    if-nez p3, :cond_27

    invoke-static {p1, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->originToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") no changes"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void

    :cond_27
    invoke-static {p1, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->originToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") from uid "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_43

    const-string p0, " - "

    invoke-static {p2, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_45

    :cond_43
    const-string p0, ""

    :goto_45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_54

    invoke-virtual {p4}, Landroid/service/notification/ZenModeConfig;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_55

    :cond_54
    const/4 p2, 0x0

    :goto_55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceMatchesCallFilter(ILjava/lang/String;Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", reason="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", calling uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x12

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceSetNotificationPolicy(Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V
    .registers 6

    const-string/jumbo v0, "pkg="

    const-string v1, " targetSdk="

    const-string v2, " NotificationPolicy="

    invoke-static {p1, v0, p0, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceSetZenMode(ILjava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_20

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_18

    const/4 v1, 0x3

    if-eq p0, v1, :cond_14

    const-string/jumbo p0, "unknown"

    goto :goto_23

    :cond_14
    const-string/jumbo p0, "alarms"

    goto :goto_23

    :cond_18
    const-string/jumbo p0, "no_interruptions"

    goto :goto_23

    :cond_1c
    const-string/jumbo p0, "important_interruptions"

    goto :goto_23

    :cond_20
    const-string/jumbo p0, "off"

    :goto_23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_63

    const/4 v0, 0x6

    if-eq p0, v0, :cond_5f

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_5b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_57

    const/4 v0, 0x4

    if-eq p0, v0, :cond_53

    packed-switch p0, :pswitch_data_68

    const-string/jumbo p0, "unknown"

    return-object p0

    :pswitch_17  #0x17
    const-string/jumbo p0, "schedule_device_effect"

    return-object p0

    :pswitch_1b  #0x16
    const-string/jumbo p0, "apply_device_effect"

    return-object p0

    :pswitch_1f  #0x15
    const-string/jumbo p0, "alert_on_updated_intercept"

    return-object p0

    :pswitch_23  #0x14
    const-string/jumbo p0, "check_repeat_caller"

    return-object p0

    :pswitch_27  #0x13
    const-string/jumbo p0, "record_caller"

    return-object p0

    :pswitch_2b  #0x12
    const-string/jumbo p0, "matches_call_filter"

    return-object p0

    :pswitch_2f  #0x11
    const-string/jumbo p0, "set_consolidated_policy"

    return-object p0

    :pswitch_33  #0x10
    const-string/jumbo p0, "set_notification_policy"

    return-object p0

    :pswitch_37  #0xf
    const-string/jumbo p0, "listener_hints_changed"

    return-object p0

    :pswitch_3b  #0xe
    const-string/jumbo p0, "suppressor_changed"

    return-object p0

    :pswitch_3f  #0xd
    const-string/jumbo p0, "disable_effects"

    return-object p0

    :pswitch_43  #0xc
    const-string/jumbo p0, "not_intercepted"

    return-object p0

    :pswitch_47  #0xb
    const-string/jumbo p0, "config"

    return-object p0

    :pswitch_4b  #0xa
    const-string/jumbo p0, "unsubscribe"

    return-object p0

    :pswitch_4f  #0x9
    const-string/jumbo p0, "subscribe"

    return-object p0

    :cond_53
    const-string/jumbo p0, "set_ringer_mode_internal"

    return-object p0

    :cond_57
    const-string/jumbo p0, "set_ringer_mode_external"

    return-object p0

    :cond_5b
    const-string/jumbo p0, "matches_contact"

    return-object p0

    :cond_5f
    const-string/jumbo p0, "set_zen_mode"

    return-object p0

    :cond_63
    const-string/jumbo p0, "intercepted"

    return-object p0

    nop

    :pswitch_data_68
    .packed-switch 0x9
        :pswitch_4f  #00000009
        :pswitch_4b  #0000000a
        :pswitch_47  #0000000b
        :pswitch_43  #0000000c
        :pswitch_3f  #0000000d
        :pswitch_3b  #0000000e
        :pswitch_37  #0000000f
        :pswitch_33  #00000010
        :pswitch_2f  #00000011
        :pswitch_2b  #00000012
        :pswitch_27  #00000013
        :pswitch_23  #00000014
        :pswitch_1f  #00000015
        :pswitch_1b  #00000016
        :pswitch_17  #00000017
    .end packed-switch
.end method
