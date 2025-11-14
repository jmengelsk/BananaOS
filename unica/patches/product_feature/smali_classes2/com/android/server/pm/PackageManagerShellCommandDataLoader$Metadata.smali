.class public Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mData:[B

.field public final mMode:B

.field public final mSalt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    const-string p2, ""

    :goto_5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(B[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(B[BLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:[B

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mSalt:Ljava/lang/String;

    return-void
.end method

.method public static forArchived(Landroid/content/pm/ArchivedPackageParcel;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .registers 4

    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {v1, p0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_17

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v2, p0, v1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(B[BLjava/lang/String;)V

    return-object v0

    :catchall_17
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static forLocalFile(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .registers 4

    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    sget-object v1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromByteArray([B)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_39

    array-length v1, p0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_8

    goto :goto_39

    :cond_8
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_14

    array-length v2, p0

    invoke-static {p0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    goto :goto_33

    :cond_14
    const/4 v0, 0x4

    invoke-static {p0, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    array-length v4, p0

    sub-int/2addr v4, v0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v0, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object p0, v2

    move-object v0, v3

    :goto_33
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-direct {v2, v1, p0, v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(B[BLjava/lang/String;)V

    return-object v2

    :cond_39
    :goto_39
    return-object v0
.end method

.method public static readArchivedPackageParcel([B)Landroid/content/pm/ArchivedPackageParcel;
    .registers 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class p0, Landroid/content/pm/ArchivedPackageParcel;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ArchivedPackageParcel;
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_1c
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method


# virtual methods
.method public toByteArray()[B
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:[B

    iget-byte v2, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_13

    array-length p0, v1

    add-int/2addr p0, v3

    new-array p0, p0, [B

    aput-byte v2, p0, v0

    array-length v2, v1

    invoke-static {v1, v0, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_13
    array-length v4, v1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mSalt:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    add-int/lit8 v5, v4, 0x5

    array-length v6, p0

    add-int/2addr v5, v6

    new-array v5, v5, [B

    aput-byte v2, v5, v0

    const/4 v2, 0x4

    invoke-static {v5, v3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v2, 0x5

    invoke-static {v1, v0, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    array-length v1, p0

    invoke-static {p0, v0, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5
.end method
