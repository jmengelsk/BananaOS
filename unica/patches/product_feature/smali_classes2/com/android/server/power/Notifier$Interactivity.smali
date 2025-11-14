.class public final Lcom/android/server/power/Notifier$Interactivity;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public changeOffReason:I

.field public changeOnReason:I

.field public changeStartTime:J

.field public isChanging:Z

.field public isInteractive:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    return-void
.end method
