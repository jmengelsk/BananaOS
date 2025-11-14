.class public final Lcom/android/server/notification/NotificationAttentionHelper$Signals;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final isCurrentProfile:Z

.field public final listenerHints:I


# direct methods
.method public constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->isCurrentProfile:Z

    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->listenerHints:I

    return-void
.end method
