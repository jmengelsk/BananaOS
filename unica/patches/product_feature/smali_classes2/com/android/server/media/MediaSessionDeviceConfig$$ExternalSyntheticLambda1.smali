.class public final synthetic Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/provider/DeviceConfig$Properties;


# direct methods
.method public synthetic constructor <init>(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;->f$0:Landroid/provider/DeviceConfig$Properties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;->f$0:Landroid/provider/DeviceConfig$Properties;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x2710

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "media_session_calback_fgs_allowlist_duration_ms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "media_session_callback_fgs_while_in_use_temp_allow_duration_ms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "media_session_temp_user_engaged_duration_ms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "media_button_receiver_fgs_allowlist_duration_ms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsAllowlistDurationMs:J

    return-void

    :pswitch_1
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionCallbackFgsWhileInUseTempAllowDurationMs:J

    return-void

    :pswitch_2
    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaSessionTempUserEngagedDurationMs:J

    return-void

    :pswitch_3
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/android/server/media/MediaSessionDeviceConfig;->sMediaButtonReceiverFgsAllowlistDurationMs:J

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x75c89a12 -> :sswitch_3
        -0x6dd6a958 -> :sswitch_2
        -0x3f30504f -> :sswitch_1
        0x6b7d1e9e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
