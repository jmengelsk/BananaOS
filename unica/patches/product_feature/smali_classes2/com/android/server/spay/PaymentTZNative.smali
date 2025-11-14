.class Lcom/android/server/spay/PaymentTZNative;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mIsLoaded:Z

.field public mMOPTZNativePtr_:J

.field public mProcessName:Ljava/lang/String;

.field public mRecvBufSize:I

.field public mRootName:Ljava/lang/String;

.field public mSendBufSize:I

.field public mTAId:I

.field public mTATechnology:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    return-void
.end method

.method private native nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z
.end method


# virtual methods
.method public final loadTA(Landroid/content/Context;IJJ)Z
    .registers 22

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    iget-wide v5, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v11, 0x0

    cmp-long v5, v5, v11

    const/4 v13, 0x1

    if-eqz v5, :cond_17

    const-string/jumbo v0, "PaymentManagerService"

    const-string/jumbo v1, "PaymentTZNative::loadTA called for TA that is already loaded. Call Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_17
    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v1, v5

    const/4 v14, 0x0

    if-gtz v7, :cond_70

    cmp-long v5, v3, v5

    if-lez v5, :cond_24

    goto :goto_70

    :cond_24
    long-to-int v1, v1

    long-to-int v4, v3

    iget v5, p0, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    iget v6, p0, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    iget v7, p0, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    iget-object v8, p0, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    move-object v0, p0

    move/from16 v2, p2

    move v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/spay/PaymentTZNative;->nativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_4b

    const-string/jumbo v0, "PaymentManagerService"

    const-string v1, "Error: nativeCreateTLCommunicationContext failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :cond_4b
    const-class v1, Lcom/android/server/spay/PaymentTZNative;

    monitor-enter v1

    :try_start_4e
    iput-boolean v13, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_6d

    sget-boolean v1, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v1, :cond_6c

    const-string/jumbo v1, "PaymentManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PaymentTZNative::loadTA: mMOPTZNativePtr_ = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    return v13

    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v0

    :cond_70
    :goto_70
    const-string/jumbo v0, "PaymentManagerService"

    const-string/jumbo v1, "SpayFw_loadTA: cannot get ta offset or size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v14
.end method

.method public native nativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeDestroyTLCommunicationContext()V
.end method

.method public final processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .registers 6

    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    const-string/jumbo v1, "PaymentManagerService"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PaymentTZNative::processTACommand: request = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mMOPTZNativePtr_ = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    new-instance v0, Landroid/spay/TACommandResponse;

    invoke-direct {v0}, Landroid/spay/TACommandResponse;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/spay/PaymentTZNative;->nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z

    move-result p0

    if-nez p0, :cond_36

    const-string/jumbo p0, "PaymentTZNative::processTACommand: Error: nativeProcessTACommand returned failure"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_36
    return-object v0
.end method

.method public final unloadTA()V
    .registers 7

    const-string/jumbo v0, "PaymentTZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    const-class v1, Lcom/android/server/spay/PaymentTZNative;

    monitor-enter v1

    :try_start_6
    iget-wide v2, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2c

    iget-boolean v2, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    if-nez v2, :cond_13

    goto :goto_2c

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_2a

    invoke-virtual {p0}, Lcom/android/server/spay/PaymentTZNative;->nativeDestroyTLCommunicationContext()V

    iput-wide v4, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    sget-boolean p0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz p0, :cond_29

    const-string/jumbo p0, "PaymentManagerService"

    const-string/jumbo v0, "PaymentTZNative::unloadTA called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void

    :catchall_2a
    move-exception p0

    goto :goto_42

    :cond_2c
    :goto_2c
    :try_start_2c
    const-string/jumbo v2, "PaymentManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :goto_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_2a

    throw p0
.end method
