.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_2a

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    :pswitch_9  #0x0
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    iget-boolean p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    sget-boolean p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    if-nez p1, :cond_19

    const-string/jumbo p0, "enabled"

    goto :goto_1c

    :cond_19
    const-string/jumbo p0, "disabled"

    :goto_1c
    const-string/jumbo p1, "heads up is "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLightingPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_9  #00000000
    .end packed-switch
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 8

    iget v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_5e

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    :pswitch_9  #0x1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5c

    const-string/jumbo p2, "touchpad_enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5c

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "key"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "def"

    const-string/jumbo v1, "false"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_34
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo v3, "getSettings"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_53

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_4a} :catch_4b

    goto :goto_53

    :catch_4b
    move-exception p1

    const-string p2, "EdgeLightingPolicyManager"

    const-string v0, "Failed to get settings"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_53
    :goto_53
    const-string/jumbo p1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mIsTouchpadEnabled:Z

    :cond_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_9  #00000001
    .end packed-switch
.end method
