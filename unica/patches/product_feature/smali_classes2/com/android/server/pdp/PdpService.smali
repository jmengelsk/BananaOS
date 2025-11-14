.class public Lcom/android/server/pdp/PdpService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

.field public final mSvcPdpThread:Lcom/android/server/pdp/PdpService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/pdp/PdpService$1;

    invoke-direct {p1, p0}, Lcom/android/server/pdp/PdpService$1;-><init>(Lcom/android/server/pdp/PdpService;)V

    iput-object p1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Lcom/android/server/pdp/PdpService$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    return-void
.end method


# virtual methods
.method public final handleDisplayPDPToast(ILjava/lang/String;)V
    .registers 9

    const-string/jumbo v0, "PdpService"

    const-string/jumbo v1, "[PDP] displayPDPToast start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    move v2, v1

    :goto_b
    if-gt v2, p1, :cond_26

    :try_start_d
    iget-object v3, p0, Lcom/android/server/pdp/PdpService;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_1f

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :catch_1f
    move-exception p0

    const-string/jumbo p1, "[PDP] Toast exception"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_26
    const-string/jumbo p0, "[PDP] displayPDPToast end"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBootPhase(I)V
    .registers 5

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2c

    const-string/jumbo p1, "[PDP] PHASE_BOOT_COMPLETED"

    const-string/jumbo v0, "PdpService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "[PDP] pdpServiceReady >"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    const-wide/16 v1, 0x1770

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string/jumbo p0, "[PDP] pdpServiceReady <"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method public final onStart()V
    .registers 2

    const-string/jumbo p0, "PdpService"

    const-string/jumbo v0, "[PDP] onStart"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
