.class public abstract Lcom/android/server/ondeviceintelligence/BundleUtil;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static canMarshall(Ljava/lang/Object;)Z
    .registers 2

    instance-of v0, p0, [B

    if-nez v0, :cond_11

    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    invoke-static {p0}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public static ensureValidBundle(Landroid/os/Bundle;)V
    .registers 2

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/os/Bundle;->hasBinders()I

    move-result p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Bundle should not contain IBinder objects."

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Request passed is expected to be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sanitizeInferenceParams(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->ensureValidBundle(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_7e

    :cond_b
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2a

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_13

    :cond_2a
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->canMarshall(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    instance-of v1, v2, Landroid/database/CursorWindow;

    if-eqz v1, :cond_35

    goto :goto_13

    :cond_35
    instance-of v1, v2, Landroid/os/Bundle;

    if-eqz v1, :cond_3f

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    goto :goto_13

    :cond_3f
    instance-of v1, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_49

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_13

    :cond_49
    instance-of v1, v2, Landroid/os/SharedMemory;

    if-eqz v1, :cond_55

    check-cast v2, Landroid/os/SharedMemory;

    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v2, v1}, Landroid/os/SharedMemory;->setProtect(I)Z

    goto :goto_13

    :cond_55
    instance-of v1, v2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5f

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_13

    :cond_5f
    instance-of v1, v2, [Landroid/os/Parcelable;

    if-eqz v1, :cond_69

    check-cast v2, [Landroid/os/Parcelable;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateParcelableArray([Landroid/os/Parcelable;)V

    goto :goto_13

    :cond_69
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unsupported Parcelable type encountered in the Bundle: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7e
    :goto_7e
    return-void
.end method

.method public static sanitizeResponseParams(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->ensureValidBundle(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6d

    :cond_a
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_29

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12

    :cond_29
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->canMarshall(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_12

    :cond_30
    instance-of v1, v2, Landroid/os/Bundle;

    if-eqz v1, :cond_3a

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeResponseParams(Landroid/os/Bundle;)V

    goto :goto_12

    :cond_3a
    instance-of v1, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_44

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_12

    :cond_44
    instance-of v1, v2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4e

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_12

    :cond_4e
    instance-of v1, v2, [Landroid/os/Parcelable;

    if-eqz v1, :cond_58

    check-cast v2, [Landroid/os/Parcelable;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateParcelableArray([Landroid/os/Parcelable;)V

    goto :goto_12

    :cond_58
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unsupported Parcelable type encountered in the Bundle: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6d
    :goto_6d
    return-void
.end method

.method public static sanitizeStateParams(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->ensureValidBundle(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4f

    :cond_a
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_29

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12

    :cond_29
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->canMarshall(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_12

    :cond_30
    instance-of v1, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_3a

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_12

    :cond_3a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unsupported Parcelable type encountered in the Bundle: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    :goto_4f
    return-void
.end method

.method public static tryCloseResource(Landroid/os/Bundle;)V
    .registers 6

    if-eqz p0, :cond_5b

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_5b

    :cond_f
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :try_start_27
    instance-of v3, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_33

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_17

    :catch_31
    move-exception v2

    goto :goto_47

    :cond_33
    instance-of v3, v2, Landroid/database/CursorWindow;

    if-eqz v3, :cond_3d

    check-cast v2, Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    goto :goto_17

    :cond_3d
    instance-of v3, v2, Landroid/os/SharedMemory;

    if-eqz v3, :cond_17

    check-cast v2, Landroid/os/SharedMemory;

    invoke-virtual {v2}, Landroid/os/SharedMemory;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_46} :catch_31

    goto :goto_17

    :goto_47
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error closing resource with key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BundleUtil"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :cond_5b
    :goto_5b
    return-void
.end method

.method public static validateBitmap(Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered a mutable Bitmap in the Bundle at key : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static validateParcelableArray([Landroid/os/Parcelable;)V
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_17

    aget-object v0, p0, v1

    instance-of v0, v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_17

    array-length v0, p0

    :goto_b
    if-ge v1, v0, :cond_2d

    aget-object v2, p0, v1

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    array-length v0, p0

    if-lez v0, :cond_2e

    aget-object v0, p0, v1

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2e

    array-length v0, p0

    :goto_21
    if-ge v1, v0, :cond_2d

    aget-object v2, p0, v1

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2d
    return-void

    :cond_2e
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Could not cast to any known parcelable array"

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    if-nez p0, :cond_3

    goto :goto_15

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    sget v0, Landroid/system/OsConstants;->F_GETFL:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result p0

    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr p0, v0

    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne p0, v0, :cond_16

    :goto_15
    return-void

    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Bundle contains a parcel file descriptor which is not read-only."

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1e
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception p0

    new-instance v0, Landroid/os/BadParcelableException;

    const-string v1, "Invalid File descriptor passed in the Bundle."

    invoke-direct {v0, v1, p0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
