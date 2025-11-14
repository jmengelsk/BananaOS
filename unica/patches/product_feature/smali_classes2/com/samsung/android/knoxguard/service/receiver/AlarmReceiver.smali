.class public Lcom/samsung/android/knoxguard/service/receiver/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/knoxguard/service/receiver/AlarmReceiver;

    const-string v0, "KG.AlarmReceiver"

    sput-object v0, Lcom/samsung/android/knoxguard/service/receiver/AlarmReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo p0, "alarm_type"

    const/4 v0, -0x1

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    sget-object p2, Lcom/samsung/android/knoxguard/service/receiver/AlarmReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onReceive : "

    const-string v1, " @"

    invoke-static {p0, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRetryLock(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "System ui is not ready - power off "

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    invoke-static {p1, p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->powerOff(Landroid/content/Context;I)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo p1, "onReceive - unidentified alarm action: "

    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
