.class public final enum Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

.field public static final enum CRITICAL:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

.field public static final enum DISABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

.field public static final enum ENABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    const-string v1, "DISABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->DISABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    new-instance v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    const-string v2, "CRITICAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->CRITICAL:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    new-instance v2, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    const-string v3, "ENABLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->ENABLE:Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    move-result-object v0

    sput-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->$VALUES:[Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;
    .locals 1

    const-class v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;
    .locals 1

    sget-object v0, Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->$VALUES:[Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    invoke-virtual {v0}, [Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/soundtrigger/DeviceStateHandler$SoundTriggerDeviceState;

    return-object v0
.end method
