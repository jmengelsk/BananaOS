.class public final Lcom/android/server/policy/VoiceAccessShortcutController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/VoiceAccessShortcutController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public toggleVoiceAccess(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/VoiceAccessShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/VoiceAccessShortcutController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Voice Access"

    invoke-static {v1, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getInstalledAccessibilityServiceComponentNameByLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1c

    const-string/jumbo p0, "VoiceAccessShortcutController"

    const-string/jumbo p1, "Toggle Voice Access failed due to componentName being null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1c
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/android/server/policy/VoiceAccessShortcutController;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    return v0
.end method
