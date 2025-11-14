.class public final Lcom/samsung/android/server/audio/PhoneStateHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/PhoneStateHelper;


# instance fields
.field public mIs2GTDMANetwork:Z

.field public mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field public mRilState:I

.field public mSimCount:I

.field public mSpecifiedTm:[Landroid/telephony/TelephonyManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public final registerPhoneStateListener()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    const-string v1, "AS.PhoneStateHelper"

    if-nez v0, :cond_0

    const-string/jumbo p0, "do not register PhoneStateListener on NO_SIM state"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-array v2, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-array v0, v0, [Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    if-ge v2, v3, :cond_2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    aget v3, v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "registerPhoneStateListener mSimCount: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v5, Lcom/samsung/android/server/audio/PhoneStateHelper$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/audio/PhoneStateHelper$1;-><init>(Lcom/samsung/android/server/audio/PhoneStateHelper;)V

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v2

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
