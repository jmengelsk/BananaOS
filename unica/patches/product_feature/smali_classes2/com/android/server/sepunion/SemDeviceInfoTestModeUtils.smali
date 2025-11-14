.class public Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mTestModeChangeHandler:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mTestModeChangeHandler:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;

    const-string/jumbo p0, "SemDeviceInfoTestModeUtils"

    const-string/jumbo p1, "This version has been shipped!! Then device info test mode is not available"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
