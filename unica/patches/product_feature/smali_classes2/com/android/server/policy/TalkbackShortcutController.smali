.class Lcom/android/server/policy/TalkbackShortcutController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final isTalkBackShortcutGestureEnabled()Z
    .registers 4

    iget-object p0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "wear_accessibility_gesture_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    return v0

    :cond_13
    return v2
.end method

.method public final toggleTalkback(ILcom/android/server/policy/TalkbackShortcutController$ShortcutSource;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "TalkBack"

    invoke-static {v1, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getInstalledAccessibilityServiceComponentNameByLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_12

    return-void

    :cond_12
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-object v2, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->KEYBOARD:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    if-eq p2, v2, :cond_20

    invoke-virtual {p0}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_20
    xor-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    sget-object p1, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->GESTURE:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    if-ne p2, p1, :cond_49

    if-nez v0, :cond_49

    iget-object p1, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_43

    iget-object p0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "wear_accessibility_gesture_enabled_during_oobe"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_43
    iget-object p0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    const/4 p1, 0x7

    invoke-static {p0, v1, p1, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    :cond_49
    return-void
.end method
