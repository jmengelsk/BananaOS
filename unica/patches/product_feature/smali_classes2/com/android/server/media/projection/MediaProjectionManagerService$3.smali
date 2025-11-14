.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_a8

    :try_start_5
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    check-cast p0, Landroid/media/projection/IMediaProjectionCallback;

    invoke-interface {p0}, Landroid/media/projection/IMediaProjectionCallback;->onStop()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_16

    :catch_d
    move-exception p0

    const-string/jumbo v0, "MediaProjectionManagerService"

    const-string v1, "Failed to notify media projection has stopped"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void

    :pswitch_17  #0x0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    if-eqz v1, :cond_a7

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a7

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_a7

    const-string/jumbo v1, "ro.build.characteristics"

    const-string/jumbo v2, "phone"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tablet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const v3, 0x103012b

    if-eqz v1, :cond_80

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v4, v4, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x10410cd

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_a7

    :cond_80
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object v4, v4, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x10410cc

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_a7
    :goto_a7
    return-void

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_17  #00000000
    .end packed-switch
.end method
