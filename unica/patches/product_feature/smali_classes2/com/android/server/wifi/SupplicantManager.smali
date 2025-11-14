.class public Lcom/android/server/wifi/SupplicantManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method public static start()V
    .registers 2

    :try_start_0
    const-string/jumbo v0, "wpa_supplicant"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Failed to start Supplicant"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stop()V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "wpa_supplicant"

    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    const-string/jumbo v1, "SupplicantManager"

    const-string v2, "Failed to stop Supplicant"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
