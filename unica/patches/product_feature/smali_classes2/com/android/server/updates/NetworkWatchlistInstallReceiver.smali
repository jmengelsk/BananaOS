.class public Lcom/android/server/updates/NetworkWatchlistInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string/jumbo v0, "metadata/"

    const-string/jumbo v1, "version"

    const-string v2, "/data/misc/network_watchlist/"

    const-string/jumbo v3, "network_watchlist.xml"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final postInstall(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    const-class p0, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {p0}, Landroid/net/NetworkWatchlistManager;->reloadWatchlist()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    const-string/jumbo p0, "NetworkWatchlistInstallReceiver"

    const-string/jumbo p1, "Unable to reload watchlist"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
