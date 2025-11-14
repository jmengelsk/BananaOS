.class public Lcom/android/server/power/SmartStayController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mClock:Lcom/android/server/power/SmartStayController$Injector$$ExternalSyntheticLambda0;

.field public final mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mFaceDetected:Z

.field public final mInjector:Lcom/android/server/power/SmartStayController$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mOnFaceDetected:Ljava/lang/Runnable;

.field public final mSmartFaceCallback:Lcom/android/server/power/SmartStayController$1;

.field public final mSmartFaceManagerWrapper:Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;

.field public mSmartStayEnabled:Z

.field public mSmartStayHandler:Landroid/os/Handler;

.field public mSmartStayHandlerThread:Landroid/os/HandlerThread;

.field public mUserActivitySummary:I

.field public mWakefulness:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/server/power/SmartStayController$Injector;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/SmartStayController;->mWakefulness:I

    new-instance v0, Lcom/android/server/power/SmartStayController$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/SmartStayController$1;-><init>(Lcom/android/server/power/SmartStayController;)V

    iput-object v0, p0, Lcom/android/server/power/SmartStayController;->mSmartFaceCallback:Lcom/android/server/power/SmartStayController$1;

    iput-object p1, p0, Lcom/android/server/power/SmartStayController;->mLock:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/power/SmartStayController;->mInjector:Lcom/android/server/power/SmartStayController$Injector;

    iput-object p3, p0, Lcom/android/server/power/SmartStayController;->mOnFaceDetected:Ljava/lang/Runnable;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/power/SmartStayController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/SmartStayController;->mClock:Lcom/android/server/power/SmartStayController$Injector$$ExternalSyntheticLambda0;

    new-instance p3, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;

    invoke-direct {p3, p2, p1}, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;-><init>(Landroid/content/Context;Lcom/android/server/power/SmartStayController$Injector$$ExternalSyntheticLambda0;)V

    iput-object p3, p0, Lcom/android/server/power/SmartStayController;->mSmartFaceManagerWrapper:Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .registers 4

    const-string/jumbo v0, "Smart Stay:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  USE_SMART_STAY: true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mSmartStayEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/SmartStayController;->mSmartStayEnabled:Z

    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/power/SmartStayController;->mSmartFaceManagerWrapper:Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "  SmartStayDelay: 2750"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mFaceDetectRequested: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  PREVENT_BAD_CURRENT_CONSUMPTION: true"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
