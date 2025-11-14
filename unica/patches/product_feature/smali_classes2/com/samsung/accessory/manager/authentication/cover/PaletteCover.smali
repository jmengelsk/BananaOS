.class public final Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCoverAttached:Z

.field public mPackage:B

.field public mUriData:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isDataChanged(Landroid/content/Context;[B)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "accessory_cover_uri"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isDataChanged:uriDataString="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",uriSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SAccessoryManager_PaletteCover"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final disableSetting()V
    .locals 2

    const-string/jumbo v0, "SAccessoryManager_PaletteCover"

    const-string/jumbo v1, "disableSetting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->onCoverStateChanged()V

    return-void
.end method

.method public final onCoverStateChanged()V
    .locals 9

    const-string/jumbo v0, "SAccessoryManager_PaletteCover"

    const-string v1, "Attach Target package type: "

    const-string/jumbo v2, "On cover state change : data = "

    :try_start_0
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v3, :cond_0

    :try_start_1
    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "accessoryType"

    const/16 v6, 0x12

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v6, 0x0

    const-string/jumbo v7, "URI"

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    :try_start_2
    const-string/jumbo v5, "com.samsung.android.intent.action.ACCESSORY_COVER_ATTACH"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    aget-byte v5, v5, v8

    iput-byte v5, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iput-boolean v8, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "Palette cover detached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.ACCESSORY_COVER_DETACH"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    :goto_1
    iget-byte v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    and-int/2addr v1, v8

    if-eqz v1, :cond_2

    const-string/jumbo v1, "com.samsung.android.app.dressroom"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    iget-byte v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const-string/jumbo v1, "com.samsung.android.app.aodservice"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    if-nez v1, :cond_4

    iput-byte v6, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    :cond_4
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessory_cover_uri"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cover_type_id"

    iget-boolean p0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    if-eqz p0, :cond_5

    const-string v4, "18"

    :cond_5
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "error during cover state change"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setCoverVerified(ZLcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 2

    const-string/jumbo v0, "setCoverVerified:isVerified="

    const-string/jumbo v1, "SAccessoryManager_PaletteCover"

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->onCoverStateChanged()V

    return-void
.end method
