.class public final Lcom/android/server/pm/UserTypeDetails;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAccessibilityString:I

.field public final mBadgeColors:[I

.field public final mBadgeLabels:[I

.field public final mBadgeNoBackground:I

.field public final mBadgePlain:I

.field public final mBaseType:I

.field public final mDarkThemeBadgeColors:[I

.field public final mDefaultCrossProfileIntentFilters:Ljava/util/List;

.field public final mDefaultRestrictions:Landroid/os/Bundle;

.field public final mDefaultSecureSettings:Landroid/os/Bundle;

.field public final mDefaultUserInfoPropertyFlags:I

.field public final mDefaultUserProperties:Landroid/content/pm/UserProperties;

.field public final mEnabled:Z

.field public final mIconBadge:I

.field public final mLabels:[I

.field public final mMaxAllowed:I

.field public final mMaxAllowedPerParent:I

.field public final mName:Ljava/lang/String;

.field public final mProfileParentRequired:Z

.field public final mStatusBarIcon:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIII[IIZIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ILandroid/content/pm/UserProperties;)V
    .registers 21

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    iput p3, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    iput p7, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    iput p4, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    iput p5, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSecureSettings:Landroid/os/Bundle;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    iput-boolean p8, p0, Lcom/android/server/pm/UserTypeDetails;->mProfileParentRequired:Z

    iput p9, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    iput p10, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    iput p11, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    iput p12, p0, Lcom/android/server/pm/UserTypeDetails;->mStatusBarIcon:I

    iput-object p6, p0, Lcom/android/server/pm/UserTypeDetails;->mLabels:[I

    iput-object p13, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    iput-object p14, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    iput-object p15, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    move/from16 p1, p19

    iput p1, p0, Lcom/android/server/pm/UserTypeDetails;->mAccessibilityString:I

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    return-void
.end method


# virtual methods
.method public final getDefaultUserInfoFlags()I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    or-int/2addr p0, v0

    return p0
.end method

.method public final hasBadge()Z
    .registers 1

    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
