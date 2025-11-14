.class public final Lcom/android/server/wm/ActionChain$Tracker;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public final makeChain(ILcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;
    .locals 2

    new-instance v0, Lcom/android/server/wm/ActionChain;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/wm/ActionChain;->mType:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iput p1, v0, Lcom/android/server/wm/ActionChain;->mType:I

    iput-object p2, v0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    iget-object p0, p0, Lcom/android/server/wm/ActionChain$Tracker;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p0, v0, Lcom/android/server/wm/ActionChain;->mTmpAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method
