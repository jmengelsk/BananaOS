.class public Lcom/samsung/android/knoxguard/service/KGEventHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final TAG:Ljava/lang/String; = "KG.KGEventHandler"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;->values()[Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->what:I

    aget-object p0, p0, v0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unknown system event: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KG.KGEventHandler"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/SystemIntentProcessor;->handlePackageDataCleared(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/SystemIntentProcessor;->handlePackageReplacedOrRemoved(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/SystemIntentProcessor;->handleUserPresent(Landroid/content/Context;)V

    return-void

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/SystemIntentProcessor;->handleSetupWizardCompleted(Landroid/content/Context;)V

    return-void

    :cond_4
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/SystemIntentProcessor;->handleBootCompleted(Landroid/content/Context;)V

    return-void
.end method
