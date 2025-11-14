.class final enum Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

.field public static final enum CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

.field public static final enum CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

.field public static final enum CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    const-string v1, "CHARGE_STATE_DISCHARGE"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    new-instance v1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    const-string v2, "CHARGE_STATE_WIRED_CHARGE"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    new-instance v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    const-string v3, "CHARGE_STATE_WIRELESS_CHARGE"

    const/4 v4, 0x2

    invoke-direct {v2, v4, v4, v3}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->$VALUES:[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    .registers 2

    const-class v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->$VALUES:[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    invoke-virtual {v0}, [Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object v0
.end method
