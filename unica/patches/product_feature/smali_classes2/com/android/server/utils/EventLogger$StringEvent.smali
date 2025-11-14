.class public final Lcom/android/server/utils/EventLogger$StringEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/EventLogger$StringEvent;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/utils/EventLogger$StringEvent;->mDescription:Ljava/lang/String;

    return-object p0
.end method
