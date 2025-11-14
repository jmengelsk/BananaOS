.class public final Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

.field public final mDeviceId:[B

.field public final mManufacturerRawData:[B

.field public final mManufacturerType:I


# direct methods
.method public constructor <init>([B)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    const/4 v2, 0x2

    new-array v3, v2, [B

    iput-object v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    iput-object p1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerRawData:[B

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/16 v5, 0x10

    const/4 v6, 0x3

    if-eqz p1, :cond_9

    array-length v7, p1

    const/16 v8, 0x9

    if-ge v7, v8, :cond_0

    goto :goto_2

    :cond_0
    const/4 v7, 0x5

    aget-byte v9, p1, v7

    if-nez v9, :cond_1

    const/4 v10, 0x6

    aget-byte v10, p1, v10

    if-ne v10, v2, :cond_1

    iput v4, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    goto :goto_3

    :cond_1
    if-ne v9, v8, :cond_2

    aget-byte v10, p1, v3

    if-nez v10, :cond_2

    iput v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    goto :goto_3

    :cond_2
    if-ne v9, v8, :cond_8

    aget-byte v9, p1, v3

    if-ne v9, v2, :cond_8

    iput v6, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    aget-byte v9, p1, v0

    move v10, v1

    :goto_0
    if-ge v10, v7, :cond_a

    shl-int v11, v4, v10

    int-to-byte v11, v11

    and-int/2addr v11, v9

    int-to-byte v11, v11

    if-eq v11, v4, :cond_7

    if-eq v11, v2, :cond_6

    const/4 v12, 0x4

    if-eq v11, v12, :cond_5

    if-eq v11, v0, :cond_4

    if-eq v11, v5, :cond_3

    goto :goto_1

    :cond_3
    iput v8, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    aget-byte v11, p1, v8

    add-int/2addr v11, v4

    add-int/2addr v11, v8

    move v8, v11

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x12

    goto :goto_1

    :cond_5
    add-int/lit8 v8, v8, 0x6

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_8
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    goto :goto_3

    :cond_9
    :goto_2
    iput v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    :cond_a
    :goto_3
    const-string v7, "BluetoothDeviceBatteryManager"

    :try_start_0
    iget v8, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0xff

    if-eq v8, v4, :cond_e

    if-eq v8, v2, :cond_d

    if-eq v8, v6, :cond_b

    goto :goto_5

    :cond_b
    if-eq v8, v6, :cond_c

    goto :goto_5

    :cond_c
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerRawData:[B

    if-eqz v3, :cond_10

    aget-byte v0, v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_10

    :try_start_2
    iget v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    add-int/2addr v0, v4

    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    invoke-static {p1, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "isSupportFeature exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_d
    const/16 v0, 0x1f

    aget-byte v3, p1, v0

    and-int/2addr v3, v9

    if-lez v3, :cond_10

    array-length v4, p1

    add-int/2addr v0, v3

    if-le v4, v0, :cond_10

    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    const/16 v0, 0x20

    invoke-static {p1, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_e
    array-length v0, p1

    const/16 v4, 0xf

    if-lt v0, v4, :cond_f

    const/16 v0, 0xa

    aget-byte v0, p1, v0

    and-int/2addr v0, v9

    if-ne v0, v9, :cond_f

    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    const/16 v0, 0xd

    invoke-static {p1, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    invoke-static {p1, v3, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :goto_4
    const-string/jumbo p1, "setDeviceId exception: "

    invoke-static {p0, p1, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_5
    return-void
.end method
