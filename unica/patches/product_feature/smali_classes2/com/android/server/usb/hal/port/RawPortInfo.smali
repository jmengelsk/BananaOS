.class public final Lcom/android/server/usb/hal/port/RawPortInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/usb/hal/port/RawPortInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canChangeDataRole:Z

.field public canChangeMode:Z

.field public canChangePowerRole:Z

.field public complianceWarnings:[I

.field public contaminantDetectionStatus:I

.field public final contaminantProtectionStatus:I

.field public currentDataRole:I

.field public currentMode:I

.field public currentPowerRole:I

.field public displayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

.field public final plugState:I

.field public final portId:Ljava/lang/String;

.field public final powerBrickConnectionStatus:I

.field public final powerTransferLimited:Z

.field public final supportedAltModes:I

.field public final supportedContaminantProtectionModes:I

.field public final supportedModes:I

.field public final supportsComplianceWarnings:Z

.field public final supportsEnableContaminantPresenceDetection:Z

.field public final supportsEnableContaminantPresenceProtection:Z

.field public final usbDataStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/usb/hal/port/RawPortInfo$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/usb/hal/port/RawPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    iput p3, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    iput p4, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    iput-boolean p5, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    iput p6, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    iput-boolean p7, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    iput p8, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    iput-boolean p9, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    iput-boolean p10, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    iput p11, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    iput-boolean p12, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    iput p13, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    iput p14, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    iput-boolean p15, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    move/from16 p1, p16

    iput p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    move/from16 p1, p17

    iput-boolean p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsComplianceWarnings:Z

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->complianceWarnings:[I

    move/from16 p1, p19

    iput p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->plugState:I

    move/from16 p1, p20

    iput p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedAltModes:I

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->displayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsComplianceWarnings:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->complianceWarnings:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->plugState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedAltModes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedAltModes:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->displayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/DisplayPortAltModeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method
