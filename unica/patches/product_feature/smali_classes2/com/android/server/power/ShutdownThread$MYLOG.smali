.class public abstract Lcom/android/server/power/ShutdownThread$MYLOG;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread;->wirteLogFileWriter(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    sget-object p0, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    if-eqz p0, :cond_74

    sget-boolean p0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    if-nez p0, :cond_74

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "ShutdownThread"

    move-object v8, p1

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d-%02d %02d:%02d:%02d.%03d %s: %s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/server/power/ShutdownThread;->shutdownDialog:Lcom/android/server/power/shutdown/ShutdownDialog;

    iget-object v0, p1, Lcom/android/server/power/shutdown/ShutdownDialog;->logHandler:Landroid/os/Handler;

    if-eqz v0, :cond_74

    iget-object v1, p1, Lcom/android/server/power/shutdown/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    if-eqz v1, :cond_74

    new-instance v1, Lcom/android/server/power/shutdown/ShutdownDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/android/server/power/shutdown/ShutdownDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/shutdown/ShutdownDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_74
    return-void
.end method
