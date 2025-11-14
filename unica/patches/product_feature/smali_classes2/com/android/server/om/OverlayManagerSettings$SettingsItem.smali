.class public final Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBaseCodePath:Ljava/lang/String;

.field public mCache:Landroid/content/om/OverlayInfo;

.field public mCategory:Ljava/lang/String;

.field public mConstraints:Ljava/util/List;

.field public mIsEnabled:Z

.field public final mIsFabricated:Z

.field public final mIsMutable:Z

.field public final mOverlay:Landroid/content/om/OverlayIdentifier;

.field public mPriority:I

.field public mState:I

.field public final mTargetOverlayableName:Ljava/lang/String;

.field public final mTargetPackageName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static -$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;
    .locals 14

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    if-nez v0, :cond_0

    new-instance v1, Landroid/content/om/OverlayInfo;

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v0}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v0}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    iget v10, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    iget-object v13, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mConstraints:Ljava/util/List;

    iget v9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    iget-boolean v11, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsFabricated:Z

    invoke-direct/range {v1 .. v13}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZLjava/util/List;)V

    iput-object v1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    :cond_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    iput p2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    iput-object p3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    iput-boolean p7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    iput-object p10, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    iput-boolean p8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    iput p9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    iput-boolean p11, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsFabricated:Z

    invoke-static {p12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p12, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mConstraints:Ljava/util/List;

    return-void
.end method
