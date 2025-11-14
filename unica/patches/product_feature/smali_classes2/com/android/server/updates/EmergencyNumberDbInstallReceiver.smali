.class public Lcom/android/server/updates/EmergencyNumberDbInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string/jumbo v0, "metadata/"

    const-string/jumbo v1, "version"

    const-string v2, "/data/misc/emergencynumberdb"

    const-string/jumbo v3, "emergency_number_db"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final postInstall(Landroid/content/Context;)V
    .locals 1

    const-string p0, "EmergencyNumberDbInstallReceiver"

    const-string v0, "Emergency number database is updated in file partition"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "phone"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->notifyOtaEmergencyNumberDbInstalled()V

    return-void
.end method
