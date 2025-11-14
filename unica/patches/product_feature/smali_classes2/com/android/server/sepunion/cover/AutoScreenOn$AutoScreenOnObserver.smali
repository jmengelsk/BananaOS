.class public final Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/AutoScreenOn;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/AutoScreenOn;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;->this$0:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p0, "CoverManager_AutoScreenOn"

    const-string p1, "AutoScreenOnObserver"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AutoScreenOnObserver.onChange(boolean selfChange : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoverManager_AutoScreenOn"

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;->this$0:Lcom/android/server/sepunion/cover/AutoScreenOn;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->update()V

    return-void
.end method
