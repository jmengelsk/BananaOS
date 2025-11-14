.class public final Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;Lcom/android/server/smartclip/SpenGestureManagerService$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;->this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "pen_digitizer_enabled"

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;->this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSpenDigitizerOnOffChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->writeDigitizerOnOffCommand(Z)V

    if-ne p1, v2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "digitizer_enable_changed"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "digitizer_enable"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandSpenTriggerService(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
