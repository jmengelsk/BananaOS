.class public final synthetic Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/provider/DeviceConfig$Properties;


# direct methods
.method public synthetic constructor <init>(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;->f$0:Landroid/provider/DeviceConfig$Properties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;->f$0:Landroid/provider/DeviceConfig$Properties;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x2710

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_64

    goto :goto_41

    :sswitch_12
    const-string/jumbo v3, "media_session_calback_fgs_allowlist_duration_ms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_41

    :cond_1c
    const/4 v2, 0x3

    goto :goto_41

    :sswitch_1e
    const-string/jumbo v3, "media_session_callback_fgs_while_in_use_temp_allow_duration_ms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_41

    :cond_28
    const/4 v2, 0x2

    goto :goto_41

    :sswitch_2a
    const-string/jumbo v3, "media_session_temp_user_engaged_duration_ms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_41

    :cond_34
    const/4 v2, 0x1

    goto :goto_41

    :sswitch_36
    const-string/jumbo v3, "media_button_receiver_fgs_allowlist_duration_ms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    packed-switch v2, :pswitch_data_76

    return-void

    :pswitch_45  #0x3
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsAllowlistDurationMs:J

    return-void

    :pswitch_4c  #0x2
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsWhileInUseTempAllowDurationMs:J

    return-void

    :pswitch_53  #0x1
    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionTempUserEngagedDurationMs:J

    return-void

    :pswitch_5d  #0x0
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaButtonReceiverFgsAllowlistDurationMs:J

    return-void

    :sswitch_data_64
    .sparse-switch
        -0x75c89a12 -> :sswitch_36
        -0x6dd6a958 -> :sswitch_2a
        -0x3f30504f -> :sswitch_1e
        0x6b7d1e9e -> :sswitch_12
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5d  #00000000
        :pswitch_53  #00000001
        :pswitch_4c  #00000002
        :pswitch_45  #00000003
    .end packed-switch
.end method
