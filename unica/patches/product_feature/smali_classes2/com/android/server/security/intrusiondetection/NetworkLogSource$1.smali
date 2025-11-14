.class public final Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;


# direct methods
.method public constructor <init>(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectEvent(Ljava/lang/String;IJI)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    iget-object v0, v0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/app/admin/ConnectEvent;

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    iget-object v0, v0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mPm:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p5}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move v3, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/admin/ConnectEvent;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    iget-wide p1, p1, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    invoke-virtual {v1, p1, p2}, Landroid/app/admin/ConnectEvent;->setId(J)V

    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    iget-wide p2, p1, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    const-wide p4, 0x7fffffffffffffffL

    cmp-long p4, p2, p4

    if-nez p4, :cond_3c

    const-string p2, "IntrusionDetectionEvent NetworkLogSource"

    const-string/jumbo p3, "Reached maximum id value; wrapping around."

    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    goto :goto_41

    :cond_3c
    const-wide/16 p4, 0x1

    add-long/2addr p2, p4

    iput-wide p2, p1, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    :goto_41
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    invoke-static {v1}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->createForConnectEvent(Landroid/app/admin/ConnectEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .registers 10

    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    iget-object p1, p1, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    new-instance p2, Landroid/app/admin/DnsEvent;

    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    iget-object p1, p1, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mPm:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p1, p9}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    move-object p3, p4

    move-object p4, p5

    move p5, p6

    move-object p6, p1

    invoke-direct/range {p2 .. p8}, Landroid/app/admin/DnsEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V

    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    iget-wide p3, p1, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    invoke-virtual {p2, p3, p4}, Landroid/app/admin/DnsEvent;->setId(J)V

    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    iget-wide p3, p1, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    const-wide p5, 0x7fffffffffffffffL

    cmp-long p5, p3, p5

    if-nez p5, :cond_3d

    const-string p3, "IntrusionDetectionEvent NetworkLogSource"

    const-string/jumbo p4, "Reached maximum id value; wrapping around."

    invoke-static {p3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p3, 0x0

    iput-wide p3, p1, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    goto :goto_42

    :cond_3d
    const-wide/16 p5, 0x1

    add-long/2addr p3, p5

    iput-wide p3, p1, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    :goto_42
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    invoke-static {p2}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->createForDnsEvent(Landroid/app/admin/DnsEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
