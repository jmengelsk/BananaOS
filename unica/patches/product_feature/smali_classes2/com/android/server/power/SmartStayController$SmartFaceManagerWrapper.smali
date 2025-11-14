.class public final Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mClock:Lcom/android/server/power/SmartStayController$Injector$$ExternalSyntheticLambda0;

.field public final mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/SmartStayController$Injector$$ExternalSyntheticLambda0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;->mClock:Lcom/android/server/power/SmartStayController$Injector$$ExternalSyntheticLambda0;

    invoke-static {p1}, Lcom/samsung/android/smartface/SmartFaceManager;->getSmartFaceManager(Landroid/content/Context;)Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    return-void
.end method
