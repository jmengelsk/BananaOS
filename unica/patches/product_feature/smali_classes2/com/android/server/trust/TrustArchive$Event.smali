.class public final Lcom/android/server/trust/TrustArchive$Event;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final agent:Landroid/content/ComponentName;

.field public final duration:J

.field public final elapsedTimestamp:J

.field public final flags:I

.field public final managingTrust:Z

.field public final message:Ljava/lang/String;

.field public final type:I

.field public final userId:I


# direct methods
.method public constructor <init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/trust/TrustArchive$Event;->type:I

    iput p2, p0, Lcom/android/server/trust/TrustArchive$Event;->userId:I

    iput-object p3, p0, Lcom/android/server/trust/TrustArchive$Event;->agent:Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/trust/TrustArchive$Event;->elapsedTimestamp:J

    iput-object p4, p0, Lcom/android/server/trust/TrustArchive$Event;->message:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/server/trust/TrustArchive$Event;->duration:J

    iput p7, p0, Lcom/android/server/trust/TrustArchive$Event;->flags:I

    iput-boolean p8, p0, Lcom/android/server/trust/TrustArchive$Event;->managingTrust:Z

    return-void
.end method
