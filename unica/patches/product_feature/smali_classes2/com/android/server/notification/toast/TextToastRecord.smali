.class public final Lcom/android/server/notification/toast/TextToastRecord;
.super Lcom/android/server/notification/toast/ToastRecord;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Landroid/app/ITransientNotificationCallback;

.field public final mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService$2;

.field public final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/statusbar/StatusBarManagerService$2;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;Ljava/lang/String;)V
    .registers 25

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lcom/android/server/notification/toast/ToastRecord;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;ILandroid/os/Binder;ILjava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-object/from16 p1, p12

    iput-object p1, p0, Lcom/android/server/notification/toast/TextToastRecord;->mCallback:Landroid/app/ITransientNotificationCallback;

    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final hide()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService$2;

    const-string v1, "Cannot hide toast that wasn\'t shown"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService$2;

    iget-object v1, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    :try_start_13
    invoke-interface {v0, v1, p0}, Lcom/android/internal/statusbar/IStatusBar;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    return-void
.end method

.method public final isAppRendered()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final show()Z
    .registers 10

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string/jumbo v1, "NotificationService"

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Show pkg="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v0, p0, Lcom/android/server/notification/toast/TextToastRecord;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-nez v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "StatusBar not available to show text toast for package "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_38
    iget v1, p0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget v6, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    iget-object v7, p0, Lcom/android/server/notification/toast/TextToastRecord;->mCallback:Landroid/app/ITransientNotificationCallback;

    iget v8, p0, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_51

    :try_start_4e
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBar;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_51

    :catch_51
    :cond_51
    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TextToastRecord{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isSystemToast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/toast/ToastRecord;->isSystemToast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/toast/TextToastRecord;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
