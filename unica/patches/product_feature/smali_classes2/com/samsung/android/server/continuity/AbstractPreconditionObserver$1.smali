.class public final Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .registers 3

    if-nez p2, :cond_3

    goto :goto_48

    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    iget-object p1, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_CONTINUITY:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings(I)V

    return-void

    :cond_14
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    iget-object p1, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_MULTI_CONTROL:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings(I)V

    return-void

    :cond_25
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    iget-object p1, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_VIDEO_CALL_CONTINUITY:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings(I)V

    return-void

    :cond_37
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    iget-object p1, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_HW_SHARING:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings(I)V
    :try_end_48
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_48} :catch_48

    :catch_48
    :cond_48
    :goto_48
    return-void
.end method
