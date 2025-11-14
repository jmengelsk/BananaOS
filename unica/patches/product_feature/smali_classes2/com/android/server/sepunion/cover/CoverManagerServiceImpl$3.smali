.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;
.super Landroid/view/IDisplayFoldListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Landroid/view/IDisplayFoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayFoldChanged(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDisplayFoldChanged: displayId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverManager_CoverManagerServiceImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverSwitchStateFromInputManager()I

    move-result p0

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(Z)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$3;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(Z)V

    :cond_2
    return-void
.end method
