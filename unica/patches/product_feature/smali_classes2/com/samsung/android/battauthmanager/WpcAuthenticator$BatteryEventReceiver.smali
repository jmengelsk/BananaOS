.class public final Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public isAttachedAuthPad:Z

.field public final synthetic this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->isAttachedAuthPad:Z

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string/jumbo p1, "misc_event"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v1, "sec_plug_type"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v2, p1, 0x40

    const/16 v3, 0x40

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", misc_event: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", plug event: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "BattAuthManager_WpcAuthenticator"

    invoke-static {v3, v1, p2}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    and-int/lit16 v1, p1, 0x200

    const/16 v3, 0x200

    const/4 v5, 0x3

    if-ne v1, v3, :cond_2

    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/power_supply/battery/wpc_auth_mode"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    const-string/jumbo v1, "exception in readAuthMode"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    if-eq v0, v5, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_7

    :cond_1
    const-string/jumbo p1, "Starting authentication"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->isAttachedAuthPad:Z

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    :cond_2
    if-nez v2, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->isAttachedAuthPad:Z

    if-eqz v1, :cond_3

    const-string p1, "Auth pad has been detached"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->isAttachedAuthPad:Z

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_3
    iget-boolean p2, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->isAttachedAuthPad:Z

    if-eqz p2, :cond_7

    const/16 p2, 0x400

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    iget-object p1, p1, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, v4, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    if-eq p1, v5, :cond_4

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    sget-object p1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->STATUS_NONE:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    iput-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    return-void

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;->this$0:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    :goto_4
    return-void
.end method
