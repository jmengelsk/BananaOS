.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .registers 1

    const/4 p0, -0x4

    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    return-void
.end method
