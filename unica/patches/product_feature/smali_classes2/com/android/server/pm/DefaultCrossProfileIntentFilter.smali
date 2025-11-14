.class public final Lcom/android/server/pm/DefaultCrossProfileIntentFilter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final direction:I

.field public final filter:Lcom/android/server/pm/WatchedIntentFilter;

.field public final flags:I

.field public final letsPersonalDataIntoProfile:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    iput p2, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    iput p3, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->direction:I

    iput-boolean p4, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->letsPersonalDataIntoProfile:Z

    return-void
.end method
