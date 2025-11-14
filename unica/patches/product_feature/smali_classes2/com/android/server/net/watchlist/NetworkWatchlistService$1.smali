.class public final Lcom/android/server/net/watchlist/NetworkWatchlistService$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectEvent(Ljava/lang/String;IJI)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    iget-boolean p2, p2, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    const/4 p2, 0x0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p5, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->asyncNetworkEvent(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public final onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    iget-boolean p1, p1, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {p0, p4, p9, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->asyncNetworkEvent(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method
