.class public final Lcom/android/server/policy/SingleKeyGestureDetector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z

.field public static final KEYCODE_KEY_DISPATCHING_ALLOWLIST:Ljava/util/Set;

.field public static final MULTI_PRESS_TIMEOUT:J

.field public static mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

.field public static sDefaultLongPressTimeout:J

.field public static sDefaultMultiPressTimeout:J

.field public static sDefaultVeryLongPressTimeout:J


# instance fields
.field public mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

.field public mBeganFromDefaultDisplayOn:Z

.field public mBeganFromNonInteractive:Z

.field public final mCustomRules:Landroid/util/SparseArray;

.field public mDownKeyCode:I

.field public final mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

.field public mHandledByLongPress:Z

.field public final mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

.field public mKeyPressCounter:I

.field public volatile mKeyReleaseTime:J

.field public mLastDownTime:J

.field public mLastUpTime:J

.field public mTriggeredMultiPressTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    sput-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->KEYCODE_KEY_DISPATCHING_ALLOWLIST:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0xaa

    sput-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromDefaultDisplayOn:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    new-instance v2, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    invoke-direct {v2}, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    return-void
.end method


# virtual methods
.method public final addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Rule : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already exists."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasRule(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final reset()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v4, v3, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    iget v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IILandroid/view/KeyEvent;II)V

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    iput-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SKIP_TOO_FAST_DOUBLE_PRESS:Z

    if-eqz v0, :cond_2

    iput-wide v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    return-void
.end method
