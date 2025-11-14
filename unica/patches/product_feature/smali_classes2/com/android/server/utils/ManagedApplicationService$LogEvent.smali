.class public final Lcom/android/server/utils/ManagedApplicationService$LogEvent;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$LogFormattable;


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final event:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->timestamp:J

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    return-void
.end method


# virtual methods
.method public final toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->timestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    iget v1, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    if-eq v1, p1, :cond_3

    const/4 p1, 0x2

    if-eq v1, p1, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_1

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    const-string/jumbo p1, "Unknown Event Occurred"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "Permanently Stopped"

    goto :goto_0

    :cond_1
    const-string p1, "Binding Died For"

    goto :goto_0

    :cond_2
    const-string p1, "Disconnected"

    goto :goto_0

    :cond_3
    const-string p1, "Connected"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Managed Service: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    if-nez p0, :cond_4

    const-string/jumbo p0, "None"

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
