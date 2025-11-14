.class public final synthetic Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic f$0:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic f$1:[Landroid/hardware/security/keymint/KeyParameter;


# direct methods
.method public synthetic constructor <init>(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iput-object p2, p0, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->f$1:[Landroid/hardware/security/keymint/KeyParameter;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/security/samsungattestation/ISamsungAttestation;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iget-object p0, p0, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->f$1:[Landroid/hardware/security/keymint/KeyParameter;

    check-cast p1, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;

    iget-object v1, p1, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_10
    const-string/jumbo v3, "android.security.samsungattestation.ISamsungAttestation"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v1, p0, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p0, p1, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    invoke-interface {p0, p1, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    sget-object p0, Landroid/hardware/security/keymint/Certificate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/security/keymint/Certificate;
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_35

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_35
    move-exception p0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
