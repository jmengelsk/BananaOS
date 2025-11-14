.class public final Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;
.super Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mClassName:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(CZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;-><init>(CZ)V

    iput-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;->mClassName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/policy/ModifierShortcutManager;->resolveComponentNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    return-object p1
.end method
