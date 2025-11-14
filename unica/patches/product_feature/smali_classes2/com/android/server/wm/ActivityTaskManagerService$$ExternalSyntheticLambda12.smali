.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    packed-switch p0, :pswitch_data_48

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object p0, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_2f

    :cond_19
    :try_start_19
    const-string/jumbo v1, "android"

    const-string/jumbo v2, "android"

    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_25} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_25} :catch_2f

    goto :goto_2f

    :catch_26
    move-exception v0

    move-object p0, v0

    const-string p1, "ActivityTaskManager"

    const-string p2, "Error canceling notification for service"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_2f
    :goto_2f
    return-void

    :pswitch_30  #0x1
    check-cast p1, Landroid/app/ActivityManagerInternal;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/ActivityManagerInternal;->updateOomLevelsForDisplay(I)V

    return-void

    :pswitch_3c  #0x0
    check-cast p1, Landroid/app/ActivityManagerInternal;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/ActivityManagerInternal;->reportCurKeyguardUsageEvent(Z)V

    return-void

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3c  #00000000
        :pswitch_30  #00000001
    .end packed-switch
.end method
