.class public final Lcom/android/server/smartclip/BleSpenManager$1;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/BleSpenManager;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/BleSpenManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/BleSpenManager$1;->this$0:Lcom/android/server/smartclip/BleSpenManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/smartclip/BleSpenManager$1;->this$0:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isAirActionSettingEnabled()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onAirActionSettingChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleSpenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/smartclip/BleSpenManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/BleSpenManager;->startBlindChargeService(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
