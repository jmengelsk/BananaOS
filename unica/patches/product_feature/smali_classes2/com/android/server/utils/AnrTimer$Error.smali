.class public final Lcom/android/server/utils/AnrTimer$Error;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final arg:Ljava/lang/String;

.field public final operation:Ljava/lang/String;

.field public final stack:[Ljava/lang/StackTraceElement;

.field public final tag:Ljava/lang/String;

.field public final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/AnrTimer$Error;->operation:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/utils/AnrTimer$Error;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/utils/AnrTimer$Error;->stack:[Ljava/lang/StackTraceElement;

    iput-object p4, p0, Lcom/android/server/utils/AnrTimer$Error;->arg:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/utils/AnrTimer$Error;->timestamp:J

    return-void
.end method
