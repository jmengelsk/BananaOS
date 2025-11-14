.class public final Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mToken:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;->mToken:Ljava/lang/Object;

    return-void
.end method
