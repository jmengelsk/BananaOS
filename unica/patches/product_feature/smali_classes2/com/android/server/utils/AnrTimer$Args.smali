.class public final Lcom/android/server/utils/AnrTimer$Args;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mExtend:Z

.field public mFreeze:Z

.field public final mInjector:Lcom/android/server/utils/AnrTimer$Injector;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mInjector:Lcom/android/server/utils/AnrTimer$Injector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mExtend:Z

    iput-boolean v0, p0, Lcom/android/server/utils/AnrTimer$Args;->mFreeze:Z

    return-void
.end method
