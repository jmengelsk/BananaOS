.class public final Lcom/android/server/wm/FactoryErrorDialog$1;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "Rebooting from failed factory test"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
