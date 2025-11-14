.class public final Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;


# instance fields
.field public final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Landroid/os/HwParcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    return-void
.end method


# virtual methods
.method public final onValues(II)V
    .locals 2

    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    iget-object p1, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
