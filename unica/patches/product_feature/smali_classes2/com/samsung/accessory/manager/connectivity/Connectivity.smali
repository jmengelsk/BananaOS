.class public abstract Lcom/samsung/accessory/manager/connectivity/Connectivity;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final NOT_SUPPORT:[B


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnabledInternal:Z

.field public mSessionState:I

.field public mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->NOT_SUPPORT:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mEnabledInternal:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect()V
.end method

.method public abstract disable()Z
.end method

.method public abstract disconnect()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract enable()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public isEnabledInternally()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mEnabledInternal:Z

    return p0
.end method

.method public abstract openNode()Z
.end method

.method public abstract sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
.end method

.method public abstract sendStopAuth()Z
.end method

.method public abstract sendStopUsbAuth()V
.end method

.method public abstract sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
.end method

.method public setStateChangedCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    return-void
.end method
